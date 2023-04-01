package com.tang.mall.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tang.mall.dto.PmsBrandUpdateParam;
import com.tang.mall.exception.MallException;
import com.tang.mall.exception.MallExceptionEnum;
import com.tang.mall.mbg.mapper.PmsBrandMapper;
import com.tang.mall.mbg.model.PmsBrand;
import com.tang.mall.dao.PmsBrandMapperDao;
import com.tang.mall.dto.PmsBrandAddParam;
import com.tang.mall.dto.PmsBrandListParam;
import com.tang.mall.service.PmsBrandService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * 品牌实现类
 */
@Service
public class PmsBrandServiceImpl implements PmsBrandService {

    @Autowired
    PmsBrandMapperDao pmsBrandMapperDao;

    @Autowired
    PmsBrandMapper pmsBrandMapper;

    /**
     * 后台-获取品牌列表
     * @param pmsBrandListParam
     * @return
     */
    @Override
    @Cacheable(value = "pmsBrandListForAdmin") // 启用 redis
    public PageInfo list(PmsBrandListParam pmsBrandListParam) {
        // 搜索处理
        // 品牌名称模糊查询
        if (!StringUtils.isEmpty(pmsBrandListParam.getName())) {
            String name = new StringBuilder().append("%").append(pmsBrandListParam.getName()).append("%").toString();
            pmsBrandListParam.setName(name);
        }

        PageHelper.startPage(pmsBrandListParam.getPageNum(), pmsBrandListParam.getPageSize());

        List<PmsBrand> brandList = pmsBrandMapperDao.selectList(pmsBrandListParam);
        PageInfo pageInfo = new PageInfo(brandList);
        return pageInfo;
    }

    /**
     * 后台-新增品牌
     * @param pmsBrandAddParam
     */
    @Override
    public void add(PmsBrandAddParam pmsBrandAddParam) {
        PmsBrand pmsBrand = new PmsBrand();
        BeanUtils.copyProperties(pmsBrandAddParam, pmsBrand);

        PmsBrand pmsBrandOld = pmsBrandMapperDao.selectByName(pmsBrandAddParam.getName());
        if (pmsBrandOld != null) {
            throw new MallException(MallExceptionEnum.NAME_EXISTED);
        }
        int count = pmsBrandMapper.insertSelective(pmsBrand);
        if (count == 0) {
            throw new MallException(MallExceptionEnum.CREATE_FAILED);
        }
    }

    /**
     * 后台-更新品牌
     */
    @Override
    public void update(PmsBrandUpdateParam pmsBrandUpdateParam) {
        PmsBrand pmsBrand = new PmsBrand();
        BeanUtils.copyProperties(pmsBrandUpdateParam, pmsBrand);

        PmsBrand pmsBrandOld = pmsBrandMapperDao.selectByName(pmsBrandUpdateParam.getName());
        if (pmsBrandOld != null && !pmsBrandOld.getId().equals(pmsBrandUpdateParam.getId())) {
            throw new MallException(MallExceptionEnum.NAME_EXISTED);
        }
        int count = pmsBrandMapper.updateByPrimaryKeySelective(pmsBrand);
        if (count == 0) {
            throw new MallException(MallExceptionEnum.UPDATE_FAILED);
        }
    }

    /**
     * 后台-删除品牌
     * @param id
     */
    @Override
    public void delete(Long id) {
        PmsBrand pmsBrandOld = pmsBrandMapper.selectByPrimaryKey(id);
        // 查不到记录，无法删除
        if (pmsBrandOld == null) {
            throw new MallException(MallExceptionEnum.DELETE_FAILED);
        }
        int count = pmsBrandMapper.deleteByPrimaryKey(id);
        if (count == 0) {
            throw new MallException(MallExceptionEnum.DELETE_FAILED);
        }
    }

}
