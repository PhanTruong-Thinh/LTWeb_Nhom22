package vn.edu.hcmuaf.model;

import java.util.Date;

public class Status {
    private String id;
    private String name;
    private Date create;

    public Status(){

    }
    public Status(String id, String name, Date create) {
        this.id = id;
        this.name = name;
        this.create = create;
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

    public Date getDreate() {
        return create;
    }

    public void setDreate(Date dreate) {
        this.create = dreate;
    }

    @Override
    public String toString() {
        return "Status{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", dreate=" + create +
                '}';
    }
}
