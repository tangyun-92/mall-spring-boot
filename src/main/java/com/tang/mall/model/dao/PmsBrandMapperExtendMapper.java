package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.PmsBrand;
import com.tang.mall.model.query.PmsBrandListQuery;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PmsBrandMapperExtendMapper {

    List<PmsBrand> selectList(@Param("query") PmsBrandListQuery query);

}
