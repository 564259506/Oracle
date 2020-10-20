# 一、SVN

**SVN文档在有道云笔记上写过，所以这里我们直接采用有道云笔记上的文档来学习即可。**



文档：SVN的成神之路.note
链接：http://note.youdao.com/noteshare?id=a9085956986d05b88ff9d326c614d300&sub=BF712C1C700742F7AD899625CE16FD6C





# 二、Git

### 2.1、Git是什么

![Git 教程](https://www.runoob.com/wp-content/uploads/2015/02/f7246b600c338744a9591cd7530fd9f9d62aa0f8.png) 

Git 是一个开源的分布式版本控制系统，用于敏捷高效地处理任何或小或大的项目。

Git 是 [Linus Torvalds](https://baike.baidu.com/item/%E6%9E%97%E7%BA%B3%E6%96%AF%C2%B7%E6%9C%AC%E7%BA%B3%E7%AC%AC%E5%85%8B%E7%89%B9%C2%B7%E6%89%98%E7%93%A6%E5%85%B9/1034429?fromtitle=Linus%20Torvalds&fromid=9336769&fr=aladdin) 为了帮助管理 Linux 内核开发而开发的一个开放源码的版本控制软件。

Git 与常用的版本控制工具 CVS, Subversion 等不同，它采用了分布式版本库的方式，不必服务器端软件支持。



### 2.2、Git 与 SVN 区别

Git 不仅仅是个版本控制系统，它也是个内容管理系统(CMS)，工作管理系统等。

如果你是一个具有使用 SVN 背景的人，你需要做一定的思想转换，来适应 Git 提供的一些概念和特征。

Git 与 SVN 区别点：

- **1、Git 是分布式的，SVN 不是**：这是 Git 和其它非分布式的版本控制系统，例如 SVN，CVS 等，最核心的区别。
- **2、Git 把内容按元数据方式存储，而 SVN 是按文件：**所有的资源控制系统都是把文件的元信息隐藏在一个类似 .svn、.cvs 等的文件夹里。
- **3、Git 分支和 SVN 的分支不同：**分支在 SVN 中一点都不特别，其实它就是版本库中的另外一个目录。
- **4、Git 没有一个全局的版本号，而 SVN 有：**目前为止这是跟 SVN 相比 Git 缺少的最大的一个特征。
- **5、Git 的内容完整性要优于 SVN：**Git 的内容存储使用的是 SHA-1 哈希算法。这能确保代码内容的完整性，确保在遇到磁盘故障和网络问题时降低对版本库的破坏。![img](https://www.runoob.com/wp-content/uploads/2015/02/0D32F290-80B0-4EA4-9836-CA58E22569B3.jpg) 

### 2.3、Git 安装配置

在使用Git前我们需要先安装 Git。Git 目前支持 Linux/Unix、Solaris、Mac和 Windows 平台上运行。

Git 各平台安装包下载地址为：<http://git-scm.com/downloads>

#### Windows 平台上安装

在 Windows 平台上安装 Git 同样轻松，有个叫做 msysGit 的项目提供了安装包，可以到 GitHub 的页面上下载 exe 安装文件并运行：

安装包下载地址：<https://gitforwindows.org/>![Windows 上安装 Git](https://www.runoob.com/wp-content/uploads/2015/02/20140127131250906) 

完成安装之后，就可以使用命令行的 git 工具（已经自带了 ssh 客户端）了，另外还有一个图形界面的 Git 项目管理工具。

在开始菜单里找到"Git"->"Git Bash"，会弹出 Git 命令窗口，你可以在该窗口进行 Git 操作。

#### [Github 简明教程](https://www.runoob.com/w3cnote/git-guide.html)

#### [Git五分钟教程](https://www.runoob.com/w3cnote/git-five-minutes-tutorial.html)



### 2.4、Eclipse中使用git

这里以后大家用到了再回头查看文档学习，使用上跟IDEA算是大同小异

<https://www.cnblogs.com/foxclever/p/9784034.html> 

<https://www.jianshu.com/p/acb00e4c7301> 



### 2.5、IDEA中使用Git

博客就不整过来了：<https://blog.csdn.net/qq_40563761/article/details/91347443> 

开干





# 三、Nginx

### 3.1、Nginx是什么

​	Nginx是一款轻量级的Web服务器/反向代理服务器及电子邮件（IMAP/POP3）代理服务器，并在一个BSD-like协议下发行。由俄罗斯的程序设计师IgorSysoev所开发，供俄国大型的入口网站及[搜索引擎](http://lib.csdn.net/base/searchengine)Rambler（俄文：Рамблер）使用。**其特点是占有内存少，并发能力强**，事实上nginx的并发能力确实在同类型的网页服务器中表现较好。

 

​	Nginx ("engine x") 是一个高性能的 HTTP 和 反向代理 服务器，也是一个IMAP/POP3/SMTP 代理服务器。 Nginx 是由 Igor Sysoev 为俄罗斯访问量第二的Rambler.ru 站点开发的，第一个公开版本 0.1.0 发布于 2004 年 10 月 4 日。其将源代码以类 BSD 许可证的形式发布，因它的稳定性、丰富的功能集、示例配置文件和低系统资源的消耗而闻名。

 

​	它已经在众多流量很大的俄罗斯网站上使用了很长时间，这些网站包括 Yandex、Mail.Ru、 VKontakte，以及 Rambler。据 Netcraft 统计，在 2012 年 8 月份，世界上最繁忙的网站中有 11.48%使用 Nginx 作为其服务器或者代理服务器。目前互联网主流公司360、百度、新浪、腾讯、阿里等，目前中国互联网企业 70%以上公司都在使用 nginx 作为自己的 web 服务器。Nginx 特点是占有内存少，并发能力强，事实上 nginx 的并发能力确实在同类型的网页服务器中表现较好。Nginx 由内核和模块组成，其中，内核的设计非常微小和简洁，完成的工作也非常简单，仅仅通过配置文件将客户端请求映射到一个 location block（location 是 Nginx配置中的一个指令，用于 URL 匹配），而在这个 location 中所配置的每个指令将会启动不同的模块去完成相应的工作。



Nginx 相对于 [Apache](https://blog.csdn.net/qq_32613479/article/details/78530234) 优点：
	1) 高并发响应性能非常好，官方 Nginx 处理静态文件并发 5w/s
	2) 反向代理性能非常强。（可用于负载均衡）
	3) 内存和 cpu 占用率低。（为 Apache 的 1/5-1/10）
	4) 对后端服务有健康检查功能。
	5) **支持 PHP cgi 方式和 fastcgi 方式**。
	6) 配置代码简洁且容易上手。

