package dao;

import entity.UserBase;
import entity.UserInfo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;
/*
* 閰嶇疆spring鍜宩unit鏁村悎锛宩unit鍚姩鏃跺姞杞絪pringIOC瀹瑰櫒
* spring-test,junit
*/
@RunWith(SpringJUnit4ClassRunner.class)
//鍛婅瘔junit spring閰嶇疆鏂囦欢
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class UserBaseDaoTest {
    //娉ㄥ叆Dao瀹炵幇渚濊禆
    @Resource  //娉ㄥ叆dao瀹炵幇
    private UserBaseDao userBaseDao;
  
    /*@Test
    public void queryAllUser() throws Exception {
        UserBase user = new UserBase();
        List<UserBase> list = userBaseDao.queryAllUser();
        System.out.println(list);
    }*/
    @Test
    public void queryUserId() throws Exception {
    	UserInfo user = new UserInfo();
    	user.setLoginname("admin");
    	user.setLoginpass("123451");
        List<UserInfo> list = userBaseDao.queryUserId(user);
        if(list.size()==0){
        	System.out.println("@flase@");
        }else{
        	System.out.println("@true@");
        }
    }
}
