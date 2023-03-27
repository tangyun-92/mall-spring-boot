package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.OmsCompanyAddress;

public interface OmsCompanyAddressMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OmsCompanyAddress record);

    int insertSelective(OmsCompanyAddress record);

    OmsCompanyAddress selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OmsCompanyAddress record);

    int updateByPrimaryKey(OmsCompanyAddress record);
}