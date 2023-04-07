package com.tang.mall.service;

import com.tang.mall.dto.PmsBrandUpdateParam;
import com.tang.mall.dto.PmsBrandAddParam;
import com.tang.mall.dto.PmsBrandListParam;
import com.tang.mall.util.PageBean;

/**
 * 品牌 Service
 */
public interface PmsBrandService {
    PageBean list(PmsBrandListParam pmsBrandListParam);

    void add(PmsBrandAddParam pmsBrandAddParam);

    void update(PmsBrandUpdateParam pmsBrandUpdateParam);

    void delete(Integer[] ids);
}
