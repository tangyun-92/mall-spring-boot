package com.tang.mall.service.impl;

import com.github.pagehelper.PageHelper;
import com.tang.mall.dao.UmsAdminRoleRelationMapperDao;
import com.tang.mall.dto.*;
import com.tang.mall.exception.MallException;
import com.tang.mall.exception.MallExceptionEnum;
import com.tang.mall.mbg.mapper.UmsAdminMapper;
import com.tang.mall.mbg.mapper.UmsAdminRoleRelationMapper;
import com.tang.mall.mbg.model.UmsAdmin;
import com.tang.mall.mbg.model.UmsAdminRoleRelation;
import com.tang.mall.mbg.model.UmsPermission;
import com.tang.mall.dao.UmsAdminMapperDao;
import com.tang.mall.dao.UmsPermissionMapperDao;
import com.tang.mall.service.UmsAdminService;
import com.tang.mall.util.JwtTokenUtil;
import com.tang.mall.util.PageBean;
import com.tang.mall.vo.UmsAdminVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Date;
import java.util.List;

@Service
public class UmsAdminServiceImpl implements UmsAdminService {

    @Autowired
    UmsAdminMapperDao umsAdminMapperDao;
    @Autowired
    UmsAdminMapper umsAdminMapper;
    @Autowired
    UmsPermissionMapperDao umsPermissionMapperDao;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private JwtTokenUtil jwtTokenUtil;
    @Value("${jwt.tokenHead}")
    private String tokenHead;
    @Autowired
    UmsAdminRoleRelationMapper umsAdminRoleRelationMapper;
    @Autowired
    UmsAdminRoleRelationMapperDao umsAdminRoleRelationMapperDao;

    @Override
    public UmsAdmin getAdminByUsername(String username) {
        UmsAdmin umsAdmin = umsAdminMapperDao.selectByName(username);
        if (umsAdmin != null) {
            return umsAdmin;
        }
        return null;
    }

    @Override
    public List<UmsPermission> getPermissionList(Long adminId) {
        return umsPermissionMapperDao.getPermissionList(adminId);
    }

    @Override
    public void register(UmsAdminRegisterParam umsAdminRegisterParam) {
        UmsAdmin umsAdminOld = umsAdminMapperDao.selectByName(umsAdminRegisterParam.getUsername());
        if (umsAdminOld != null) {
            throw new MallException(MallExceptionEnum.NAME_EXISTED);
        }

        UmsAdmin umsAdmin = new UmsAdmin();
        BeanUtils.copyProperties(umsAdminRegisterParam, umsAdmin);
        umsAdmin.setCreateTime(new Date());
        umsAdmin.setStatus("1");
        // 密码加密
        String encodePassword = passwordEncoder.encode(umsAdmin.getPassword());
        umsAdmin.setPassword(encodePassword);

        int count = umsAdminMapper.insertSelective(umsAdmin);
        if (count == 0) {
            throw new MallException(MallExceptionEnum.REGISTER_FAILED);
        }
    }

    @Override
    public String login(String username, String password) {
        String token = null;
        try {
            UserDetails userDetails = userDetailsService.loadUserByUsername(username);
            if (!passwordEncoder.matches(password, userDetails.getPassword())) {
                throw new MallException(MallExceptionEnum.WRONG_PASSWORD);
            }

            // 更新最后一次登录时间
            UmsAdmin umsAdmin = umsAdminMapperDao.selectByName(username);
            umsAdmin.setLoginTime(new Date());
            umsAdminMapper.updateByPrimaryKeySelective(umsAdmin);

            UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
            SecurityContextHolder.getContext().setAuthentication(authentication);
            token = jwtTokenUtil.generateToken(userDetails);
        } catch (AuthenticationException e) {
            throw new MallException(MallExceptionEnum.WRONG_PASSWORD);
        }
        return token;
    }

