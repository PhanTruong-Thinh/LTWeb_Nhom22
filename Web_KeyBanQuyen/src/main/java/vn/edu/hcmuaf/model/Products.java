package vn.edu.hcmuaf.model;

import java.util.Date;

public class Products {

    private String maSP;
    private String maDM;
    private String name;
    private String  typeProduct;
    private String moTa;
    private double price;
    private String version;
    private String hangSX;
    private String url;
    private String hangDung;
    private String baoHanh;
    private Date create;
    private int number;
    private int numberUser;

    private String status;
    private String tinhTrang;

    public Products() {
    }

    public Products(String url,String id, String name, String status, int number, String tinhTrang, double price){
        this.url = url;
        this.maSP = id;
        this.name = name;
        this.status = status;
        this.number = number;
        this.tinhTrang = tinhTrang;
        this.price = price;
    }
    public Products(String url,String id, String name, String status, double price){
        this.url = url;
        this.maSP = id;
        this.name = name;
        this.status = status;
        this.price = price;
    }


    public Products(String maSP, String maDM, String name, String typeProduct, String moTa, double price, String version, String hangSX, String url, String hangDung, String baoHanh, Date create, int number, int numberUser, String status, String tinhTrang) {
        this.maSP = maSP;
        this.maDM = maDM;
        this.name = name;
        this.typeProduct = typeProduct;
        this.moTa = moTa;
        this.price = price;
        this.version = version;
        this.hangSX = hangSX;
        this.url = url;
        this.hangDung = hangDung;
        this.baoHanh = baoHanh;
        this.create = create;
        this.number = number;
        this.numberUser = numberUser;
        this.status = status;
        this.tinhTrang = tinhTrang;
    }
    public Products(String maSP, String maDM, String name, String typeProduct, String moTa, double price, String version, String hangSX, String url, String hangDung, String baoHanh, Date create, int numberUser, String status) {
        this.maSP = maSP;
        this.maDM = maDM;
        this.name = name;
        this.typeProduct = typeProduct;
        this.moTa = moTa;
        this.price = price;
        this.version = version;
        this.hangSX = hangSX;
        this.url = url;
        this.hangDung = hangDung;
        this.baoHanh = baoHanh;
        this.create = create;
        this.numberUser = numberUser;
        this.status = status;

    }

    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public String getMaDM() {
        return maDM;
    }

    public void setMaDM(String maDM) {
        this.maDM = maDM;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTypeProduct() {
        return typeProduct;
    }

    public void setTypeProduct(String typeProduct) {
        this.typeProduct = typeProduct;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getHangSX() {
        return hangSX;
    }

    public void setHangSX(String hangSX) {
        this.hangSX = hangSX;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getHangDung() {
        return hangDung;
    }

    public void setHangDung(String hangDung) {
        this.hangDung = hangDung;
    }

    public String getBaoHanh() {
        return baoHanh;
    }

    public void setBaoHanh(String baoHanh) {
        this.baoHanh = baoHanh;
    }

    public Date getCreate() {
        return create;
    }

    public void setCreate(Date create) {
        this.create = create;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getNumberUser() {
        return numberUser;
    }

    public void setNumberUser(int numberUser) {
        this.numberUser = numberUser;
    }

    public String getTinhTrang() {
        return tinhTrang;
    }

    public void setTinhTrang(String tinhTrang) {
        this.tinhTrang = tinhTrang;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Products{" +
                "maSP='" + maSP + '\'' +
                ", maDM='" + maDM + '\'' +
                ", name='" + name + '\'' +
                ", typeProduct='" + typeProduct + '\'' +
                ", moTa='" + moTa + '\'' +
                ", price=" + price +
                ", version='" + version + '\'' +
                ", hangSX='" + hangSX + '\'' +
                ", url='" + url + '\'' +
                ", hangDung='" + hangDung + '\'' +
                ", baoHanh='" + baoHanh + '\'' +
                ", create=" + create +
                ", number=" + number +
                ", numberUser=" + numberUser +
                ", status='" + status + '\'' +
                ", tinhTrang='" + tinhTrang + '\'' +
                '}';
    }
}
