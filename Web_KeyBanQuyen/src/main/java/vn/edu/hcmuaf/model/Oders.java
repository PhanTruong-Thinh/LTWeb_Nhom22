package vn.edu.hcmuaf.model;

import java.util.Date;
import java.util.Random;

public class Oders {
    private String id;
    private String maKH;
    private Date date;
    private long total;
    private String nameKH;
    private String phone;
    private String address;
    private String status;
    private String thanhtoan;
    public Oders(){

    }

    public Oders(String id, String maKH, Date date, long total, String status, String thanhtoan) {
        this.id = id;
        this.maKH = maKH;
        this.date = date;
        this.total = total;
        this.status = status;
        this.thanhtoan = thanhtoan;
    }

    public Oders(String id, String maKH, Date date, long total, String nameKH, String phone, String address, String status, String thanhtoan) {
        this.id = id;
        this.maKH = maKH;
        this.date = date;
        this.total = total;
        this.nameKH = nameKH;
        this.phone = phone;
        this.address = address;
        this.status = status;
        this.thanhtoan = thanhtoan;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMaKH() {
        return maKH;
    }

    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public String getNameKH() {
        return nameKH;
    }

    public void setNameKH(String nameKH) {
        this.nameKH = nameKH;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getThanhtoan() {
        return thanhtoan;
    }

    public void setThanhtoan(String thanhtoan) {
        this.thanhtoan = thanhtoan;
    }

    public static String generateRandomNumbers() {
        StringBuilder randomNumbers = new StringBuilder();

        Random random = new Random();
        for (int i = 0; i < 10; i++) {
            int randomNumber = random.nextInt(10); // Sinh số ngẫu nhiên từ 0 đến 9
            randomNumbers.append(randomNumber);
        }

        return randomNumbers.toString();
    }

    @Override
    public String toString() {
        return "Oders{" +
                "id='" + id + '\'' +
                ", maKH='" + maKH + '\'' +
                ", date=" + date +
                ", total=" + total +
                ", nameKH='" + nameKH + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", status='" + status + '\'' +
                ", thanhtoan='" + thanhtoan + '\'' +
                '}';
    }
}
