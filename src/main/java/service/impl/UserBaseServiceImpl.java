package service.impl;

import dao.UserBaseDao;
import entity.UserBase;
import entity.UserInfo;
import service.UserBaseService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserBaseServiceImpl implements UserBaseService {

    @Autowired
    private UserBaseDao userBaseDao;//在Spring容器中已实例化

    private org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());

    
    
    public List<UserBase> queryAllUser() {
        return userBaseDao.queryAllUser();
    }
    
    public List<UserInfo> queryUserId(UserInfo userInfo) {
    	
    	return userBaseDao.queryUserId(userInfo);
    	
    }

    

}
