package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.CompanyAddress;

public interface CompanyAddressMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CompanyAddress record);

    int insertSelective(CompanyAddress record);

    CompanyAddress selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CompanyAddress record);

    int updateByPrimaryKey(CompanyAddress record);
}