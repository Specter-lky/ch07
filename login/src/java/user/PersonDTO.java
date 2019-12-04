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
public class PersonDTO {

    // 为了使用jsonb,必须有一个空的默认构造方法
    public PersonDTO() {

    }

    public PersonDTO(String name, String username, String identity, String department) {
        this.name = name;
        this.username = username;
        this.identity = identity;
        this.department = department;
    }


    @JsonbProperty("token")
    private String name;

    // 姓名

    @JsonbProperty("appid")

    private String username;

    // 身份
    @JsonbProperty("appsecret")
    private String identity;

    // 部门

    @JsonbProperty("userip")
    private String department;



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

}