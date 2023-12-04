package vn.edu.hcmuaf.model;

public class UserAdmin {
    private String maNv;
    private String username;
    private String password;
    private String email;

    public UserAdmin(String maNv, String username, String password, String email) {
        this.maNv = maNv;
        this.username = username;
        this.password = password;
        this.email = email;
    }

    public String getMaNv() {
        return maNv;
    }

    public void setMaNv(String maNv) {
        this.maNv = maNv;
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
                "maNv='" + maNv + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
