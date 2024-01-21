package vn.edu.hcmuaf.model;

public class Image {
    private String masp;
    private String url;
    public Image(){}
    public Image(String masp, String url) {
        this.masp = masp;
        this.url = url;
    }

    public String getMasp() {
        return masp;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Image{" +
                "masp='" + masp + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
