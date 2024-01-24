package vn.edu.hcmuaf.model;

public class OderDetail {
    private String id;
    private String masp;
    private int number;
    private long total;

    public OderDetail(){}

    public OderDetail(String id, String masp, int number, long total) {
        this.id = id;
        this.masp = masp;
        this.number = number;
        this.total = total;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMasp() {
        return masp;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "OderDetail{" +
                "id='" + id + '\'' +
                ", masp='" + masp + '\'' +
                ", number=" + number +
                ", total=" + total +
                '}';
    }
}
