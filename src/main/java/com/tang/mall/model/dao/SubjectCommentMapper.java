package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.SubjectComment;

public interface SubjectCommentMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SubjectComment record);

    int insertSelective(SubjectComment record);

    SubjectComment selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SubjectComment record);

    int updateByPrimaryKey(SubjectComment record);
}