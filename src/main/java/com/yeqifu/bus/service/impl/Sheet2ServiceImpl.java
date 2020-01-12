package com.yeqifu.bus.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.yeqifu.bus.domain.Sheet2;
import com.yeqifu.bus.mapper.Sheet2Mapper;
import com.yeqifu.bus.service.ISheet2Service;
import com.yeqifu.bus.service.ISheet2Service;
import com.yeqifu.bus.vo.Sheet2Vo;
import com.yeqifu.sys.constast.SysConstast;
import com.yeqifu.sys.utils.AppFileUtils;
import com.yeqifu.sys.utils.DataGridView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Sheet2ServiceImpl implements ISheet2Service {

    @Autowired
    private Sheet2Mapper Sheet2Mapper;

    /**
     * 查询所有信息
     * @param Sheet2Vo
     * @return
     */
    @Override
    public DataGridView queryAllSheet2(Sheet2Vo Sheet2Vo) {
        Page<Object> page = PageHelper.startPage(Sheet2Vo.getPage(),Sheet2Vo.getLimit());
        List<Sheet2> data = this.Sheet2Mapper.queryAllSheet2(Sheet2Vo);

        return new DataGridView(page.getTotal(),data);
    }

    /**
     * 添加一个车辆
     * @param Sheet2Vo
     */
    @Override
    public void addSheet2(Sheet2Vo Sheet2Vo) {
        this.Sheet2Mapper.insertSelective(Sheet2Vo);
    }

    /**
     * 更新一个车辆
     * @param Sheet2Vo
     */
    @Override
    public void updateSheet2(Sheet2Vo Sheet2Vo) {
        this.Sheet2Mapper.updateByPrimaryKeySelective(Sheet2Vo);
    }

    @Override
    public void deleteSheet2(String Sheet2number) {

    }

    @Override
    public void deleteBatchSheet2(String[] Sheet2numbers) {

    }
    /*

     */
/**
 * 删除一个车辆
 * @param Sheet2number
 *//*

    @Override
    public void deleteSheet2(String Sheet2number) {
        //先删除图片
        Sheet2 Sheet2 = this.Sheet2Mapper.selectByPrimaryKey(Sheet2number);
        //如果不是默认图片就删除
        if (!Sheet2.getSheet2img().equals(SysConstast.DEFAULT_Sheet2_IMG)){
            AppFileUtils.deleteFileUsePath(Sheet2.getSheet2img());
        }
        //删除数据库的数据
        this.Sheet2Mapper.deleteByPrimaryKey(Sheet2number);
    }

    */
    /**
     * 批量删除车辆
     * @param Sheet2numbers
     *//*

    @Override
    public void deleteBatchSheet2(String[] Sheet2numbers) {
        for (String Sheet2number : Sheet2numbers) {
            this.deleteSheet2(Sheet2number);
        }

    }
*/

    @Override
    public Sheet2 querySheet2BySheet2Number(String Sheet2number) {
        return this.Sheet2Mapper.selectByPrimaryKey(Sheet2number);
    }
}
