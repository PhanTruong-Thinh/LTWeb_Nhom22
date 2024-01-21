package vn.edu.hcmuaf.model;

import java.util.Date;

public class Kho {
    private String id;
    private int number;
    private Date dataUpdate;
    public Kho(){}

    public Kho(String id, int number, Date dataUpdate) {
        this.id = id;
        this.number = number;
        this.dataUpdate = dataUpdate;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public Date getDataUpdate() {
        return dataUpdate;
    }

    public void setDataUpdate(Date dataUpdate) {
        this.dataUpdate = dataUpdate;
    }

    @Override
    public String toString() {
        return "Kho{" +
                "id='" + id + '\'' +
                ", number=" + number +
                ", dataUpdate=" + dataUpdate +
                '}';
    }
}
