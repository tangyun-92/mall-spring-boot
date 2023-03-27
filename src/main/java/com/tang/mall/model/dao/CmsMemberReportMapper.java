package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.CmsMemberReport;

public interface CmsMemberReportMapper {
    int insert(CmsMemberReport record);

    int insertSelective(CmsMemberReport record);
}