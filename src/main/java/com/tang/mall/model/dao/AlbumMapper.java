package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.Album;

public interface AlbumMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Album record);

    int insertSelective(Album record);

    Album selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Album record);

    int updateByPrimaryKey(Album record);
}