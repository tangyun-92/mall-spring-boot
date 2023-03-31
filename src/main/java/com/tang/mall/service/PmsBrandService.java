package com.tang.mall.service;

import com.github.pagehelper.PageInfo;
import com.tang.mall.dto.PmsBrandUpdateParam;
import com.tang.mall.dto.PmsBrandAddParam;
import com.tang.mall.dto.PmsBrandListParam;

/**
 * 品牌 Service
 */
public interface PmsBrandService {
    PageInfo list(PmsBrandListParam pmsBrandListParam);

    void add(PmsBrandAddParam pmsBrandAddParam);

    void update(PmsBrandUpdateParam pmsBrandUpdateParam);

    void delete(Long id);
}