    /**
     * 获取用户列表
     * @param umsAdminListParam
     * @return
     */
    @Override
    public PageBean list(UmsAdminListParam umsAdminListParam) {
        // 用户名模糊查询
        if (!StringUtils.isEmpty(umsAdminListParam.getUsername())) {
            String username = new StringBuilder().append("%").append(umsAdminListParam.getUsername()).append("%").toString();
            umsAdminListParam.setUsername(username);
        } else {
            umsAdminListParam.setUsername(null);
        }
        // 昵称模糊查询
        if (!StringUtils.isEmpty(umsAdminListParam.getNickName())) {
            String nickName = new StringBuilder().append("%").append(umsAdminListParam.getNickName()).append("%").toString();
            umsAdminListParam.setNickName(nickName);
        } else {
            umsAdminListParam.setNickName(null);
        }

        PageHelper.startPage(umsAdminListParam.getCurrent(), umsAdminListParam.getPageSize());
        List<UmsAdminVO> umsAdminList = umsAdminMapperDao.selectList(umsAdminListParam);
        return new PageBean<>(umsAdminList);
    }

    /**
     * 后台-新增用户
     * @param umsAdminAddParam
     */
    @Override
    public void add(UmsAdminAddParam umsAdminAddParam) {
        UmsAdmin umsAdmin = new UmsAdmin();
        BeanUtils.copyProperties(umsAdminAddParam, umsAdmin);

        UmsAdmin umsAdminOld = umsAdminMapperDao.selectByName(umsAdminAddParam.getUsername());
        if (umsAdminOld != null) {
            throw new MallException(MallExceptionEnum.NAME_EXISTED);
        }

        umsAdmin.setCreateTime(new Date());
        // 新增用户，设置初始密码为 123456
        // 密码加密
        String encodePassword = passwordEncoder.encode("123456");
        umsAdmin.setPassword(encodePassword);

        int count = umsAdminMapper.insertSelective(umsAdmin);
        if (count == 0) {
            throw new MallException(MallExceptionEnum.CREATE_FAILED);
        }
    }

    /**
     * 后台-更新用户
     */
    @Override
    public void update(UmsAdminUpdateParam umsAdminUpdateParam) {
        UmsAdmin umsAdmin = new UmsAdmin();
        BeanUtils.copyProperties(umsAdminUpdateParam, umsAdmin);

        UmsAdmin umsAdminOld = umsAdminMapperDao.selectByName(umsAdminUpdateParam.getUsername());
        if (umsAdminOld != null && !umsAdminOld.getId().equals(umsAdminUpdateParam.getId())) {
            throw new MallException(MallExceptionEnum.NAME_EXISTED);
        }
        int count = umsAdminMapper.updateByPrimaryKeySelective(umsAdmin);
        if (count == 0) {
            throw new MallException(MallExceptionEnum.UPDATE_FAILED);
        }
    }

    /**
     * 后台-删除用户
     * @param ids
     */
    @Override
    public void delete(Integer[] ids) {
        umsAdminMapperDao.batchDelete(ids);
    }

    /**
     * 后台-分配角色
     * @param adminId
     * @param roleId
     */
    @Override
    public void assignRole(Long adminId, Long roleId) {
        UmsAdminRoleRelation umsAdminRoleRelation = new UmsAdminRoleRelation();

        UmsAdminRoleRelation umsAdminRoleRelationOld = umsAdminRoleRelationMapperDao.selectByAdminId(adminId);
        if (umsAdminRoleRelationOld != null && umsAdminRoleRelationOld.getAdminId().equals(adminId)) {
            umsAdminRoleRelation.setRoleId(roleId);
            umsAdminRoleRelation.setId(umsAdminRoleRelationOld.getId());
            int count = umsAdminRoleRelationMapper.updateByPrimaryKeySelective(umsAdminRoleRelation);
            if (count == 0) {
                throw new MallException(MallExceptionEnum.UPDATE_FAILED);
            }
        } else {
            umsAdminRoleRelation.setAdminId(adminId);
            umsAdminRoleRelation.setRoleId(roleId);
            int count = umsAdminRoleRelationMapper.insertSelective(umsAdminRoleRelation);
            if (count == 0) {
                throw new MallException(MallExceptionEnum.CREATE_FAILED);
            }
        }

    }

}
