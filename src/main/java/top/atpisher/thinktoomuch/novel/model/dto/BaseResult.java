package top.atpisher.thinktoomuch.novel.model.dto;

import lombok.Data;

import java.io.Serializable;

/**自定义返回结果
 * @ClassName: BaseResult
 * @Author: l1957
 * @Date: 2021/6/4 10:29
 * @Description: TODO
 */
@Data
public class BaseResult implements Serializable {
    public static final int STATUS_SUCCESS=200;
    public static final int STATUS_FILE=500;

    private int status;
    private String message;

    public static BaseResult success(){
        return createResult(STATUS_SUCCESS, "成功");
    }

    private static BaseResult createResult(int status, String message) {
        BaseResult baseResult = new BaseResult();
        baseResult.setStatus(status);
        baseResult.setMessage(message);
        return baseResult;
    }

    public static BaseResult success(String message){
        return createResult(STATUS_SUCCESS, message);
    }

    public static BaseResult fail(){
        return createResult(STATUS_FILE, "失败");
    }
    //自定义错误信息
    public static BaseResult fail(String message){
        return createResult(STATUS_FILE, message);
    }
    public static BaseResult fail(int status,String message){
        return createResult(status, message);
    }

}

