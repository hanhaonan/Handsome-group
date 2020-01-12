package com.yeqifu.bus.service;

import com.yeqifu.bus.domain.Car;
import com.yeqifu.bus.vo.CarVo;
import com.yeqifu.sys.utils.DataGridView;

public interface ICarService {

    /**
     * 查询所有数据
     * @param carVo
     * @return
     */
    public DataGridView queryAllCar(CarVo carVo);

    /**
     * 添加数据
     * @param carVo
     */
    public void addCar(CarVo carVo);

    /**
     * 修改数据
     * @param carVo
     */
    public void updateCar(CarVo carVo);

    /**
     * 根据id删除数据
     * @param carnumber
     */
    public void deleteCar(String carnumber);

    /**
     * 批量删除数据
     * @param carnumbers
     */
    public void deleteBatchCar(String[] carnumbers);

    /**
     * 根据id查询
     * @param carnumber
     * @return
     */
    Car queryCarByCarNumber(String carnumber);
}
