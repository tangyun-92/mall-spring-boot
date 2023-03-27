package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.SubjectCategory;

public interface SubjectCategoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SubjectCategory record);

    int insertSelective(SubjectCategory record);

    SubjectCategory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SubjectCategory record);

    int updateByPrimaryKey(SubjectCategory record);
}