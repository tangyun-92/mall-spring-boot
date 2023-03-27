package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.MemberReport;

public interface MemberReportMapper {
    int insert(MemberReport record);

    int insertSelective(MemberReport record);
}