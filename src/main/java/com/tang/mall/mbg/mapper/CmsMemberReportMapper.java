package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.CmsMemberReport;

public interface CmsMemberReportMapper {
    int insert(CmsMemberReport record);

    int insertSelective(CmsMemberReport record);
}