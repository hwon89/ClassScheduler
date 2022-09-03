__Group2: 수업 예약시스템__

---
__프로젝트 설명__


- 프로젝트 기간 : 2022.09.01 ~ 2022.09.03 
- 프로젝트 멤버 : 곽건호, 김희정, 김혜현, 원혜민 
- 프로젝트 내용 : 

  스프링과 SQL을 활용하여 웹화면을 구현하였음.  
  로그인 화면에서 id, password가 SQL DB에 있는게 확인이 되면 [로그인 -> 예약시스템] 으로 화면이 넘어가고,  
  id가 없는경우 [회원가입]을 통해 회원가입후 로그인할수있도록 함.  
  id나 password가 맞지 않는경우 팝업이 떠서 다시 로그인창으로 돌아가게 구현함.  
  [예약페이지]에서 리스트를 확인하고 선택하고자하는 강의를 선택하면 수업에 대한 [상세페이지]로 넘어가고 수강신청 할 수 있도록 함.  
  수강신청이 완료되면 [마이페이지]로 넘어가서 내가 선택한 수강목록을 확인 할 수 있도록 하였고,  
  수강취소를 원할경우 삭제 버튼을 눌러서 수강신청을 취소할수있게 구현하였음..

  
---

__주요기능__

- 로그인
- 로그아웃
- 세션
- JSTL/EL기능
-


---

__구동환경__

|   Program  | Version|
| ---------- | ----------- |
| OS   | Window 11 |
| JAVA | eclipse 11 EE |
| spring  | 3.9.18 |
| servlet     | 3.1.0 |
| TomCat| v 9.0 |
| ConnectionPool | HikariCP 3.2.0 |
| MyBatis | 3.4.6 |
| MyBatis Spriing | 1.3.2 |
| Lombok | 1.18.24 |

---

__프로젝트 구조__

![SpringMVCStructure](https://user-images.githubusercontent.com/109212415/188261731-ccfb39fa-87ef-40a7-ae7c-2f12fed35e7e.jpg)

---
__데이터베이스 구조__

![dbtable (1)](https://user-images.githubusercontent.com/109212415/188261636-0d31a61a-7ddc-425c-b193-91d4e1761272.png)

---

__파일구조__

    ├─src
    │  ├─main
    │  │  ├─java
    │  │  │  └─com
    │  │  │      └─group2
    │  │  │          └─scheduler
    │  │  │              ├─command
    │  │  │              │      EnrollVO.java
    │  │  │              │      RegisterVO.java
    │  │  │              │      UserVO.java
    │  │  │              │
    │  │  │              ├─controller
    │  │  │              │      EnrollController.java
    │  │  │              │      HomeController.java
    │  │  │              │      UserController.java
    │  │  │              │
    │  │  │              └─service
    │  │  │                      SchedulerMapper.java
    │  │  │                      SchedulerService.java
    │  │  │                      SchedulerServiceImpl.java
    │  │  │
    │  │  ├─resources
    │  │  │  │  log4j.xml
    │  │  │  │
    │  │  │  ├─db-config
    │  │  │  │      hikari.properties
    │  │  │  │
    │  │  │  ├─mybatis-config
    │  │  │  │      mybatis-config.xml
    │  │  │  │
    │  │  │  └─sqlmap
    │  │  │          SchedulerMapper.xml
    │  │  │
    │  │  └─webapp
    │  │      ├─resources
    │  │      │  └─css
    │  │      │          login.css
    │  │      │          view.css
    │  │      │
    │  │      └─WEB-INF
    │  │          │  web.xml
    │  │          │
    │  │          ├─spring
    │  │          │      root-context.xml
    │  │          │      servlet-context.xml
    │  │          │
    │  │          ├─tiles
    │  │          │      footer.jsp
    │  │          │      header.jsp
    │  │          │      template.jsp
    │  │          │      tiles.xml
    │  │          │
    │  │          └─views
    │  │              │  home.jsp
    │  │              │
    │  │              ├─enroll
    │  │              │      detail.jsp
    │  │              │      list.jsp
    │  │              │
    │  │              └─user
    │  │                      join.jsp
    │  │                      login.jsp
    │  │                      mypage.jsp
    │  │
    │  └─test
    │      └─resources
    │              log4j.xml
    │
    └─target
        ├─classes
        │  │  log4j.xml
        │  │
        │  ├─com
        │  │  └─group2
        │  │      └─scheduler
        │  │          ├─command
        │  │          │      EnrollVO.class
        │  │          │      RegisterVO.class
        │  │          │      UserVO.class
        │  │          │
        │  │          ├─controller
        │  │          │      EnrollController.class
        │  │          │      HomeController.class
        │  │          │      UserController.class
        │  │          │
        │  │          └─service
        │  │                  SchedulerMapper.class
        │  │                  SchedulerService.class
        │  │                  SchedulerServiceImpl.class
        │  │
        │  ├─db-config
        │  │      hikari.properties
        │  │
        │  ├─mybatis-config
        │  │      mybatis-config.xml
        │  │
        │  └─sqlmap
        │          SchedulerMapper.xml
        │
        ├─m2e-wtp
        │  └─web-resources
        │      └─META-INF
        │          │  MANIFEST.MF
        │          │
        │          └─maven
        │              └─com.group2
        │                  └─scheduler
        │                          pom.properties
        │                          pom.xml
        │
        └─test-classes
                log4j.xml


---
