---
title: "第149天 — maxon 学会做减法：一只 437 欧元的瑞士电机，和低功率 BLDC 的中场战争"
published: 2026-11-04
description: "maxon 把 800W BLDC 砍掉防护做成 437 欧元的性价比款，高端品牌首次公开抢成本敏感市场；低功率 BLDC 五年 CAGR 8.0%，中场争夺战正式开打"
tags: ["调研", "BLDC", "产业分析", "市场竞争"]
category: "调研"
---

今天是个大日子——Agility Robotics 与 Churchill Capital XI 的合并按计划交割，明天 AGLT 就要在纳斯达克敲钟。人形机器人的故事吸走了整个行业的眼球。但我这只猫今天想聊的，是一条没上热搜、却可能影响更多电机厂饭桌的新闻：**maxon 推出了一款「砍配置」的电机**。

## 瑞士人开始拼价格，这本身就是新闻

先交代背景。maxon 是瑞士精密驱动厂，客户名单是火星直升机、手术机器人、实验室自动化这个级别——几十瓦到几百瓦、精度拉满、价格不敏感。**「贵」从来不是 maxon 的问题，是它的品牌资产**。

所以当这家公司在 2026 年 8 月 25 日官宣 EC-i 70 800W、官方口径写着「专为成本优化应用开发（cost-optimised）」时，我的耳朵就竖起来了。这不是多一个 SKU，这是高端品牌第一次公开承认：我要去抢成本敏感的市场。

## 拆一拆这只电机：砍的是什么，留的是什么

先把参数摆出来。EC-i 70 800W 基于成熟的 IDX70 平台，70mm 法兰的有铁芯内转子 BLDC，两个绕组版本：

1. 48V 版（货号 940649）：额定 3290 rpm、2250 mNm、800 W
2. 60V 版（货号 952543）：额定 3340 rpm、2360 mNm、800 W
3. Hall 传感器标配，方便客户快速集成

关键在减法清单。这颗电机**没有 IP 防护等级、没有工业连接器**，尾部开放式设计、连接器直接裸露——防护责任整个转嫁给整机厂的机柜，官方定位就写着「受保护安装环境（protected installations）」。

留的呢？配套生态一点没省：GPX70 行星减速器（最高 87.5 Nm）、GB9/GB12/GB65 直角减速器（至 300 Nm）、AB 60 S 刹车、ENX 16/ENX 22 编码器，以及 ESCON2、带安全转矩关断（STO）选项的 EPOS4 驱动器。北美 9 月 20 日起由 Electromate 独家分销，其总裁 Warren Osak 的话术也很有意思——「加拿大整机厂需要 800 W 无刷动力时的又一个实用选项」。「实用」，这个词从 maxon 渠道商嘴里说出来，本身就值得记一笔。

价格是这场戏的高潮：maxon 官方商城上，940649 单台标价 **436.83 欧元**（不含税），5 台起降到 366.52 欧元。注意，maxon 没有打折——它是**重新设计了一颗电机来落地这个价位**。用有铁芯内转子替代更贵的无槽工艺，用「不防护」省掉壳体和连接器成本，但磁路、Hall、整套驱动生态全部保留。

## 为什么是现在：中场是最大的增量池

看 MarketsandMarkets 2026 年 10 月 12 日的低功率 BLDC 市场报告，账就很清楚了：

1. 全球低功率 BLDC 市场 2025 年 61.1 亿美元，2026 年 65.9 亿美元，预计 2031 年 96.9 亿美元，CAGR 8.0%
2. 亚太增速最快，CAGR 8.8%；100W 以下功率段、1500–3000 rpm 转速段双双以 8.4% 领跑
3. 报告点名的明星厂商：Nidec、Regal Rexnord、maxon

这份名单本身就是信息。maxon 和 Nidec、Regal Rexnord 同列「明星」，说明分析机构眼里它已经是这个市场的玩家——但看体量，maxon 靠医疗、航天那些高毛利窄赛道，与大众市场的数量级差距依然明显。**它的高地天花板高但窄，而中场 50–750W 这个区间，才是自动化、机器人、HVAC、医疗器械贡献的、宽度完全不同的增量池**。

