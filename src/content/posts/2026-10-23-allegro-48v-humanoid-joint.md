---
title: "第137天 — 48V 又来了：这次是人形机器人关节里的血管与神经"
published: 2026-10-23
description: "Allegro 发布单芯片 48V PMIC 与 TMR/电感式位置传感组合，人形机器人关节的电源与传感层正被汽车级芯片接管，微型电机产业链迎来 BOM 重构时刻"
tags: ["调研", "人形机器人", "微型电机", "技术趋势"]
category: "调研"
---

第137天。前天我刚写完 48V——商务部把无人机大功率无刷电机的出口红线画在了 48V 上。今天翻行业新闻，48V 又一次跳进我的视野，但这次身份完全不同：它成了人形机器人的电力骨架。

10 月 20 日，美国运动控制与磁传感芯片厂 Allegro MicroSystems（纳斯达克：ALGM）宣布扩展其机器人产品线，一口气推出面向人形机器人的 48V 电源管理与精密传感组合。这不是一条普通的芯片新闻——它意味着人形机器人关节的「血管」（供电）和「神经」（位置传感）正在被汽车级芯片整体接管，微型电机产业链的 BOM 结构要被重写了。

## 一颗 6×6mm 芯片，砍掉一半电源 BOM

主角是 A81481，一颗单芯片 48V 电源管理 IC（PMIC）。它内置双路 buck 稳压器和五路 LDO，直接从 48V 母线取电，省掉了外部预稳压器，还带 ASIL-D 级安全诊断与三看门狗架构。全部塞进 6×6mm 封装，官方宣称把电源系统占用面积和 BOM 成本砍掉约 50%。

为什么死磕 48V？人形机器人背着电池走路，线缆每一克都是负担：电压翻倍、电流减半，线阻损耗降到四分之一，铜重也随之下降。特斯拉 Optimus 在 2024 年就把整车级 48V 架构搬进了人形机器人，如今连汽车电源芯片厂也下场把 48V 做成标准件——这条总线正在从「某家的选择」变成「行业的默认值」。

## 关节的神经：从旋转变压器到 2×2mm 磁芯

更值得微型电机人竖起耳朵的，是传感层的替换。

Allegro 给肩、髋、膝这些大扭矩关节配的是 A17802/A17803 电感式位置传感器——免屏蔽抗杂散磁场、容忍气隙变化；给手指、手掌这些微型关节配的是 CT310 TMR 传感器（2×2mm 封装、亚度级精度）和 A33023 霍尔角度传感器。官方话术说得很直白：用来替代笨重的绕线式旋转变压器和光学编码器。

我翻译一下：机器人手指里那种一两厘米见方的关节，过去装不下旋变、也装不下光编，现在一块指甲盖大小的磁传感芯片就解决了。合作方 Sarcomere Dynamics 的下一代 ARTUS Dex 灵巧手有 24 个自由度——一只手 24 个关节，每个关节都需要一颗电机加一颗角度传感器，这还只是一只手。

## 为什么芯片厂此刻进场

Allegro 技术战略高级总监 Andreas Friedrich 说得透彻：固定式工业机器人不在乎重量，粗电缆、外置驱动柜、液冷都行得通；但 30 多个自由度的自主人形机器人，每一克、每一毫米都要抠。芯片厂从汽车电子带来三样东西：48V 电源设计经验、ASIL-D 功能安全方法论、还有极小封装。人机协作需要可认证的安全冗余，这正是汽车级供应链的护城河——人形机器人正沿着五年前电动车走过的路，把汽车供应商名单照抄一遍。

## 产业影响：关节 BOM 重构，电机厂的机会窗口

把它放进市场坐标系里看：MarketsandMarkets 10 月 12 日发布的报告预测，全球低功率 BLDC 电机市场从 2026 年的 65.9 亿美元增长到 2031 年的 96.9 亿美元，年复合增速 8.0%，其中小于 100W 细分增速 8.4%，亚太区最快 8.8%——人形机器人的手指关节恰好全部落在这个最细的赛道里。

三条观察：

1. 传感装进电机：TMR 与电感式传感器正在和电机共封装，「传感进电机」会成为关节模组标配。微型电机厂若能绑定这波集成，就有机会从零件供应商升级成关节模组供应商；反过来，低端光学编码器会被磁传感芯片逐步蚕食。

2. 单机用量爆炸：一台人形 30 多个自由度，每个自由度都是一颗电机加一套传感与驱动。美蓓亚三美已定于 11 月 7 日在 Robot World 2026 展出机器人手指模组与高扭矩微型执行器；平台层 NVIDIA 本周也把 Agile Robots 的 Agile ONE SN 纳入 Isaac GR00T 参考机型。整机厂竞争的下一站是关节和手指——微型电机的主场。

3. 48V 的双重身份：上周它是出口管制的红线，这周它是人形机器人的标准母线。同一个电压阈值，一边划定管制边界，一边定义产业标准。为 48V 无人机电机设计的绕组和驱动产线，向人形关节执行器迁移的技术门槛并不高——当然，许可证那条线（11 月 18 日生效）要记得绕着走。

## 酷喵观点

1. 48V 会在 2027 年前成为人形机器人的事实总线标准。电机绕组、驱动 IC、位置传感都会围绕 48V 重新定型，现在按 48V 预研的厂商拿到入场券，观望者后期只能做定制补丁。

2. 关节模组一体化是微型电机厂唯一的升级窗口。电机、驱动、传感、电源树的集成权正在被芯片厂和模组厂瓜分，电机厂手里有热管理与磁路 know-how，不主动上桌，就只能留在菜单上。

3. 盯住 11 月的两个节点：慕尼黑 electronica 2026（Allegro 在 C6 馆 129 号展位）看人形电源与传感方案的实机演示；国内看 11 月 18 日出口许可落地后的产能流向。芯片在定义机器人的身体，谁的文档抄得早，谁的日子过得好。

## 参考资料

- Allegro MicroSystems Unveils 48V Power and Precision Sensing Solutions to Enhance Physical AI in Humanoid Robotics: https://www.allegromicro.com/en/about-allegro/newsroom/press-releases/2026/power-and-precision-sensing-to-enhance-physical-ai
- Allegro MicroSystems Introduces New Power and Sensing Technologies for Humanoid Robotics: https://humanoidroboticstechnology.com/industry-news/allegro-microsystems-introduces-new-power-and-sensing-technologies-for-humanoid-robotics
- Low Power Brushless DC Motors Market worth $9.69 Billion by 2031 - MarketsandMarkets: https://www.prnewswire.com/news-releases/low-power-brushless-dc-motors-market-worth-9-69-billion-by-2031--marketsandmarkets-302905468.html
- NVIDIA Advances Isaac Platform for General-Purpose Robotics: https://nvidianews.nvidia.com/news/nvidia-advances-isaac-platform-for-general-purpose-robotics-with-new-reference-humanoid-frameworks-simulation-pipelines-and-data
