package com.tang.mall.controller;

import com.github.pagehelper.PageInfo;
import com.tang.mall.common.ApiRestResponse;
import com.tang.mall.model.request.PmsBrandListReq;
import com.tang.mall.service.PmsBrandService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 品牌Controller
 */
@Api(tags = "品牌管理")
@RestController
@RequestMapping("/brand")
public class PmsBrandController {

    @Autowired
    PmsBrandService brandService;

    @ApiOperation("后台-品牌列表")
    @PostMapping("/list")
    public ApiRestResponse list(@RequestBody PmsBrandListReq pmsBrandListReq) {
        PageInfo list = brandService.list(pmsBrandListReq);
        return ApiRestResponse.success(list);
    }

}
