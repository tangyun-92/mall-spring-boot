package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.Subject;

public interface SubjectMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Subject record);

    int insertSelective(Subject record);

    Subject selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Subject record);

    int updateByPrimaryKeyWithBLOBs(Subject record);

    int updateByPrimaryKey(Subject record);
}