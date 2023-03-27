package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.Product;
import com.tang.mall.model.pojo.ProductWithBLOBs;

public interface ProductMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductWithBLOBs record);

    int insertSelective(ProductWithBLOBs record);

    ProductWithBLOBs selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ProductWithBLOBs record);

    int updateByPrimaryKey(Product record);
}