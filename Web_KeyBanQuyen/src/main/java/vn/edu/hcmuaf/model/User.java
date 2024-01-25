package vn.edu.hcmuaf.model;

import javax.xml.crypto.Data;
import java.sql.Timestamp;
import java.util.Date;

public class User {
    private String id;
    private String name;
    private String address;
    private String email;
    private String phone;
    private String username;

    private String password;
    private int level;
    private Date date;

    public User() {
    }

    public User(String id, String name, String address, String email, String phone, String username, String password, Date date) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.date = date;

    }

    public User(String id, String name, String address, String email, String phone, String username, String password, int level, Date date) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.level = level;
        this.date = date;
    }

    public User(String id, String name, String address, String email, String phone, String username, String password, int level) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.level = level;
    }


    public String getMaNv() {
        return id;
    }

    public void setMaNv(String maNv) {
        this.id = maNv;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", level='" + level + '\'' +
                ", date=" + date +
                '}';
    }
}
