__Group2: 수업 예약시스템__

---
__프로젝트 설명__


- 프로젝트 기간 : 2022.09.01 ~ 2022.09.03 
- 프로젝트 멤버 : 곽건호, 김희정, 김혜현, 원혜민 
- 프로젝트 내용 : 로그인/회원가입 -> 수강예약화면 -> 상세페이지 -> 수강신청/취소 화면으로 나누어서 진행

기본적인 css/html은 부트스트랩을 이용하여 양식 따오고 
백엔드단에서 Enroll/UserVO를 만들어서 
  
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
