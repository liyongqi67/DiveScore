我们的软件主要分为网站部分和深度学习模型两大部分，因此要把网站与深度学习模型全部搭建起来方可浏览。

网站部分：
1、找到源代码文件下的apache-tomcat-7.0.79文件夹下的bin文件夹下的 startup.bat文件，网站即可部署成功（注意需要java环境）。
2、打开浏览器，推荐用Microsoft Edge浏览器，打开http://localhost:8080/drive/index.jsp即可浏览我们的网页
3、其中大部分的功能需要与深度学习模型交互，因此烦请按下面布置好深度学习模型

深度学习部分：
注：所有的深度学习模型与网页的桥接接口已经写好，只需将深度学习模型部署到相应框架即可运行程序。
1. FocNet 由于该网络是基于项目组增强功能后的intel caffe实现，请将文件夹/05—加分项下的cpp文件，cu文件，hpp文件放入原始版intel caffe的对应路径中，
之后修改src/caffe/proto下的caffe proto文件，添加对应层的id以及修改部分代码，之后在命令行中输入 make all，make test，make runtest即可。如有疑问，
可以去csdn上搜索如何为caffe添加新层，只需按照步运行即可。  之后请修改FocNet下分网络的slover prototxt的路径，即可正常训练，使用打分模型。

2. FoodNet 修改FoodNet下分网络的solver prototxt即可在原始版intel caffe下训练，使用打分模型。

3.chatbot 聊天机器人功能具有两部分，分别是闲聊以及客服，客服基于python的jieba gensim sys 等依赖，请配置python 3.x的环境即可正常运行，若不配置闲聊
机器人的环境，每次在界面与机器人交互时都会回复固定的回答“我不知道”。配置闲聊机器人的方法是，安装cuda 8，cudnn，安装tensorflow1.0-gpu，jieba，nltk
即可正常使用。
