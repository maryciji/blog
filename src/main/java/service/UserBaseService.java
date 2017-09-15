package service;

import entity.UserBase;
import entity.UserInfo;

import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2017/8/15.
 */
@Transactional
public interface UserBaseService  {

    
    public List<UserBase> queryAllUser();
    
    public List<UserInfo> queryUserId(UserInfo userInfo);

    

}
