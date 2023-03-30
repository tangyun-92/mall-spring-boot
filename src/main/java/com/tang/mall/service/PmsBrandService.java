package com.tang.mall.service;

import com.github.pagehelper.PageInfo;
import com.tang.mall.model.pojo.PmsBrand;
import com.tang.mall.model.request.AddPmsBrandReq;
import com.tang.mall.model.request.PmsBrandListReq;

/**
 * 品牌 Service
 */
public interface PmsBrandService {
    PageInfo list(PmsBrandListReq pmsBrandListReq);

    void add(AddPmsBrandReq addPmsBrandReq);

    void update(PmsBrand pmsBrand);
}
