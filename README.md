# SpringWebDemo

本项目为Spring + SpringData(JPA) + SpringMVC整合项目Demo，实现了简单的增删查改以及分页功能。

基于Mysql数据库[如使用其他数据库请替换对应的jar包，并修改db.properties配置文件]

```
使用Java版本为1.8
使用Tomcat版本为8.0
使用的Spring版本为4.3.6
使用的Hibernate版本为5.2.8
使用的Hibernate Validator版本为5.4.0
```

1. 加入Jar包

Spring(包含了SpringMVC的包，需要加入commons-logging)
```
spring-aop-4.3.6.RELEASE.jar
spring-aspects-4.3.6.RELEASE.jar
spring-beans-4.3.6.RELEASE.jar
spring-context-4.3.6.RELEASE.jar
spring-context-support-4.3.6.RELEASE.jar
spring-core-4.3.6.RELEASE.jar
spring-expression-4.3.6.RELEASE.jar
spring-instrument-4.3.6.RELEASE.jar
spring-instrument-tomcat-4.3.6.RELEASE.jar
spring-jdbc-4.3.6.RELEASE.jar
spring-jms-4.3.6.RELEASE.jar
spring-messaging-4.3.6.RELEASE.jar
spring-orm-4.3.6.RELEASE.jar
spring-oxm-4.3.6.RELEASE.jar
spring-test-4.3.6.RELEASE.jar
spring-tx-4.3.6.RELEASE.jar
spring-web-4.3.6.RELEASE.jar
spring-webmvc-4.3.6.RELEASE.jar
spring-webmvc-portlet-4.3.6.RELEASE.jar
spring-websocket-4.3.6.RELEASE.jar

commons-logging-1.2.jar
```

JPA(来自于Hibernate->lib->{required + jpa + optional->c3p0 + optional->ehcache})

```
antlr-2.7.7.jar
classmate-1.3.0.jar
dom4j-1.6.1.jar
hibernate-commons-annotations-5.0.1.Final.jar
hibernate-core-5.2.8.Final.jar
hibernate-jpa-2.1-api-1.0.0.Final.jar
jandex-2.0.3.Final.jar
javassist-3.20.0-GA.jar
jboss-logging-3.3.0.Final.jar
jboss-transaction-api_1.2_spec-1.0.1.Final.jar

hibernate-jpamodelgen-5.2.8.Final.jar

c3p0-0.9.5.2.jar
hibernate-c3p0-5.2.8.Final.jar
mchange-commons-java-0.2.11.jar

ehcache-2.10.3.jar
hibernate-ehcache-5.2.8.Final.jar
slf4j-api-1.7.7.jar
```

MySql驱动

```
mysql-connector-java-5.1.40.jar
```

SpringData

```
spring-data-commons-1.13.1.RELEASE.jar
spring-data-jpa-1.11.1.RELEASE.jar
```

JSTL(JSP页面可使用jstl标签)

```
jstl-1.2.jar
standard-1.1.2.jar
```

Hibernate Validator框架

(以供使用JSR303数据校验功能[通过注解使用])
(包括dist下面的jar包及dist->lib->required[其中classmate和jboss-logging的jar包前面已加，不再重复添加])
```	
hibernate-validator-5.4.0.Final.jar
hibernate-validator-annotation-processor-5.4.0.Final.jar
hibernate-validator-cdi-5.4.0.Final.jar

javax.el-3.0.1-b08.jar
validation-api-1.1.0.Final.jar
```
```
使用方法：
在Entity中bean的属性上添加所需的校验注解；
在Controller中对应的目标方法bean类型参数前面添加@Valid注解。
```

2. 进行配置

```
web.xml

db.properties
spring.xml
springmvc.xml

ehcache.xml(hibernate->project->etc下复制过来)
```

3. 添加前端框架

```
jquery-3.1.1.min.js
bootstrap-3.3.7-dist
```
