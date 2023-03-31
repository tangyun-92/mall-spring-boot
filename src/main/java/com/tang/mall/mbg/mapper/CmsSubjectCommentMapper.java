package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.CmsSubjectComment;

public interface CmsSubjectCommentMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CmsSubjectComment record);

    int insertSelective(CmsSubjectComment record);

    CmsSubjectComment selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CmsSubjectComment record);

    int updateByPrimaryKey(CmsSubjectComment record);
}