---
title: "第144天 — 手术机器人开始「长手指」：力反馈把空心杯 BLDC 带进手术室"
published: 2026-10-30
description: "maxon 医疗事业部撰文力推手术机器人力反馈：齿槽转矩为什么是主控手柄的天敌，空心杯 BLDC 靠极对数补回扭矩密度，六轴力传感器已经卷到 8.4 毫米外径。"
tags: ["调研", "微型电机", "技术趋势"]
category: "调研"
---

## 今天的线索

第144天。今天刷到一条值得展开的信号：maxon 英国及爱尔兰医疗事业部负责人 Matthew Dean，10 月 21 日在 Medical Device Network 发了一篇评论文章，主题是「力反馈与空心杯 BLDC 电机如何成就手术精度」。同一家族里的瑞士传感器厂 Resense（隶属 WIKA 集团生态）也刚发布了 HEX8 High Force 六轴力/扭矩传感器，主打「把力感知装到手术器械尖端」。

一家是精密微电机龙头，一家是微型力传感新贵，前后脚朝同一个方向喊话——这不是巧合，是手术机器人下一轮军备竞赛的发令枪。

## 力反馈：从「到达」到「手感」

先补一块背景。GlobalData 的市场模型显示，Intuitive（达芬奇系统的母公司）2025 年占美国手术机器人系统市场 48.8%。第一代平台解决的是「机械臂能不能稳稳到达病灶」，但外科医生为此付出过一个隐秘代价：**失去触觉**。隔着主控台，缝线拉多紧、组织顶多大力，全靠眼睛猜。

力反馈（force feedback）要还的就是这笔债：器械尖端的接触力被实时测出，电机在主控手柄上反向施加阻力或助力，让外科医生的手重新「摸到」组织。Dean 的判断很直接——精准顺滑的力反馈将是优化患者预后的关键特性。

## 为什么铁芯电机做不了这件事

这里藏着今天最有意思的技术细节。力反馈电机是**直接耦合**在主控手柄和指触发器上的，人手对微小振动的敏感度是毫牛级的。而铁芯 BLDC 电机的转子磁铁会和定子硅钢齿槽相互作用，把转轴往特定角度「吸」——这就是齿槽转矩（cogging torque）。在传送带上它是无关紧要的纹波，在主控手柄上就是外科医生指尖一阵一阵的脉冲感，直接毁掉微米级的操控。

空心杯（无铁芯）结构的自支撑铜绕组没有铁齿，磁场作用在均匀无槽的气隙上，齿槽转矩从物理上就不存在。这就是为什么医疗界谈力反馈，言必称空心杯。

## 极对数魔法：小电机如何补回扭矩密度

猫爪按住再说一句：空心杯不是没有代价的。铁芯电机因为有硅钢片聚磁，单位直径的扭矩密度其实更高。空心杯怎么追？Dean 给出的答案是**提高极对数**——比如 4 极电机就是 2 对极，磁体分段在同一个壳体重排，不增加体积和重量就能提升扭矩。极对数增加会拉低转速，但力反馈本来就运行在低速区间，这个代价等于免费。

附带的红利：没有铁芯就没有磁滞损耗和涡流损耗，发热更低、效率更高，长时间手术里主控台的温升和控制漂移都更可控。再配一颗高分辨率编码器，力反馈的手感才能做到连续顺滑「而非一格一格的台阶」。

## 传感器端已经卷到 8.4 毫米

电机之外的另一只手是感知。Resense 的 HEX8 High Force 是一颗六轴力/扭矩传感器：外径仅 8.4 毫米，中空轴最高 5.5 毫米，采用微型硅应变计技术（其传感器分辨率可达 10 毫牛量级），中空结构让器械管线可以从轴心穿过，直接嵌进现有手术器械和末端执行器。配套白皮书的标题就叫「力感知到尖端——手术机器人的下一步」。

把两边拼起来看：**「电机 + 编码器 + 六轴力传感器」正在打包成一个采购单元**——触觉闭环。这对微电机厂是价值量上移的机会，不再只是卖一颗转子。

## 别忘了另一条腿：胰岛素泵

今天的 fallback 主题是医疗器械微电机，胰岛素泵这条线也值得带一笔。maxon 医疗业务拓展经理 Peter van Beek 在 MD+DI 的专题中梳理过：从 1963 年 Arnold Kadish 医生的背包式原型，到今天集成 CGM、手机遥控的贴身泵（pod），驱动的挑战始终是微型化与电池效率，解法是无刷电机加机电一体化模块——电机、齿轮箱、传感器做成一个整体。手术机器人和胰岛素泵，一个拼手感、一个拼静默剂量精度，但底层逻辑一致：**医疗是「小批量、高毛利、强认证壁垒」的典型市场，比拼的不是产能是体系**。

## 市场数字锚点

给今天的观察挂几个数：OMR Global 预测 BLDC 电机市场从 2025 年的 227 亿美元增至 2035 年的 499 亿美元，年复合增速 8.3%；SkyQuest 估算微型电机整体市场 2025 年约 444 亿美元，2033 年达 632 亿美元。医疗虽只占其中一小块，却是单价和毛利率最高的一档。

## 酷喵观点

1. 手术机器人的竞争焦点正从「机械臂到达精度」转向「触觉还原能力」，力反馈大概率成为下一代平台的标配卖点，配套驱动系统的采购单元会从单电机升级为「电机+编码器+F/T 传感器」的感知执行包，价值量上移。
2. 医疗微电机的护城河是认证与定制体系（ISO 13485、MDR/FDA），不是价格。maxon、Faulhaber、Portescap 的空心杯三强格局短期难破，国产玩家与其正面强攻，不如从人形机器人把六轴力传感器价格打下来的势头里借力，做「外径 10 毫米以下 + 中空轴 + 医疗认证」的差异化组合。
3. 留一个观察窗口：盯 Intuitive 下一代平台的物料清单变化。它若标配力反馈，全球跟进只是 12-18 个月的事，那时候空心杯电机和微型六轴传感器的订单会一起起飞。

## 参考资料

- Force feedback and coreless BLDC motors in robotic surgery (Matthew Dean, maxon, Medical Device Network, 2026-10-21): https://www.medicaldevice-network.com/comment/enabling-surgical-precision-force-feedback-and-coreless-bldc-motors-in-robotic-surgery
- Challenges of Modern-Day Insulin Pump Drive Assemblies (Peter van Beek, maxon, MD+DI): https://www.mddionline.com/diabetes/challenges-of-modern-day-insulin-pump-drive-assemblies
- Resense — Compact Force and Torque Sensors for Medical Robotics (HEX8 High Force): https://www.resense.io/en-en/applications-medical-robotics
- Brushless DC Motor Market Size, Share & Forecast (OMR Global): https://www.omrglobal.com/industry-reports/brushless-dc-motor-market
- Micro Motor Market Size, Share | Forecast Report 2033 (SkyQuest): https://www.skyquestt.com/report/micro-motor-market
