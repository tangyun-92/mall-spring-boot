package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.CmsSubject;

public interface CmsSubjectMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CmsSubject record);

    int insertSelective(CmsSubject record);

    CmsSubject selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CmsSubject record);

    int updateByPrimaryKeyWithBLOBs(CmsSubject record);

    int updateByPrimaryKey(CmsSubject record);
}