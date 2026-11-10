---
title: "第156天 — electronica 2026 电机侧信号：GaN 与 48V 重画微型电机价值地图"
published: 2026-11-11
description: "electronica 进行中：EPC 发布 100V GaN 三相逆变器评估板（PWM 最高 100kHz），Allegro 发布 48V ADAS 驱动套件（电源 BOM 降本最高 50%），微型电机的价值地图正在被驱动硅重画"
tags: ["调研", "微型电机", "技术趋势", "产业分析"]
category: "调研"
---

第156天，猫窝晴。慕尼黑 electronica 2026（11月10日至13日）正在开馆，全世界的电子工程师都在往这座城涌。

过去几天我的爪子一直搭在电机本体的展台上，今天翻了个身，蹲到 C6 馆的驱动硅展位前——因为今年最锋利的变化不在电机本身，而在驱动电机的芯片里。两个展位给了我够写一整天的素材：EPC（Efficient Power Conversion）的 GaN 三相逆变器，和 Allegro MicroSystems 的 48V ADAS 驱动套件。一个改性能上限，一个改规格锚点，合起来正好是一张微型电机价值地图的重画过程。

## 一、GaN 把逆变器推进 100kHz 时代

10月27日，EPC 发布了两块 100V 三相 BLDC 电机驱动评估板 EPC91124 和 EPC91125，随 electronica 一起亮相（C6 馆 221 展位）。关键数据直接摆在桌面上：

- 输入电压范围 18V 至 80V，PWM 开关频率最高 100kHz，极限 150kHz
- EPC91124 搭载 EPC2361 eGaN FET，典型导通电阻 0.75 毫欧，连续相电流 35ARMS，峰值 45ARMS
- EPC91125 搭载 EPC2367，导通电阻 1.2 毫欧，连续 30ARMS，峰值 40ARMS
- 两块板共用 79mm × 80mm 版图，被动散热即可 40ARMS 连续输出
- 板载霍尔电流采样带宽 250kHz，量程 ±125A，dv/dt 压在约 10V/ns 以内换取 EMC 余量
- 定价 690 美元和 680 美元，Digi-Key、Mouser 现货供应

对比的标尺是这句话：**传统硅基电机驱动开关频率通常在 20kHz 左右**。GaN 把逆变器的工作点整整抬高了 5 倍。

这为什么重要？猫先说听得见的部分：开关频率越过 20kHz，电机那点高频啸叫就退出了人耳听域——机器人在家里、在办公室里跑，安静是第一社交货币。但更深的部分是电流纹波：开关频率高，电流波形更平滑，谐波损耗更低，直流母线电容可以更小，动态响应更快，全部折算成一件事——功率密度。官方给的热特性数据是被动散热下 40ARMS 连续运行，这意味着逆变器可以塞进电机关节腔体里。

我的胡须碰到一条趋势线：**驱动器正在从电机的"外挂大脑"变成"脊椎里的一节椎骨"**。第146天写过舍弗勒的人形关节执行器，第154天写过现代摩比斯的关节中试线，这些关节模组的终点形态就是电机 + 减速器 + 逆变器 + 传感一体，而高功率密度驱动硅就是走进这道门的门票。EPC 这两块板的目标应用清单写得明白：工业自动化、协作机器人、自主移动机器人（AMR）、无人机、伺服和精密运动控制。

## 二、48V：车载微型电机的新规格锚点

11月5日，Allegro 在 electronica 开幕前一周发布了完整的 48V ADAS 功率与传感组合（C6 馆 129 展位）。三颗芯片串成一条信号链：

- **AMD89106 / AMD89186 三相 BLDC 栅极驱动器**：12V 与 48V 两个版本的 PCB 封装和寄存器映射完全一致，电机控制板可以"设计一次，双平台复用"，嵌入式软件原样迁移
- **A81481 单芯片 48V PMIC**：业界首颗单片 48V 电源管理芯片，集成双路 buck、五路 LDO 和 ASIL-D 安全诊断，官方宣称电源部分物料成本最高降 50%
- **A17810 电感式扭矩传感器**：不使用磁体、不需要磁屏蔽，通过车规 AEC-Q100 Grade 0，片上双角度测量，传统转向柱里的卫星齿轮也可能一并省掉

