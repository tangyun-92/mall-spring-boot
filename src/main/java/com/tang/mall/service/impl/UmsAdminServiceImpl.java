package com.tang.mall.service.impl;

import com.tang.mall.dto.UmsAdminRegisterParam;
import com.tang.mall.exception.MallException;
import com.tang.mall.exception.MallExceptionEnum;
import com.tang.mall.mbg.mapper.UmsAdminMapper;
import com.tang.mall.mbg.model.UmsAdmin;
import com.tang.mall.mbg.model.UmsPermission;
import com.tang.mall.dao.UmsAdminMapperDao;
import com.tang.mall.dao.UmsPermissionMapperDao;
import com.tang.mall.service.UmsAdminService;
import com.tang.mall.util.JwtTokenUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

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
        umsAdmin.setStatus(1);
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

}
