


drop database if exists ects;
create database ects;
use ects;




##   国家表结构
create   table COUNTRY(
               country_id     int  primary key auto_increment,
               name           varchar(64)
               );
               
               
##   模拟国家表数据               
INSERT INTO COUNTRY( name ) VALUES ('中国');




create   table PROVINCE(
               province_id     int  primary key auto_increment,
               name           varchar(64),
               country_id      int 
               );
               
               
               
               
##    模拟省份表数据
INSERT INTO province (province_id , name , country_id ) VALUES (1, '安徽', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (2, '北京', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (3, '重庆', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (4, '福建', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (5, '广东', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (6, '甘肃', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (7, '广西', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (8, '贵州', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (9, '河南', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (10, '湖北', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (11, '河北', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (12, '海南', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (13, '香港', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (14, '黑龙江', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (15, '湖南', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (16, '吉林', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (17, '江苏', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (18, '江西', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (19, '辽宁', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (20, '澳门', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (21, '内蒙古', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (22, '宁夏', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (23, '青海', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (24, '四川', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (25, '山东', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (26, '上海', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (27, '陕西', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (28, '山西', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (29, '天津', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (30, '台湾', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (31, '新疆', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (32, '西藏', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (33, '云南', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (34, '浙江', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (35, '其它', 1);
  
  ##    用户基本信息表结构
  create  table  USER(
                   user_id     int   primary key  auto_increment,
                   name        varchar(64) unique,
                   password      varchar(16)
                   );
                   
  ##    用户信息关联信息表结构
 create  table  CONTCATINFO(
                    contcatinfo_id   int  ,
                    street1          varchar(128),
                    street2          varchar(128),    
                    city             varchar(128), 
                    zip              varchar(12),    
                    email            varchar(128), 
                    homePhone        varchar(32),
                    cellPhone        varchar(32),
                    officePhone      varchar(32),
                    country_id   int ,
                    province_id  int  ,
                    primary key(contcatinfo_id)
                    );
 
## 创建商品类型表结构
create   table   Category(
                 category_id   int  primary key auto_increment,
                 name          varchar(64),
                 descriptions  varchar(256)
                  );  
##  模拟商品数据  
INSERT INTO  Category (category_id , name ,descriptions )  values  (1, '计算机', '软件与程序设计相关');
INSERT INTO  Category (category_id , name ,descriptions )  values (2, '英语', '英语相关图书');
INSERT INTO  Category (category_id , name ,descriptions )  values (3, '文学', '文学作品图书集');
                 
## 创建商品表结构
create   table   Product(
                 product_id    int  primary key auto_increment,
                 name          varchar(64),
                 author        varchar(64),
                 publish       varchar(128),
                 pages         int,
                 images        varchar(128),
                 basePrice     double,
                 descriptions  varchar(4000),
                 category_id    int  
                  );              
                             
##  模拟商品数据 


INSERT INTO `product` VALUES (1, 'JAVA编程思想《第四版》', '（美）Bruce Eckel', '机械工业出版社', 796, 'images/product/zcover1.jpg', 95, '从本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书作者有多年的教学经验，对C、C++、Java语言都有独到、深入的理解。因此他非常了解如何教授Java语言这门课程，也非常明白语言教学中的难点及人们的困惑。作者以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念，精心选取“对读者理解Java语言来说最为重要”的部分编写成书。同时又在随书光盘中提供了大量参考材料—这也是本书绝对物超所值的地方。\r\n随书光盘没有包含本书的源代码（可以从支持网站www.MindView.net免费下载），而是提供了大量作者讲授的讨论课内容及本书的前2版内容。\r\n本书内容丰富—从Java的基础语法到最高级特性，适合各层次的Java程序员阅读，同时也是高等院校讲授面向对象程序设计语言及Java语言的绝佳教材。', 1);
INSERT INTO `product` VALUES (2, '精通Hibernate', '孙卫琴', '电子工业出版社', 600, 'images/product/zcover2.jpg', 59, '　　孙卫琴的计算机书籍 创作心得:<br>\r\n　　如果说书的结构好比房屋的框架，书的内容则好比房屋的具体组成元素。计算机书的内容的形式分为：文字、 表格、图和范例。为了把某种知识讲清楚，常常需要综合使用这四种形式的元素......\r\n:<br>\r\n　　继《Tomcat 与 Java Web开发技术详解(含光盘)》和《精通Struts：基于MVC的Java Web设计与开发(含光盘)》之后，应广大读者的强烈要求，孙卫琴的又一力作《精通Hibernate：Java对象持久化技术详解》，正处在迎接面市的准备当中。\r\nHibernate是一个基于Java的开放源代码的持久化中间件，它对JDBC作了轻量级封装，不仅提供ORM映射服务，还提供数据查询和数据缓存功能，Java开发人员可以方便的通过Hibernate API来操纵数据库。\r\n现在，越来越多的Java开发人员把Hibernate作为企业应用和关系数据库之间的中间件，以节省和对象持久化有关的30%的JDBC编程工作量。 2005年，Hibernate作为优秀的类库和组件，荣获了第15届Jolt大奖。Hibernate之所以能够流行，归功于它特有的优势。<br>\r\n　　本书结合大量典型的实例，详细介绍了运用目前最成熟的Hibernate2.1版本进行Java对象持久化的技术。Hibernate是连接Java 对象模型和关系数据模型的桥梁，通过本书，读者不仅能掌握用Hibernate工具对这两种模型进行映射的技术，还能获得设计与开发Java对象模型和关系数据模型的先进经验。', 1);
INSERT INTO `product` VALUES (3, 'JAVA核心技术', '(美)Gary Cornell', '机械工业出版社', 698, 'images/product/zcover3.jpg', 75, '    如果你已经是Java程序员，想了解Java的最新特性，该怎么办呢?去问一问身边的Java专家，他们会告诉你：《Java核心技术》通过提供实战指导，能够使你快速掌握Java精髓，完成最具挑战性的任务。这也正是它能连续7年在世界范围内成为最畅销书籍的原因。<br>\r\n　　本书全面讲述了标准 Java 2 1．4版本的基本知识，涵盖了从正则表达式到高性能I／O这样的主要新特性。从中能够读到关于面向对象的Java平台开发的经典阐述，以及全面更新了的 Swing用户界面开发及其他更多内容。最重要的是，第6版包含了更多值得信赖的实用程序(本书一直就是以这些实用程序而著称)，并且进行了更新，反映了最近的SDK特性和发展!<br>\r\n　　本书为Java平台开发者提供了以下新信息：<br>\r\n　　●Swing GUI开发——包括输入验证和其他增强特性<br>\r\n　　●开发可靠代码——包括链式异常、栈帧，断言和日志<br>\r\n　　●新的高性能的I／O API——内存映射文件、文件加锁及字符集编码／解码<br>\r\n　　●使用了新的功能强大的java．utiI．regex包的正则表达式<br>\r\n　　●Java 1．4平台环境设置类：新的跨平台的配置信息存储库<br>\r\n　　●动态代理类、内部类、Java平台事件模型、流、文件管理以及其他内容<br>\r\n作者简介：<br>\r\n　　CayS．Horstmann是圣何塞州立大学的计算机科学教授，在C++、Java和面向对象开发方面已经有6本著作。 GaryCornell是康涅狄格大学的教授，也是广大开发人员喜爱的技术作家，许多著作都广受好评。近年来他还与人创办了著名的计算机技术图书出版社 Apress。', 1);
INSERT INTO `product` VALUES (4, 'Effective Java中文版(第2版)', '(美)Joshua Bloch', '机械工业出版社', 214, 'images/product/zcover4.jpg', 39, '　　本书介绍了在Java编程中57条极具实用价值的经验规则，这些经验规则涵盖了大多数开发人员每天所面临的问题的解决方案。通过对Java平台设计专家所使用的技术的全面描述，揭示了应该做什么、不应该做什么才能产生清晰、健壮和高效的代码。 本书中的每条规则都以简短、独立的小文章形式出现，这些小文章包含了详细而精确的建议，以及对语言中许多细微之处的深入分析，并通过例子代码加以进一步说明。贯穿全书的是通用的语言用法和设计模式，以及一些具有启发意义的技巧和技术。<br>\r\n<br>\r\n　　◆“真希望10年前我就能拥有这本书。可能有人会认为我不需要任何关于Java的书籍，但是我确实需要这本书。”<br> 　　　　　　　　　　　　　　　　　　——James Gosling，Java之父，Sun公司副总裁<br>\r\n<br>\r\n　　◆“一本非常优秀的书，充满了各种关于使用Java程序设计语言和面向对象程序设计的好的建议。”<br>\r\n　　　　　　　　　　　　　　　　　　　　 ——Gilad Bracha, Sun公司计算机科学家，《The Java TM Language Specificationy》（Second Edition）的作者之一 ', 1);
INSERT INTO `product` VALUES (5, 'Java与模式', '阎宏', '电子工业出版社', 1024, 'images/product/zcover5.jpg', 88, '本书是一本讲解设计原则以及最为常见的设计模式的实用教材，目的是为工作繁忙的Java系统设计师提供一个快速而准确的设计原则和设计模式的辅导。本书分为55章，每一个章节讲解一个编程模式，说明此模式的用意、结构，以及这一模式适合于什么样的情况等。每一个章节都附有多个例子和练习题，研习这些例子、完成这些练习题可以帮助读者更好地理解所讲的内容。大多数的章节都是相对独立的，读者可以打开本书，从任何一章开始读起。为了满足不同程度的读者的需要，本书提供了一些标为“专题”的章节，不阅读这些章节，对阅读本书的标准章节没有影响。读过本书之后，读者可以很有信信心地在自己的系统设计工作中使用学过的内容，与同事交流面向对象的设计经验，并在事业发展上有更多的收获。本书适合于Java程序员、架构设计师及设计模式爱好者，是一本实用的设计原则和设计模式的自学教材和使用手册', 1);
INSERT INTO `product` VALUES (6, '深入浅出Hibernate', '夏昕 曹晓钢 唐勇', '电子工业出版社', 512, 'images/product/zcover6.jpg', 59, '本书由互联网上影响广泛的开放文档OpenDoc系列自由文献首份文档“Hibernate开发指南”发展而来。在编写过程中，进行了重新构思与组织，同时对内容的深度与广度进行了重点强化。本书从持久层入手，引出对象/关系数据库映射的由来，接下来聚焦于目前最完善、最强悍的ORM产品—— Hibernate。从一个基础程序入手，讲述Hibernate的基本语法与配置，慢慢升高到缓存、延迟加载等高级特性。本书内容深入浅出，先讲述持久层设计与ORM，再由Hibernate概述、Hibernate基础Hibernate高级特性顺序展开，直至Hibernate实战，重点讲述了 Hibernate的基础语法、基础配置、O/R映射、数据关联、数据检索、HQL实用技术、自定义持久化实现、Hibernate回调与拦截、 Hibernate分页等实用技术，Hibernate实战部分则用一个真实论坛的创建演示了Hibernate的强大功能。本书有丰富的附录部，在附录中讲述了Hibernate常用的映射配置，Hibernate工具、XDoclet模板配置以及Hibernate的益友iBatis用法，还以卡片的形式列出了本书中所用的工具及软件，附录最后一部分是“快速启动代码”，供读者对比与参考，也给初学者提供了一个快带起步的基础。本书适合于Hibernate的各个阶层的读者。', 1);
INSERT INTO `product` VALUES (7, 'Tomcat与java Web', '孙卫琴 李洪成', '电子工业出版社', 438, 'images/product/zcover7.jpg', 45, '　　 本书详细介绍了在最新Tomcat 5版本上开发Java Web应用的各种技术。主要内容包括：Tomcat和Java Web开发的基础知识，Java Web开发的高级技术，Tomcat与当前其他通用软件的集成，以及Tomcat的各种高级功能。书中内容注重理论与实践相结合，列举了大量具有典型性和实用价值的Web应用实例，并提供了详细的开发和部署步骤。由于Java Web技术是SUN公司在Java Servlet规范中提出的通用技术，因此本书讲解的Java Web应用例子可以运行在任何一个实现SUN的Servlet规范的Java Web服务器上。随书附赠光盘内容为本书所有范例源程序，以及本书涉及到的所有软件的最新版本的安装程序。本书语言深入浅出，通俗易懂。无论对于Java Web开发的新手还是行家来说，本书都是精通Tomcat技术和开发Java Web应用的必备的实用手册。', 1);
INSERT INTO `product` VALUES (8, '电脑黑客攻略', '熊巧玲', '清华大学出版社', 260, 'images/product/zcover8.jpg', 55, '260页交互式数字图书，数字阅读过程中，单击相关按钮，可观看相应操作的多媒体演示， 　　48集(115节)大型交互式、专业级、多媒体教学演示，还可跟着视频做练习， 　　全彩印刷，像电视一样，摈?“...', 1);
INSERT INTO `product` VALUES (9, '电脑软硬件维修', '熊巧玲', '科学出版社', 522, 'images/product/zcover9.jpg', 52, '软硬件维修经典之作 全面增值上市　　专家教学 国内一线软硬件专家和培训师精心编写，讲解深入，系统，100%解决你学不会的烦恼　　技术新而全 直击主流热点软硬件，涵盖故障流程诊断、动手实践、维...', 1);
INSERT INTO `product` VALUES (10, 'Office 2007 电脑办公', '前沿文化', '科学出版社', 555, 'images/product/zcover10.jpg', 55, '本书让您简单快捷地学会Office 2007，使您轻松愉快地成为Office办公专家！ 选择最实用、最常用的知识，让您的学习不做无用功；图解式的讲解，让您阅读起来轻松直观，学习效率事半功倍；实用案例贯...', 1);
INSERT INTO `product` VALUES (11, '电脑医院', '电脑报', '电脑报电子音像出版社', 871, 'images/product/zcover11.jpg', 56, '丛书12次再版，累计销售超3,000,000册 　　频登各大书城电脑应用DIY类图书排行榜 　　连续7年被《中华图书报》评为“书店经理眼中的好书” 　　一套电脑用户首选的选购、装机、排障、连网的应用指...', 1);
INSERT INTO `product` VALUES (12, 'Office 2010 电脑办公', '九州书源', '清华大学出版社', 666, 'images/product/zcover12.jpg', 88, '《Office2010电脑办公(附光盘全彩版)》(作者九州书源)以实用功能讲解为核心，每一节下面?分为学习和上机两部分。学习部分以理论讲解为主，详细介绍每个知识点的具体应用，目...', 1);
INSERT INTO `product` VALUES (13, 'Android多媒体开发高级编程', '（美）艾佛瑞', '清华大学出版社', 555, 'images/product/zcover13.jpg', 23, '《Android多媒体开发高级编程——为智能手机和平板电脑开发图形、音乐、视频和富媒体应用》使用清晰、直观的示例介绍了Android SDK中丰富的多媒体功能，有助于您开发能够创建、播放和共享多媒体的...', 1);
INSERT INTO `product` VALUES (14, '快学快用:电脑打字', '卓越科技', '电子工业出版社', 666, 'images/product/zcover14.jpg', 62, '本书详细介绍了电脑打字的相关知识，对于想快速学会电脑打字的用户有非常大的帮助。本书主要内容包括电脑打字的基本知识、键盘的操作和指法训练、输入法的设置、各种拼音输入法的使用方法、五笔输...', 1);
INSERT INTO `product` VALUES (15, '电脑入门基础教程', '熊巧玲，张军', '科学出版社', 333, 'images/product/zcover15.jpg', 38, '本书以多核处理器、windows 7等电脑软硬件的最新发展为线索，全面、深入、系统地讲解了电脑装机、组网、维护与维修方面的知识，重在提高读者的硬件选购能力、电脑组装技能、组网能力和维护维修技能。 ...', 2);
INSERT INTO `product` VALUES (16, '2天精通装机、重装系统与维修', '熊巧玲，张军', '科学出版社', 333, 'images/product/zcover16.jpg', 38, '本书以多核处理器、windows 7等电脑软硬件的最新发展为线索，全面、深入、系统地讲解了电脑装机、组网、维护与维修方面的知识，重在提高读者的硬件选购能力、电脑组装技能、组网能力和维护维修技能。 ...', 2);
INSERT INTO `product` VALUES (17, '新手学电脑打字', '神龙工作室', '人民邮电出版社', 888, 'images/product/zcover17.jpg', 65, '本书是指导初学者快速掌握笔记本电脑使用与维护方法的入门书籍。书中详细地介绍了初学者应该掌握的笔记本电脑的基础知识和操作方法，并对初学者在使用笔记本电脑时经常遇到的问题进行了专家级的指...', NULL);
INSERT INTO `product` VALUES (18, '中老年人学电脑', '九州书源', '清华大学出版社', 444, 'images/product/zcover18.jpg', 65, ' 《中老年人学电脑(附光盘全彩版)》(作者九州书源)是一本帮助中老年朋友学习电脑操作知识的图书，考虑到中老年朋友的各种实际需求，书中的字号、内容都做了特殊安排。《中老...', NULL);
INSERT INTO `product` VALUES (19, '电脑维护组装与维修', '先知文化', '电子工业出版社', 555, 'images/product/zcover19.jpg', 65, '　你来问，我来答。《电脑直通车》在手，学习电脑不再困难！以提问的方式进行讲解，均是电脑用户经常遇到的现实问题，系统地将需要学习的知识点串在一起，既相互关联，又相互独立。 　　配套光盘使...', NULL);
INSERT INTO `product` VALUES (20, '笔记本电脑维护与维修从入门到精通', '王红军', '科学出版社', 54, 'images/product/zcover20.jpg', 87, '《笔记本电脑维护与维修从入门到精通(第2版)》由资深硬件维修培训师精心编写，全书共27章，不仅系统分析讲解了启动盘的制作和使用技巧，还介绍了Windows XP/7操作系统启动与...', NULL);
INSERT INTO `product` VALUES (21, '24天学会电脑入门', '导向工作室', '人民邮电出版社', 654, 'images/product/zcover21.jpg', 45, ' 本书从中老年朋友的学习需求出发，详细而又全面地介绍了使用电脑的相关知识和方法。主要内容包括认识和了解电脑、键盘和鼠标的使用、Windows 7基本操作、电脑打字、管理文件和文件夹、设置系统环境...', NULL);
INSERT INTO `product` VALUES (22, '电脑装机维护与维修', '张淑敏　', '中国纺织出版社', 645, 'images/product/zcover22.jpg', 45, ' 本书主要内容包括针织基础知识，电脑横机的使用、结构分析、测试、拆装与调试、日常保养和常见故障分析等。使学员在具备基本针织知识及挡车技能的感性操作基础上，对电脑横机的内部构造及其调试有较...', NULL);
INSERT INTO `product` VALUES (23, '玩转我的苹果电脑', '王杉', '机械工业出版社', 345, 'images/product/zcover23.jpg', 64, '《玩转我的苹果电脑(mac os x 10.7版)》以循序渐进的方式，全面系统地介绍了mac os x v10.7代号lion的基本使用、初级设置和高级管理等内容。 　　《玩转我的苹果电脑(mac os x 10.7版)》共分为9章...', NULL);
INSERT INTO `product` VALUES (24, '电脑常用工具软件', '电脑红宝书编委会', '上海科学普及出版社', 45654, 'images/product/zcover24.jpg', 64, '本书全面详细地介绍了目前比较流行的软件使用方法。主要内容包括：办公软件、图像软件、压缩软件、多媒体软件、网络软件、翻译软件等，本书内容丰富、图文并茂，介绍过程深入浅出、通俗易懂。 本书...', NULL);
INSERT INTO `product` VALUES (25, '电脑办公自动化实用教程', '李晓东，孙洁，曹丹华', '清华大学出版社', 465, 'images/product/zcover25.jpg', 78, '丛书特色：以就业为导向，以培养实用型人?为目标；注重实践，实现理论与实践的有机结合；提供全面的技术支持和立体化的教学资源。', NULL);
INSERT INTO `product` VALUES (26, '计算机组装·维护与故障排除基础教程', '文杰书院', '清华大学出版社', 658, 'images/product/zcover26.jpg', 89, '本书是“新起点电脑教程”系列丛书的一个分册，其以通俗易懂的语言、精挑细选的实用技巧、翔实生动的操作案例，全面介绍了计算机组装、维护与故障排除的基础知识，主要内容包括认识电脑、选购电脑...', NULL);
INSERT INTO `product` VALUES (27, '新手易学', '华诚科技', '机械工业出版社', 654, 'images/product/zcover27.jpg', 93, '对于中老年朋友来说，随着年纪的不断增大，儿女又多不在身边，买台电脑丰富一下晚年生活是不错的选择。由于当今社会电脑的普及，中老年人学习电脑已不是什么罕事，而且随着...', NULL);
INSERT INTO `product` VALUES (28, '按图索骥学修电脑主板', '金桥电脑工作室　', '人民邮电出版社', 897, 'images/product/zcover28.jpg', 34, '本书分为三篇。按图索“基”篇，重点介绍了电脑维修的理论知识和用到的主要维修工具；按图索“技”篇，采用大量的实物图片和图文对照说明，详细地介绍了电脑维修的基本技能；按图索“疾”篇，通过...', NULL);
INSERT INTO `product` VALUES (29, '电脑软硬件维修从入门到精通', '熊巧玲', '科学出版社', 645, 'images/product/zcover29.jpg', 64, '　软硬件维修经典之作 全面增值上市　　专家教学 国内一线软硬件专家和培训师精心编写，讲解深入，系统，100%解决你学不会的烦恼　　技术新而全 直击主流热点软硬件，涵盖故障流程诊断、动手实践、维...', NULL);
INSERT INTO `product` VALUES (30, 'Office 2007 电脑办公', '前沿文化', '科学出版社', 645, 'images/product/zcover30.jpg', 36, '本书让您简单快捷地学会Office 2007，使您轻松愉快地成为Office办公专家！ 选择最实用、最常用的知识，让您的学习不做无用功；图解式的讲解，让您阅读起来轻松直观，学习效率事半功倍；实用案例贯...', NULL);


##以下为第三天创建表结构
##  创建付款方式表结构

 create   table  PAYWAY(
                   payway_id  int  primary key auto_increment,
                   payStyle   varchar(36)
                   );
## 模拟付款方式数据
insert  into   PAYWAY(payway_id , payStyle) values(1, "现金付款");
insert  into   PAYWAY(payway_id , payStyle) values(2, "网银付款");
insert  into   PAYWAY(payway_id , payStyle) values(3, "电汇付款");

## 创建订单状态表结构
  create   table  OrderStatus(
            orderStatus_id   int  primary key auto_increment,
            name    varchar(36),
            descriptions  varchar(128)
            );
##  模似订单状态数据
insert into  OrderStatus(orderStatus_id,name, descriptions) values
(1,'配货状态','订单正在配货状态三天内将发出');
insert into  OrderStatus(orderStatus_id,name, descriptions) values
(2,'成功状态','订单已经成功发送货物');
insert into  OrderStatus(orderStatus_id,name, descriptions) values
(3,'交易途中','订单正在送货状态');
insert into  OrderStatus(orderStatus_id,name, descriptions) values
(4,'缺货状态','订单涉及货品暂时缺货');             

## 创建订单表结构
 create  table  myOrder(
                order_id  int  primary key auto_increment,
                name      varchar(32),
                cost      double,
                user_id   int ,
                payWay_id int  ,
                orderStatus_id  int  
                );     

## 创建订单明细表
 create   table OrderLine(
                orderLine_id  int primary key auto_increment,
                amount        int ,
                product_id    int  ,
                order_id      int  
                );                                                                                    