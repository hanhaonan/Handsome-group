package com.yeqifu.bus.mapper;

import com.yeqifu.bus.domain.Car;
import com.yeqifu.bus.vo.CarVo;

import java.util.List;

public interface CarMapper {
    int deleteByPrimaryKey(String id);

    int insert(Car record);

    int insertSelective(Car record);

    Car selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);

    List<Car> queryAllCar(CarVo carVo);
}