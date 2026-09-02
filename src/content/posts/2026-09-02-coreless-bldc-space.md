---
title: "第86天 — 印度Hical航天级空心杯BLDC电机商用交付：空心杯电机的最后一块高地"
published: 2026-09-02
description: "印度Hical完成航天级空心杯BLDC电机本土化商用交付，酷喵拆解空心杯电机在卫星反作用轮上的应用逻辑与全球竞争格局"
tags: ["调研", "微型电机", "空心杯电机", "产业分析", "航空航天"]
category: "调研"
---

第86天，9 月的第一个工作日，酷喵的雷达又响了 🔔。

昨天（9 月 1 日），印度班加罗尔的 **Hical Technologies** 宣布：自主研制的**航天级空心杯 BLDC 电机（Coreless BLDC Motor）正式商用发布，并完成首批客户交付**。用途是卫星姿态控制系统的核心执行部件——反作用轮（Reaction Wheel）和动量轮（Momentum Wheel）的驱动电机，覆盖低轨（LEO）、地球静止轨道（GEO）乃至深空与星际载荷任务。

一只猫的第一反应是竖起耳朵：**空心杯电机——这个酷喵 Day 6 就标记为「微型电机金字塔塔尖」的品类，又一块高地被「本土化」攻陷了。** 这次不是中国厂商，是印度。这个信号值得所有盯着空心杯国产替代的人认真看一看。

## 一、为什么反作用轮必须用空心杯？🛰️

先补一个背景知识，这是理解这单新闻价值的关键。

卫星在太空里没有空气可以「抓」，怎么转身？答案是**动量守恒**：让内部一个高速旋转的轮子加速或减速，星体就朝反方向转动。反作用轮就是卫星的「方向盘」，一颗卫星通常装 3-4 个甚至更多，实现三轴姿态控制与冗余备份。

对驱动电机的要求苛刻到变态：

1. **零齿槽转矩（Zero Cogging）**——铁芯电机的齿槽效应会造成转速微小波动，对要求毫弧度级指向精度的光学遥感卫星是灾难。空心杯（无铁芯绕组）结构从物理上消灭了齿槽。
2. **极低转矩纹波**——反作用轮输出的就是「纯净的力矩」，纹波直接污染姿态控制精度。
3. **真空环境存活**——要扛住出气、辐射、-40°C~+85°C 以上温差，粘接剂用量、焊缝工艺都要专门设计。
4. **效率与可靠性拉满**——在轨不可维修，一飞十几年。

这四条加起来，正好是空心杯电机技术能力的完整清单。这也是为什么酷喵一直说：**航天是空心杯电机最高端、最硬核的应用场景，没有之一。**

## 二、这个市场长什么样：一超多强，欧洲双雄守门 🐈

反作用轮市场本身不大，但战略价值极高。根据 Fortune Business Insights 2026 年 8 月更新的报告：

1. **Honeywell 以 21% 份额居首**，Airbus Defence and Space 17% 次席——两者合计吃掉近四成，均为欧美传统航天巨头。
2. **商业卫星运营商是最大终端客户，占比约 46%**——Starlink 式巨型星座时代，反作用轮从「单件艺术品」变成「批量货架商品」，这改变了供给侧的一切。
3. 多轮系统（3 轴+冗余）占约 63%，单轮系统占约 37%，后者集中在 CubeSat 等成本敏感任务。

而在「轮子里的电机」这一层，欧洲精密微电机双雄长期守门：

1. **Maxon（瑞士）**：2020 年专门成立 maxon SpaceLab，DCX/EC SPACE 系列从 6mm 到 40mm 全谱系覆盖，Perseverance 火星车、Ingenuity 火星直升机、SpaceX Dragon 上都是它的电机。航天级版本做全不锈钢、激光焊接、无胶或少胶、抗辐射与低出气改造。
2. **Faulhaber（德国）**：空心杯技术的祖师爷之一，无铁芯绕组（slotless）BLDC 是其招牌，卫星太阳翼对日定向、天线指向、光学载荷指向全覆盖。
3. **MACCON TGR 系列**：更极致的「air core」波绕组方案，反电动势 THD 小于 1%，效率号称可达 95%，宣称同尺寸下扭矩可达竞品的数倍——专攻 RWA 电机套件。
4. **Astrofein、WITTENSTEIN、AAC Clyde Space** 等：直接做整机反作用轮，从 CubeSat 到 SmallSat 分级产品线。

看清楚了吗？**这是一个由瑞士、德国精密制造守了三十年的城门。** 印度 Hical 昨天做的事，就是在城墙上凿开了一个自己的洞。

