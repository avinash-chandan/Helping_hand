/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

/**
 *
 * @author AVINASH
 */
public class User {
    private String name,email,username,password,phoneno,address,locality;
    private int userid,donatepoint,receivepoint;

    public User() {
    }

    public User(String name, String email, String username, String password, String phoneno, String address, String locality, int userid, int donatepoint, int receivepoint) {
        this.name = name;
        this.email = email;
        this.username = username;
        this.password = password;
        this.phoneno = phoneno;
        this.address = address;
        this.locality = locality;
        this.userid = userid;
        this.donatepoint = donatepoint;
        this.receivepoint = receivepoint;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public String getPhoneno() {
        return phoneno;
    }

    public void setPhoneno(String phoneno) {
        this.phoneno = phoneno;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLocality() {
        return locality;
    }

    public void setLocality(String locality) {
        this.locality = locality;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getDonatepoint() {
        return donatepoint;
    }

    public void setDonatepoint(int donatepoint) {
        this.donatepoint = donatepoint;
    }

    public int getReceivepoint() {
        return receivepoint;
    }

    public void setReceivepoint(int receivepoint) {
        this.receivepoint = receivepoint;
    }
    
}
