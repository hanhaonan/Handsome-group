package com.yeqifu.bus.controller;

import com.yeqifu.bus.domain.Sheet2;
import com.yeqifu.bus.service.ISheet2Service;
import com.yeqifu.bus.service.ISheet2Service;
import com.yeqifu.bus.vo.Sheet2Vo;
import com.yeqifu.sys.constast.SysConstast;
import com.yeqifu.sys.utils.AppFileUtils;
import com.yeqifu.sys.utils.DataGridView;
import com.yeqifu.sys.utils.ResultObj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
@RequestMapping("Sheet2")
public class Sheet2Controller {

    @Autowired
    private ISheet2Service sheet2Service;

    /**
     * 加载车辆列表返回DataGridView
     * @param sheet2Vo
     * @return
     */
    @RequestMapping("loadAllSheet2")
    public DataGridView loadAllSheet2(Sheet2Vo sheet2Vo){
        return this.sheet2Service.queryAllSheet2(sheet2Vo);
    }
    /*

     */
/**
 * 添加一个车辆
 * @param Sheet2Vo
 * @return
 *//*

    @RequestMapping("addSheet2")
    public ResultObj addSheet2(Sheet2Vo Sheet2Vo){
        try{
            Sheet2Vo.setCreatetime(new Date());
            //如果不是默认图片就去掉图片的_temp的后缀
            if(!Sheet2Vo.getSheet2img().equals(SysConstast.DEFAULT_Sheet2_IMG)){
                String filePath =AppFileUtils.updateFileName(Sheet2Vo.getSheet2img(), SysConstast.FILE_UPLOAD_TEMP);
                Sheet2Vo.setSheet2img(filePath);
            }
            this.Sheet2Service.addSheet2(Sheet2Vo);
            return ResultObj.ADD_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    */
/**
 * 修改一个车辆
 * @param Sheet2Vo
 * @return
 *//*

    @RequestMapping("updateSheet2")
    public ResultObj updateSheet2(Sheet2Vo Sheet2Vo){
        try{
            String Sheet2img = Sheet2Vo.getSheet2img();
            if (Sheet2img.endsWith(SysConstast.FILE_UPLOAD_TEMP)) {
                String filePath =AppFileUtils.updateFileName(Sheet2Vo.getSheet2img(), SysConstast.FILE_UPLOAD_TEMP);
                Sheet2Vo.setSheet2img(filePath);
                //把原来的删除
                Sheet2 Sheet2 = this.Sheet2Service.querySheet2BySheet2Number(Sheet2Vo.getSheet2number());
                AppFileUtils.removeFileByPath(Sheet2.getSheet2img());

            }
            this.Sheet2Service.updateSheet2(Sheet2Vo);
            return ResultObj.UPDATE_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    */
/**
 * 删除一个车辆
 * @param Sheet2Vo
 * @return
 *//*

    @RequestMapping("deleteSheet2")
    public ResultObj deleteSheet2(Sheet2Vo Sheet2Vo){
        try {
            this.Sheet2Service.deleteSheet2(Sheet2Vo.getSheet2number());
            return ResultObj.DELETE_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    */
/**
 * 批量删除车辆
 * @param Sheet2Vo
 * @return
 *//*

    @RequestMapping("deleteBatchSheet2")
    public ResultObj deleteBatchSheet2(Sheet2Vo Sheet2Vo){
        try{
            this.Sheet2Service.deleteBatchSheet2(Sheet2Sheet2Vo.getIds());
            return ResultObj.DELETE_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }
*/

}
