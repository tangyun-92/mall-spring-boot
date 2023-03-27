package com.tang.mall.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tang.mall.model.dao.PmsBrandMapperExtendMapper;
import com.tang.mall.model.pojo.PmsBrand;
import com.tang.mall.model.query.PmsBrandListQuery;
import com.tang.mall.model.request.PmsBrandListReq;
import com.tang.mall.service.PmsBrandService;
import org.springframework.beans.factory.annotation.Autowired;
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

    /**
     * 获取品牌列表
     * @param pmsBrandListReq
     * @return
     */
    @Override
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

}