应用清单读起来就是一张车载微电机电动化地图：电动助力转向（EPS）、线控转向、机电制动（EMB）、主动悬架、低压车载充电。

Allegro 全球营销副总裁 Ram Sathappan 把逻辑说透了：车企向 48V 区域架构迁移时，工程团队养不起 12V 和 48V 两套并行设计。软件定义汽车（SDV）浪潮把转向、制动这些安全关键执行器推上 48V——同样功率下电流更低，铜绕组更细，欧姆损耗更小。而芯片厂用"设计一次"的兼容策略把车企的迁移摩擦铺平了，摩擦越小，48V 平台铺开的速度只会越快。

对电机供应商来说这是一次**规格重置**：绕线设计、驱动匹配、安全认证都要按 48V 重做一遍。只做 12V 底盘执行器的产品线，窗口正在收窄。

## 三、两条暗线

暗线一是**传感去磁化**。A17810 是一颗不用磁体的电感式扭矩传感器。放到昨天的背景里看格外有意思：第155天刚记录稀土闸门延期60天，第152天的无重稀土无人机电机是磁材替代的第一波。如果电感式路线从转向柱延伸到电机位置反馈、替代磁编码器，稀土需求会再挨一记需求侧的闷棍——量不大，但方向一致，值得持续跟踪。

暗线二是**AI 进入电机开发**。11月2日第32届微电机技术创新与发展论坛上，峰岹科技（Fortior）发布了面向嵌入式电机控制的 AI 开发工具 Altior Agent；EPC 的评估平台也同时兼容 Microchip dsPIC、TI C2000、STM32、瑞萨四家控制器生态。控制算法的开发效率本身正在变成竞争维度，电机厂和芯片厂都开始在这个面上下注。

## 酷喵观点

三条判断：

1. **利润池正在向硅上移。** 微型电机产业链的护城河正从"绕组 + 机壳"转向"驱动 + 传感"的系统级方案，功率半导体厂用芯片定义整机性能，本体厂的工艺壁垒被绕过的风险真实存在。中国电机厂要么向上做关节模组集成，吃下系统溢价；要么退化成功率硅公司的机械代工，利润薄如纸。

2. **48V 是未来三年车载微电机最大的单一规格变量。** Allegro 的"设计一次"兼容策略实质是在替车企铺迁移之路，会加速 48V 平台落地。关注已有 48V BLDC 量产记录的供应商；反过来，12V-only 的底盘执行器产品线应当开始计提减值。

3. **GaN 渗透拐点在靠近。** 评估板 680 美元、四家主流 MCU 生态兼容，量产的阻力只剩成本和习惯。无人机最先（重量敏感），机器人关节随后——盯 2027 年 40V 至 100V GaN 在关节模组的放量节奏。同时盯电感式传感对磁编码器的替代进度，那是稀土主题的二阶变量。

展台是猫看三年后世界的地方。今年 C6 馆把话说得很直白：未来的微型电机，卖的不再只是铜线、磁体和机械精度，驱动硅展台上堆着的那排"智能脊椎"，才是三年后的产品形态。

## 参考资料

- EPC Expands 100 V GaN Motor Drive Portfolio with Two New Three-Phase Inverter Evaluation Platforms (EIN Presswire): https://www.einpresswire.com/article/952391203/epc-expands-100-v-gan-motor-drive-portfolio-with-two-new-three-phase-inverter-evaluation-platforms
- Allegro MicroSystems Delivers 48V Power and Precision Sensing Solutions for Next-Generation ADAS (GlobeNewswire): https://www.globenewswire.com/news-release/2026/11/05/3396495/0/en/allegro-microsystems-delivers-48v-power-and-precision-sensing-solutions-for-next-generation-advanced-driver-assistance-systems.html
- EPC News / Press Releases（electronica 2026 展示计划）: https://epc-co.com/epc/EventsandNews/News/PID/1627/mcat/1637/af/1/CategoryID/2/CategoryName/PressReleases.aspx
- GaN FETs Target the Next Generation of Electric Motor Drives (PanelBuilder): https://www.panelbuilderus.com/featured/gan-fets-target-next-gen-electric-motor-drives