### 3.2、Nginx 工作原理 

​	Nginx 由内核和模块组成，其中，内核的设计非常微小和简洁，完成的工作也非常简单，仅仅通过查找配置文件将客户端请求映射到一个 location block（location 是 Nginx配置中的一个指令，用于 URL 匹配），而在这个 location 中所配置的每个指令将会启动不同的模块去完成相应的工作。
Nginx 的模块从结构上分为：**核心模块、基础模块和第三方模块**：

​	**核心模块**：HTTP 模块、 EVENT 模块和 MAIL 模块
	**基础模块**： HTTP Access 模块、HTTP FastCGI 模块、HTTP Proxy 模块和 HTTP Rewrite模块，
	**第三方模块**：HTTP Upstream Request Hash 模块、 Notice 模块和 HTTP Access Key模块。

​	

​	Nginx 的高并发得益于其**采用了 [epoll 模型](https://www.cnblogs.com/yangyuanhu/p/11152914.html)**，与传统的服务器程序架构不同，epoll 是linux 内核 2.6 以后才出现的。 **Nginx 采用 epoll 模型，异步非阻塞，而 Apache 采用的是[select 模型](https://my.oschina.net/u/4000302/blog/3044454)**

**Select 特点**：select 选择句柄的时候，是遍历所有句柄，也就是说句柄有事件响应时，
select 需要遍历所有句柄才能获取到哪些句柄有事件通知，因此效率是非常低。

**epoll 的特点：**epoll 对于句柄事件的选择不是遍历的，是事件响应的，就是句柄上事
件来就马上选择出来，不需要遍历整个句柄链表，因此效率非常高



### 3.3、Nginx下载安装

#### linux版

```powershell
1. Nginx下载：nginx-1.13.0.tar.gz，下载到：/usr/soft/  图1
wget http://nginx.org/download/nginx-1.13.0.tar.gz

2. Nginx解压安装：图2
tar -zxvf nginx-1.13.0.tar.gz -C ./

3. Nginx编译,进入到nginx-1.13.0文件夹下 图3
./configure
./configure --prefix=/usr/soft/nginx

4. 缺少编译环境，安装编译源码所需要的工具和库
执行命令：yum install gcc gcc-c++ ncurses-devel perl   成功后图4
再次编译：./configure --prefix=/usr/local/nginx        继续报错，图5

缺少HTTP rewrite module模块，禁用或者安装所需要的模块。我们选择安装模块
执行命令：yum install pcre pcre-devel	图6

再次编译：./configure --prefix=/usr/local/nginx  继续报错，图7

缺少HTTP zlib类库，我们选择安装模块：
执行命令：yum install zlib gzip zlib-devel 图8

再次编译：./configure --prefix=/usr/local/nginx 图9，成功了

5. 安装Nginx（在nginx-1.13.0文件夹下）：（前面3-4步只是编译而已，这个有点类似redis）
安装命令：make & make install

6. 查看安装的目录位子
命令：whereis nginx

7. 进入nginx所在目录
命令：cd /usr/local/nginx

8. 启动nginx，进入nginx的sbin目录
命令：./nginx

9. 查看进行 图10
命令：ps -ef|grep nginx  

10. 打开浏览器测试 这是我的测试地址，然后nginx默认端口是80，所以ip地址后面没有带上端口号
http://192.168.25.141/

11. 这里可能会发生访问不到的问题，因为端口未开放
service iptables stop -- 临时关闭端口
service iptables status --检查防火墙状态

12. 常用命令
启动
./nginx 

检查 nginx.conf配置文件
./nginx -t

重启
./nginx -s reload

停止
./nginx -s stop
```

![1598345067897](C:\Users\ADMINI~1\AppData\Local\Temp\1598345067897.png)

![1598345097991](C:\Users\ADMINI~1\AppData\Local\Temp\1598345097991.png)

![1598345321642](C:\Users\ADMINI~1\AppData\Local\Temp\1598345321642.png)

![1598345525503](C:\Users\ADMINI~1\AppData\Local\Temp\1598345525503.png)

![1598345589848](C:\Users\ADMINI~1\AppData\Local\Temp\1598345589848.png)

![1598345676636](C:\Users\ADMINI~1\AppData\Local\Temp\1598345676636.png)

![1598345756653](C:\Users\ADMINI~1\AppData\Local\Temp\1598345756653.png)

![1598346074839](C:\Users\ADMINI~1\AppData\Local\Temp\1598346074839.png)

![1598345806211](C:\Users\ADMINI~1\AppData\Local\Temp\1598345898746.png)

![1598346661493](C:\Users\ADMINI~1\AppData\Local\Temp\1598346661493.png)

Nginx信号控制 

| **TERM, INT** | **快速停止（杀死进程）**                 |
| ------------- | ---------------------------------------- |
| **QUIT**      | **优雅的关闭进程，即等请求结束后再关闭** |
| **HUP**       | **改变配置文件，平滑的重读配置文件**     |
| **USR1**      | **重读日志，在日志按月/日分割时有用**    |
| **USR2**      | **平滑的升级**                           |
| **WINCH**     | **优雅关闭旧的进程（配合USR2进行升级）** |

![1598348202797](C:\Users\ADMINI~1\AppData\Local\Temp\1598348202797.png)



---------------------------------



#### windows版

参考文档：<https://blog.csdn.net/m0_37355951/article/details/78282124> 

下载：官方地址：<http://nginx.org/>

![img](https://img-blog.csdn.net/20171019144717530?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbTBfMzczNTU5NTE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast) 

![img](https://img-blog.csdn.net/20171019150941346?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbTBfMzczNTU5NTE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast) 

这里介绍几个常用命令

```powershell
启动nginx服务器
start nginx

查询window任务是否包含nginx服务（imagename:映射服务名， eq就是等于意思）
tasklist /fi "imagename eq nginx.exe"

然后在执行退出指令 
nginx -s quit
-s 有 stop(暂停)  quit(退出)， reopen(重新打开)， reload(重新加载) 
```





# 四、Oracle

参考文档：<https://blog.csdn.net/qs17809259715/article/details/88782096> 

在oracle 11g的几个版本中，企业版安装的选项比较全面，所以我们选择企业版安装

### **4.1、官方的下载地址：**

<https://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html>

- 勾选Accept License Agreement
  ![在这里插入图片描述](https://img-blog.csdnimg.cn/2019032420325386.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FzMTc4MDkyNTk3MTU=,size_16,color_FFFFFF,t_70)
- 选择适合自己电脑版本的oracle安装包，然后下载。

![在这里插入图片描述](https://img-blog.csdnimg.cn/2019032420334299.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FzMTc4MDkyNTk3MTU=,size_16,color_FFFFFF,t_70)

### **4.2、具体的安装步骤如下：**

**1.**下载完成后，解压两个压缩包到同一目录（默认为“database”）。
**2.**单击解压目录下的setup.exe，双击开始安装oracle（注意：设置文件路径时尽量不要使用不规则字符、空格、汉字等）。执行安装程序，会出现一个命令行窗口。
**3.**等待片刻后，会出现如下的界面，不用理会，**点击是**，然后直接安装就可以。
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190324203953876.png)
**4.**然后，接着就回出现如下界面，可以填写自己的邮件地址，只是会收到一些邮件。根据自己的情况确定是否希望通过My Oracle Support，(本人安装的时候，取消了这个对勾),然后点击进入下一步。
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190324210741868.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FzMTc4MDkyNTk3MTU=,size_16,color_FFFFFF,t_70)
**5.**在“选择安装选项”界面选择“创建和配置数据库”选项，然后点击下一步，如图所示。
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190324210725505.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FzMTc4MDkyNTk3MTU=,size_16,color_FFFFFF,t_70)
**6.**在如图所示的“系统类”界面下选择“桌面类”，然后单击“下一步”安装。
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190324210706632.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FzMTc4MDkyNTk3MTU=,size_16,color_FFFFFF,t_70)
**7.**进入“典型安装配置”界面，根据个人需要更改各项路径（建议采用默认项）；随后输入管理口令并确认，需要注意的事，输入口令要求是至少包含大小写字母和数字的复杂密码形式，但是可以根据个人情况，输入自己好记的口令，此时会弹出一个提示框，不用管，直接点击是，然后进行下一步。

![在这里插入图片描述](https://img-blog.csdnimg.cn/20190324210642986.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FzMTc4MDkyNTk3MTU=,size_16,color_FFFFFF,t_70)
**8.**进入“先决条件检查”界面，这一步安装程序会检查计算机的软硬件系统是否满足安装此Oracle版本的最低要求。直接下一步即可(图略)。
**9.**在“概要”界面中，显示安装信息的概要情况，然后点击“完成”按钮，等待程序的安装，如图所示。
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190324205826133.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FzMTc4MDkyNTk3MTU=,size_16,color_FFFFFF,t_70)
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190324205755679.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FzMTc4MDkyNTk3MTU=,size_16,color_FFFFFF,t_70)
**10**.程序文件安装完成后会进入自动配置界面，如图所示。
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190324210022750.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FzMTc4MDkyNTk3MTU=,size_16,color_FFFFFF,t_70)
**11.**配置完成后会出现如图所示的信息提示，如需要此时进行账户解锁及口令管理，则应单击“口令管理”按钮，根据个人需要选择是否解锁某一账户，并设置口令，最后单击“确定”按钮。
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190324211115435.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FzMTc4MDkyNTk3MTU=,size_16,color_FFFFFF,t_70)
12.等待Oracle的继续配置，完成后将显示相应的完成信息，至此数据库安装过程完成。



### 4.3、安装PL/SQL

参考：<https://blog.csdn.net/li66934791/article/details/83856225> 

参考：<https://www.cnblogs.com/gaozejie/p/9741186.html> 

下载地址：<https://www.allroundautomations.com/registered-plsqldev/>  包括PLSQL和汉化包





### 4.4、通过PL/SQL连接Oracle数据库

参考：<https://blog.csdn.net/zhige_j/article/details/80832654> 

参考：<https://www.cnblogs.com/luanyulin/p/10762165.html> 

参考：<https://www.cnblogs.com/mingforyou/p/7110459.html> 