# DriveScore 基于深度学习的跳水打分系统
第十届英特尔杯全国大学生软件创新大赛二等奖.(co-work with: 杜存宵)
## 1.简介
针对竞技赛事中，人工裁判两方面的不足。一方面，人工裁判员不可避免的会出现误判的情况；另一方面，一名富有经验的人工裁判也需要大量的时间，财力去培养。我们从0到1构建带有标签的跳水数据集，借助深度学习在视觉领域的优势，打造了一款基于深度学习和Intel Caffe的跳水打分系统。主要功能有以下三个：<br/>
一．智能打分：使用FocNet(深度学习模型)对用户上传的跳水视频给出分数<br/>
二．躯干识别：使用PoseNet(深度学习模型)识别上传视频中的关键点，以便清晰的展示跳水过程，并通过特征可视化来展示打分的可靠性<br/>
三．动作分析：使用ActionNet(深度学习模型)对上传视频进行动作分析，给出整个过程中精彩及不足的地方，以帮助运动员改正<br/>
Nowadays, a large number of human judges participate in sports games such as Diving and Gymnastics. However, because of the human’s subjectivity caused by intentions or instability, the grading may not correspond to players’ performance in one single event. This will unfortunately harm not only players but also countries and nations.
## 2.文件结构

SmartMddicalKit<br/>
├─ Code<br/>
│    ├─ 安卓端代码<br/>
│    ├─ 服务器代码<br/>
│    └─ 树莓派代码<br/>
├─ Demo Videos<br/>
│    ├─ SmartMedicineKit.mp4         #项目介绍视频 <br/>    
│    └─ screen recording.mp4         #使用录频<br/>
├─ Documents<br/>
│    ├─ 可行性分析报告.doc<br/>
│    ├─ 工作分配与进度.docx<br/>
│    ├─ 技术分析报告.docx<br/>
│    ├─ 架构.png<br/>
│    ├─ 特色分析报告.docx<br/>
│    ├─ 用户使用说明书.docx<br/>
│    ├─ 详细设计说明书.doc<br/>
│    └─ 项目设计报告.doc<br/>
└─ README.md<br/>
