package vn.edu.hcmuaf.bean;

public class UserAdmin {
    private int maNV;
    private String username;
    private String password;
    private String email;

    public UserAdmin(int maNV, String username, String password, String email) {
        this.maNV = maNV;
        this.username = username;
        this.password = password;
        this.email = email;
    }

    public UserAdmin() {

    }

    public int getMaNV() {
        return maNV;
    }

    public void setMaNV(int maNV) {
        this.maNV = maNV;
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

    @Override
    public String toString() {
        return "UserAdmin{" +
                "maNV=" + maNV +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                "}\n";
    }
}
