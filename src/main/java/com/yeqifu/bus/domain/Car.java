package com.yeqifu.bus.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.io.filefilter.FalseFileFilter;

import java.sql.Timestamp;
import java.util.Date;

public class Car {

    private String id;

    private String dsnum;

    private String pressure;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Timestamp time;

    private String eventType;

    private String state;

    private String eventid;

    private String rssi;

    private String dump_energy;

    private String owner;

    @Override
    public String toString() {
        return "Car{" +
                "id='" + id + '\'' +
                ", dsnum='" + dsnum + '\'' +
                ", pressure='" + pressure + '\'' +
                ", time=" + time +
                ", eventType='" + eventType + '\'' +
                ", state='" + state + '\'' +
                ", eventid='" + eventid + '\'' +
                ", rssi='" + rssi + '\'' +
                ", dump_energy='" + dump_energy + '\'' +
                ", owner='" + owner + '\'' +
                '}';
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

    public void setTime(Timestamp time) {
        this.time = time ;
    }

    public void setEventType(String eventType) {
        this.eventType = eventType ==null ? null :eventType.trim();
    }

    public void setState(String state) {
        this.state = state ==null ? null :state.trim();
    }

    public void setEventid(String eventid) {
        this.eventid = eventid ==null ? null :eventid.trim();
    }

    public void setRssi(String rssi) {
        this.rssi = rssi ==null ? null :rssi.trim();
    }

    public void setDump_energy(String dump_energy) {
        this.dump_energy = dump_energy ==null ? null :dump_energy.trim();
    }

    public void setOwner(String owner) {
        this.owner = owner ==null ? null :owner.trim();
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

    public Date getTime() {
        return time;
    }

    public String getEventType() {
        return eventType;
    }

    public String getState() {
        return state;
    }

    public String getEventid() {
        return eventid;
    }

    public String getRssi() {
        return rssi;
    }

    public String getDump_energy() {
        return dump_energy;
    }

    public String getOwner() {
        return owner;
    }


    /*
    public String getCarnumber() {
        return carnumber;
    }

    public void setCarnumber(String carnumber) {
        this.carnumber = carnumber == null ? null : carnumber.trim();
    }

    public String getCartype() {
        return cartype;
    }

    public void setCartype(String cartype) {
        this.cartype = cartype == null ? null : cartype.trim();
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

    public String getCarimg() {
        return carimg;
    }

    public void setCarimg(String carimg) {
        this.carimg = carimg == null ? null : carimg.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }*/
}