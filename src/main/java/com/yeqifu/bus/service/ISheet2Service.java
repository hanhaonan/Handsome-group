package com.yeqifu.bus.service;

import com.yeqifu.bus.domain.Sheet2;
import com.yeqifu.bus.vo.Sheet2Vo;
import com.yeqifu.bus.vo.Sheet2Vo;
import com.yeqifu.sys.utils.DataGridView;

public interface ISheet2Service {

    /**
     * 查询所有数据
     * @param Sheet2Vo
     * @return
     */
    public DataGridView queryAllSheet2(Sheet2Vo Sheet2Vo);

    /**
     * 添加数据
     * @param Sheet2Vo
     */
    public void addSheet2(Sheet2Vo Sheet2Vo);

    /**
     * 修改数据
     * @param Sheet2Vo
     */
    public void updateSheet2(Sheet2Vo Sheet2Vo);

    /**
     * 根据id删除数据
     * @param Sheet2number
     */
    public void deleteSheet2(String Sheet2number);

    /**
     * 批量删除数据
     * @param Sheet2numbers
     */
    public void deleteBatchSheet2(String[] Sheet2numbers);

    /**
     * 根据id查询
     * @param Sheet2number
     * @return
     */
    Sheet2 querySheet2BySheet2Number(String Sheet2number);


}