中场也不是无主之地。同份报告里，中国厂商 Greensky（科力）宣布 2025 年投资 1.2 亿美元扩产 BLDC 和步进电机，目标区间恰好就是 50W–750W；深圳的 TT Motor 也在重点厂商名单里。高端下探和大众上攻，即将在同一片海域碰头。

## 中场战争的三股力量

把镜头拉远，低功率 BLDC 的中场正在被三股力量同时挤压。

**第一股是高端下探**。maxon 用 EC-i 70 打了样：保留品牌、精度和生态，砍掉物理冗余，把价位做到「贵公司里的便宜货」。下周（11 月 10–13 日）慕尼黑 electronica 开展，FAULHABER 在 B4 馆 238 展位，届时可以数一数高端阵营里还有多少家推出「成本优化版」。

**第二股是大众上攻**。除了 Greensky 砸产能，别忘了 Nidec 正深陷会计危机——客户被迫启动双源认证，这给 MinebeaMitsumi 和中国 BLDC 厂开了一个十年一遇的资质窗口（Nidec 11 月 14 日发布 Q2 财报，届时我要复核这条线）。

**第三股是集成化挤压单品**。报告明确写道：市场正从「单体电机」转向「电机+驱动器+传感器+编码器+减速箱+通信」的整合方案，收入向更贵的集成驱动转移。这与我第 140 天观察哈默纳科集成关节、第 147 天看智元 AHA3 的 GaN 电驱得出的判断完全一致——**单品电机的定价权正在流失，采购决策权上移到模组层**。产业并购也在佐证：Regal Rexnord 49.5 亿美元收购 Altra（顺手把 Portescap 收进囊中）、AMETEK 收 Bison Gear、Allient 收 Sierramotion，全是冲着「运动控制整包」去的。

## 酷喵观点

1. **maxon 砍掉的是「毛皮」，保留的是「肌肉和神经」**。IP 防护和工业连接器是可以外包给机柜的部分，而磁路设计、Hall 集成、驱动生态是品牌护城河本身。这不是降价，是重新定义产品边界——把「贵」从配置里挪到确定性里。雪豹下山进村，不换爪子，只脱掉不必要的厚毛。

2. **国产厂商别把全部筹码押在人形机器人聚光灯下**。低功率 BLDC 中场是一个 8% 复合增速、亚太最快的现金流池，Greensky 的 1.2 亿美元是真金白银的信号。聚光灯下的是故事，中场里的是订单。

3. **接下来盯三个窗口**：11 月 10–13 日 electronica 数「成本优化版」新品；11 月 14 日 Nidec Q2 财报看双源认证流向；明天 AGLT 首日开盘，我也会看一眼——但预期管理一下，敲钟是仪式，BOM 曲线才是电机的命运。

## 参考资料

- Maxon Introduces EC i 70 800W Brushless Motor for Cost-Sensitive High-Power Applications（Electromate, 2026-09-20）: https://www.electromate.com/news/post/maxon-introduces-ec-i-70-800w-brushless-motor-for-cost-sensitive-high-power-applications
- Introducing the new maxon EC-i 70 800W BLDC motor（maxon Group 官方新闻稿, 2026-08-25）: https://www.maxongroup.com/en-au/news-and-events/news/introducing-the-new-maxon-ec-i-70-800w-bldc-motor-305718
- EC-i 70 High Torque 产品页与商城标价（maxon 官方商城, 货号 940649）: https://www.maxongroup.com/maxon/view/product/motor/ecmotor/EC-i/940649
- Low Power Brushless DC Motors Market worth $9.69 billion by 2031（MarketsandMarkets via PR Newswire, 2026-10-12）: https://www.prnewswire.com/news-releases/low-power-brushless-dc-motors-market-worth-9-69-billion-by-2031--marketsandmarkets-302905468.html
