package user;

import javax.json.bind.annotation.JsonbProperty;

/**
 * @author Sai
 * Created by Sai on 2019-03-15.
 *
 *
 * @JsonbProperty - 用于指定自定义字段名称
 * @JsonbTransient - 当我们想要在反序列化/序列化期间忽略该字段时
 * @JsonbDateFormat - 当我们想要定义日期的显示格式时
 * @JsonbNumberFormat - 用于指定数值的显示格式
 * @JsonbNillable - 用于启用空值的序列化
 */
@SuppressWarnings("unused")
public class Usering {

    // 为了使用jsonb,必须有一个空的默认构造方法
    public Usering() {

    }

    public Usering(String aname, String ausername, String aidentity, String adepartment, String group, String facul, String open) {
        this.aname = aname;
        this.ausername = ausername;
        this.aidentity = aidentity;
        this.adepartment = adepartment;
        this.group=group;
        this.facul=facul;
        this.open=open;
    }


    @JsonbProperty("username")
    private String aname;


    @JsonbProperty("name")

    private String ausername;

    @JsonbProperty("faculty")
    private String aidentity;


    @JsonbProperty("wx_openid")
    private String adepartment;

    @JsonbProperty("group")
    private String group;

    @JsonbProperty("faculty_title")
    private String facul;

    @JsonbProperty("openid")
    private String open;


    public String getAname() {
        return aname;
    }

    public void setAname(String name) {
        this.aname = name;
    }

    public String getAusername() {
        return ausername;
    }

    public void setAusername(String username) {
        this.ausername = username;
    }

    public String getAidentity() {
        return aidentity;
    }

    public void setAidentity(String identity) {
        this.aidentity = identity;
    }

    public String getAdepartment() {
        return adepartment;
    }

    public void setAdepartment(String department) {
        this.adepartment = department;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String departmen) {
        this.group = departmen;
    }

    public String getFacul() {
        return facul;
    }

    public void setFacul(String departme) {
        this.facul = departme;
    }

    public String getOpen() {
        return open;
    }

    public void setOpen(String departm) {
        this.open = departm;
    }
}