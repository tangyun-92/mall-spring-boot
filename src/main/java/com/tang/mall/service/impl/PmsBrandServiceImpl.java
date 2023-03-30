package com.tang.mall.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tang.mall.exception.MallException;
import com.tang.mall.exception.MallExceptionEnum;
import com.tang.mall.model.dao.PmsBrandMapper;
import com.tang.mall.model.dao.PmsBrandMapperExtendMapper;
import com.tang.mall.model.pojo.PmsBrand;
import com.tang.mall.model.query.PmsBrandListQuery;
import com.tang.mall.model.request.AddPmsBrandReq;
import com.tang.mall.model.request.PmsBrandListReq;
import com.tang.mall.service.PmsBrandService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * 品牌实现类
 */
@Service
public class PmsBrandServiceImpl implements PmsBrandService {

    @Autowired
    PmsBrandMapperExtendMapper pmsBrandMapperExtendMapper;

    @Autowired
    PmsBrandMapper pmsBrandMapper;

    /**
     * 后台-获取品牌列表
     * @param pmsBrandListReq
     * @return
     */
    @Override
    @Cacheable(value = "pmsBrandListForAdmin") // 启用 redis
    public PageInfo list(PmsBrandListReq pmsBrandListReq) {
        // 构建Query对象
        PmsBrandListQuery brandListQuery = new PmsBrandListQuery();

        // 搜索处理
        // 品牌名称
        if (!StringUtils.isEmpty(pmsBrandListReq.getName())) {
            String name = new StringBuilder().append("%").append(pmsBrandListReq.getName()).append("%").toString();
            brandListQuery.setName(name);
        }
        // 是否为品牌制造商：0-不是 1-是
        if (!StringUtils.isEmpty(pmsBrandListReq.getFactoryStatus())) {
            brandListQuery.setFactoryStatus(pmsBrandListReq.getFactoryStatus());
        }

        PageHelper.startPage(pmsBrandListReq.getPageNum(), pmsBrandListReq.getPageSize());

        List<PmsBrand> brandList = pmsBrandMapperExtendMapper.selectList(brandListQuery);
        PageInfo pageInfo = new PageInfo(brandList);
        return pageInfo;
    }

    /**
     * 后台-新增品牌
     * @param addPmsBrandReq
     */
    @Override
    public void add(AddPmsBrandReq addPmsBrandReq) {
        PmsBrand pmsBrand = new PmsBrand();
        BeanUtils.copyProperties(addPmsBrandReq, pmsBrand);

        PmsBrand pmsBrandOld = pmsBrandMapperExtendMapper.selectByName(addPmsBrandReq.getName());
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
     * @param pmsBrand
     */
    @Override
    public void update(PmsBrand pmsBrand) {
        PmsBrand pmsBrandOld = pmsBrandMapperExtendMapper.selectByName(pmsBrand.getName());
        if (pmsBrandOld != null && !pmsBrandOld.getId().equals(pmsBrand.getId())) {
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
