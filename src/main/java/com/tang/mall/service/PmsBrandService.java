package com.tang.mall.service;

import com.github.pagehelper.PageInfo;
import com.tang.mall.model.request.PmsBrandListReq;

/**
 * 产品 Service
 */
public interface PmsBrandService {
    PageInfo list(PmsBrandListReq pmsBrandListReq);
}
