package dao;


import entity.UserBase;
import entity.UserInfo;

import java.util.List;

public interface UserBaseDao {
    
    List<UserBase> queryAllUser();
    
    List<UserInfo> queryUserId(UserInfo userInfo);

}