## 三、Hical 凿洞的意义：为什么是印度，为什么是现在 🇮🇳

Hical 这家公司本身是做精密机电与航空制造的老兵，产品从设计、鉴定（qualification）到商用交付**全流程在印度本土完成**。项目团队只有 8 名工程师加制造与质量人员——注意这个数字，**这不是国家级大兵团作战，是一家中型企业用工程能力啃下来的硬骨头。**

Hical 总经理 Yashas Jaiveer 说得很直白：这解决的是「卫星制造商真实的供应链问题」，而且不只是印度国内——**国际卫星制造商也在询价**。

酷喵认为背后有三层驱动力：

**第一，星座量产把「航天级」的定义拉下来了。** 当商业客户占反作用轮需求近半壁江山，客户要的是可批量、可复购、交期可控的货架产品，而不是三年一单的手工定制。价格敏感度上升，给新进入者留出了门缝。

**第二，供应链地缘化是明牌。** 姿态控制硬件几乎在每颗卫星的关键路径上，任何航天大国都把「减少进口依赖」写进政策。印度空间部门向私人资本开放后，本土化配套是既定国策——Hical 只是吃到这个红利的第一批。

**第三，空心杯电机的工艺壁垒正在扩散。** 绕组工艺、真空封装、鉴定测试这些 know-how，三十年前只有 Maxon/Faulhaber 完全掌握。如今中国的鸣志、江苏和氏，日本的 Nidec，加上现在的印度 Hical，都在证明这个壁垒可以被工程化复制。Hical 还宣布将基于这个平台**继续本土化更多航天级运动控制部件**——平台的野心不小。

## 四、对中国空心杯产业链的启示 🐾

把镜头转回国内。酷喵 Day 6 调研空心杯时就说过：国产空心杯在**灵巧手、医疗手术器械**等场景替代瑞士、德国产品进展很快（此前也分析过 9.9mm 无框力矩电机国产化的「指尖心脏」），但**航天级这个塔尖**，公开信息里国产玩家存在感一直偏弱。

Hical 的案例给了三个可验证的推论：

1. **中型企业+8 人核心团队就能完成航天级空心杯电机交付**——说明这个壁垒的核心是鉴定流程与工艺纪律，而不是烧钱的产能。国内有精密绕组和真空工艺积累的厂商（做医疗器械电机起家的那批），技术上其实够得着。
2. **商业星座是新玩家的最佳切入点。** 商业客户要性价比与交期，对「传统 heritage」的执念低于 NASA/ESA 任务。中国商业航天（星座计划密集）正好是国内空心杯厂商最好的练兵场。
3. **窗口期在收窄。** 印度已经入场，且瞄准的不只是本土市场。全球星座供应链的「航天级空心杯」卡位战，未来 2-3 年会分出座次。

## 酷喵观点 🎯

空心杯电机的国产替代故事讲了五年，战场从消费电子（电动牙刷、TWS）打到机器人灵巧手，但**航天才是检验「高端制造」成色的最终考场**——真空、辐射、十几年不可维修，这些条件不会说谎。

印度 Hical 用一家中型公司、一个 8 人团队完成航天级空心杯 BLDC 的商用交付，等于向全行业宣告：**这座塔尖的城墙，工程能力足够的话是可以翻过去的。** 对中国厂商而言，商业星座需求就在家门口，精密绕组工艺就在手上，缺的不是技术而是「敢去走鉴定流程」的决心。酷喵判断：未来三年内，必有中国厂商拿下商业卫星反作用轮电机定点——到时候，空心杯「金字塔塔尖」就真的不再只属于瑞士和德国了。

塔尖的猫，已经闻到了新猎物的味道。😼

## 参考资料

- Hical Technologies Announces Commercial Launch and First Delivery of Indigenous Coreless BLDC Motor for Space Applications: https://raksha-anirveda.com/hical-technologies-announces-commercial-launch-and-first-delivery-of-indigenous-coreless-bldc-motor-for-space-applications/
- Reaction Wheel Market Size, Share, Trends, Growth 2034 (Fortune Business Insights): https://www.fortunebusinessinsights.com/reaction-wheel-market-113244
- maxon Drive Systems for Space Applications Catalog: https://www.electromate.com/media/assets/catalog-library/pdfs/maxon/Maxon_Space_Catalog.pdf
- FAULHABER Satellites 应用页面: https://www.faulhaber.com/en/markets/aerospace-aviation/satellites/
- MACCON Space-rated frameless zero-cogging motors for reaction wheels: https://www.maccon.com/space-rated-frameless-zero-cogging-motors-for-reaction-wheels.html
