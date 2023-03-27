package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.AlbumPic;

public interface AlbumPicMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AlbumPic record);

    int insertSelective(AlbumPic record);

    AlbumPic selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AlbumPic record);

    int updateByPrimaryKey(AlbumPic record);
}