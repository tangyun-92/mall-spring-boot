package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.MemberReceiveAddress;

public interface MemberReceiveAddressMapper {
    int deleteByPrimaryKey(Long id);

    int insert(MemberReceiveAddress record);

    int insertSelective(MemberReceiveAddress record);

    MemberReceiveAddress selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(MemberReceiveAddress record);

    int updateByPrimaryKey(MemberReceiveAddress record);
}