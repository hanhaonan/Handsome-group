package com.yeqifu.bus.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.io.filefilter.FalseFileFilter;

import java.sql.Timestamp;
import java.util.Date;

public class Sheet2 {

    private String id;

    private String device_code;

    private String device_name;

    private String area_id;

    private String locate_x;

    private String locate_y;

    private String system_type;

    private String state;

    private String dsnum;

    private String pressure;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private String time;

    private String threshold;

    private String upper_value;

    private String lower_value;

    private String device_ex_des;

    private String comments;

    private String dump_energy;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private String work_start_time;

    private String projectid;

    private String hydranttype;

    private String buildingid;

    private String waterType;

    private String pressureState;

    private String rssi;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private String updateTime;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private String work_stop_time;

    private String version;

    private String belong;


    public String getSystem_type() {
        return system_type;
    }

    public void setSystem_type(String system_type) {
        this.system_type = system_type ==null ? null :id.trim();
    }

    public void setDevice_code(String device_code) {
        this.device_code = device_code  ==null ? null :id.trim();
    }

    public void setDevice_name(String device_name) {
        this.device_name = device_name ==null ? null :id.trim();
    }

    public void setArea_id(String area_id) {
        this.area_id = area_id ==null ? null :id.trim();
    }

    public void setLocate_x(String locate_x) {
        this.locate_x = locate_x ==null ? null :id.trim();
    }

    public void setLocate_y(String locate_y) {
        this.locate_y = locate_y ==null ? null :id.trim();
    }


    public void setTime(String time) {
        this.time = time ;
    }

    public void setThreshold(String threshold) {
        this.threshold = threshold ==null ? null :id.trim();
    }

    public void setUpper_value(String upper_value) {
        this.upper_value = upper_value ==null ? null :id.trim();
    }

    public void setLower_value(String lower_value) {
        this.lower_value = lower_value ==null ? null :id.trim();
    }

    public void setDevice_ex_des(String device_ex_des) {
        this.device_ex_des = device_ex_des ==null ? null :id.trim();
    }

    public void setComments(String comments) {
        this.comments = comments ==null ? null :id.trim();
    }

    public void setWork_start_time(String work_start_time) {
        this.work_start_time = work_start_time;
    }

    public void setProjectid(String projectid) {
        this.projectid = projectid ==null ? null :id.trim();
    }

    public void setHydranttype(String hydranttype) {
        this.hydranttype = hydranttype ==null ? null :id.trim();
    }

    public void setBuildingid(String buildingid) {
        this.buildingid = buildingid ==null ? null :id.trim();
    }

    public void setWaterType(String waterType) {
        this.waterType = waterType ==null ? null :id.trim();
    }

    public void setPressureState(String pressureState) {
        this.pressureState = pressureState ==null ? null :id.trim();
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime ;
    }

    public void setWork_stop_time(String work_stop_time) {
        this.work_stop_time = work_stop_time ;
    }

    public void setVersion(String version) {
        this.version = version ==null ? null :id.trim();
    }

    public void setBelong(String belong) {
        this.belong = belong ==null ? null :id.trim();
    }

    public String getDevice_code() {
        return device_code;
    }

    public String getDevice_name() {
        return device_name;
    }

    public String getArea_id() {
        return area_id;
    }

    public String getLocate_x() {
        return locate_x;
    }

    public String getLocate_y() {
        return locate_y;
    }


    public String getThreshold() {
        return threshold;
    }

    public String getUpper_value() {
        return upper_value;
    }

    public String getLower_value() {
        return lower_value;
    }

    public String getDevice_ex_des() {
        return device_ex_des;
    }

    public String getComments() {
        return comments;
    }

    public String getWork_start_time() {
        return work_start_time;
    }

    public String getProjectid() {
        return projectid;
    }

    public String getHydranttype() {
        return hydranttype;
    }

    public String getBuildingid() {
        return buildingid;
    }

    public String getWaterType() {
        return waterType;
    }

    public String getPressureState() {
        return pressureState;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public String getWork_stop_time() {
        return work_stop_time;
    }

    public String getVersion() {
        return version;
    }

    public String getBelong() {
        return belong;
    }





    public void setId(String id) {
        this.id = id ==null ? null :id.trim();

    }

    public void setDsnum(String dsnum) {
        this.dsnum = dsnum ==null ? null :id.trim();
    }

    public void setPressure(String pressure) {
        this.pressure = pressure ==null ? null :pressure.trim();
    }




    public void setState(String state) {
        this.state = state ==null ? null :state.trim();
    }


    public void setRssi(String rssi) {
        this.rssi = rssi ==null ? null :rssi.trim();
    }

    public void setDump_energy(String dump_energy) {
        this.dump_energy = dump_energy ==null ? null :dump_energy.trim();
    }

    public String getId() {
        return id;
    }

    public String getDsnum() {
        return dsnum;
    }

    public String getPressure() {
        return pressure;
    }



    public String getState() {
        return state;
    }



    public String getRssi() {
        return rssi;
    }

    public String getDump_energy() {
        return dump_energy;
    }

    public String getTime() {
        return time;
    }


/*
    public String getSheet2number() {
        return Sheet2number;
    }

    public void setSheet2number(String Sheet2number) {
        this.Sheet2number = Sheet2number == null ? null : Sheet2number.trim();
    }

    public String getSheet2type() {
        return Sheet2type;
    }

    public void setSheet2type(String Sheet2type) {
        this.Sheet2type = Sheet2type == null ? null : Sheet2type.trim();
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color == null ? null : color.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getRentprice() {
        return rentprice;
    }

    public void setRentprice(Double rentprice) {
        this.rentprice = rentprice;
    }

    public Double getDeposit() {
        return deposit;
    }

    public void setDeposit(Double deposit) {
        this.deposit = deposit;
    }

    public Integer getIsrenting() {
        return isrenting;
    }

    public void setIsrenting(Integer isrenting) {
        this.isrenting = isrenting;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getSheet2img() {
        return Sheet2img;
    }

    public void setSheet2img(String Sheet2img) {
        this.Sheet2img = Sheet2img == null ? null : Sheet2img.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }*/
}