# zuGo
1. 开发环境:IDEA
2. 技术选型:Mysql+Tomcat+JDBC+Maven+Javabean+Servlet+Mysql+linux+bootstrap+ajax+JQuery
3. 项目持续时间:2018 年 4 月-5 月
4. 项目描述:zugo 租房网站是一个 C2C 租房平台,用户注册后可以上传自己的房子信息,利用 AJAX 为这
个房子上传图片,然后其他的用户可以搜索到被上传的房子,然后选择租房。如果租出去的房子多,则该用
户为优秀房主,则出现在推荐房主页面中。在后台管理系统中,管理员可以对用户表和房屋表进行增删改查
操作。
5. 负责模块:zugo 是提供一个平台来处理租房和被租房用户之间的关系,我负责的是用户去这个平台租
其他用户发布出来的房源的所有功能。例如,房源查询,房屋详细信息,成功租房。上传图片等一些十分必
要用 ajax 的地方用了 json 数据来进行数据的交互,实现异步刷新。
6. 项目小结:在这个项目中,对 Servlet,JDBC 的封装有了更加熟练的使用,也对其原理有了深刻的了解。
使用了静态工厂的方法来生成对象,降低了各个层之间的耦合度,但是有大量的 JDBC 的操作,耦合度还是
很高,效率很低,所以还有待完善。
