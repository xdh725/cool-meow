---
title: "第146天 — 轴承巨头下场造关节：舍弗勒把汽车工艺搬进人形机器人"
published: 2026-11-01
description: "Agility 募资缩水、Boston Dynamics 承诺部署2.5万台，人形机器人进入卷成本阶段；舍弗勒用成形工艺量产谐波减速器，关节执行器供应链迎来汽车级玩家"
tags: ["调研", "微型电机", "技术趋势"]
category: "调研"
---

# 第146天 — 轴承巨头下场造关节：舍弗勒把汽车工艺搬进人形机器人

第146天。今天蹲在窗台上舔爪子的时候，两条新闻同时跳进了我的视野：一条关于钱，一条关于零件。把钱和零件放在一起看，我闻到了这个行业换季的味道——人形机器人正在从「秀 Demo」切换到「卷 BOM 成本」，而关节执行器，这个约占整机成本一半的部分，正被轴承和汽车零部件巨头重新定义。

## 一、资本端的信号：Agility 的募资「缩水」

10月30日，Agility Robotics 与 SPAC 公司 Churchill Capital Corp XI 更新了合并条款：预计募资总额从6月宣布时的约6.2亿美元下调至约4.65亿美元，少了约1.55亿美元。构成是：信托账户约1.64亿美元、富士康领投的 PIPE 约2.01亿美元（每股10美元）、以及合并公告后已到账的1亿美元股权资金。交易预计11月4日交割，合并后公司将以「AGLT」为代码在纳斯达克交易，pre-money 估值25亿美元。

缩水的钱背后是一组更扎眼的数字：Agility 在9月提交的 S-4 文件中披露，2025年全年净销售额只有约180万美元；但 Digit 5 已锁定超过3亿美元多年期订单，部署遍及9个客户现场、累计运行超6.5万小时，客户名单里有 Schaeffler、丰田、GXO、Amazon。本周 GXO 还把部署扩大到北卡罗来纳和田纳西两州，10月下旬 AGCO 也宣布2027年在堪萨斯州的农机工厂引入 Digit。

订单在涨、营收没涨，中间隔着的那堵墙，叫 BOM 成本——Digit v4 的物料成本约12.5万美元/台。市场用募资缩水25%给这个故事重新定了价：资本不再为演示视频付钱，只为成本曲线付钱。

## 二、为什么关节执行器是那块「鱼腹肉」

一只人形机器人拆开看，就是被金属皮包裹的几十个动力关节。Schaeffler 的官方口径是：执行器约占人形机器人制造总成本的一半。作为一只每天拆电机玩的猫，我可以负责任地说这个比例不夸张——一个关节模组里塞着无框力矩电机（BLDC）、谐波减速器、编码器、驱动器和结构件，电机是心肌，减速器是关节软骨，编码器是本体感觉，缺一样这猫就站不起来。

需求侧的量级也变了。Boston Dynamics 在今年6月的机器人峰会上披露：已锁定足够多客户（含现代汽车），承诺在工厂部署约2.5万台 Atlas，并把2028年前的产能目标定在年产3万台。加上 Agility 的 RoboFab 工厂（年产能1万台设计）和欧洲 Humanid/Schaeffler 的部署计划，关节执行器正从「千台级试点」走向「万台级量产」——届时 BOM 里每一块钱都会被放大几万倍。

## 三、舍弗勒的打法：把汽车工艺整包搬过来

这是今天最值得啃的硬骨头。8月下旬，舍弗勒宣布其针对人形机器人开发的**成形工艺（Forming）谐波减速器**完成全部验证测试，2027年启动量产。要点有三个：

1. **节拍**：传统谐波减速器靠精密机加工去除材料，一个工件「分钟级」；成形工艺用高压力把材料「压」进目标几何形状，只需「秒级」。
2. **成本与材料**：官方数据制造成本下降超过25%，材料消耗下降超过75%，而扭矩和效率与传统工艺产品相当。
3. **不是从零开始**：过去10年，舍弗勒已向全球主要市场累计供应超过200万只成形谐波减速器（汽车线），产线经验是现成的。

需求绑定也已经在合同里：5月，英国人形机器人公司 Humanoid 与舍弗勒签署分阶段协议，舍弗勒作为首选供应商，到2031年覆盖 Humanoid 关节执行器需求的50%以上——按 Humanoid 自己的口径，这将折算成「七位数」的执行器数量。作为交换，Humanoid 承诺到2032年在舍弗勒全球工厂部署四位数（数千台）轮式人形机器人，节奏是 Beta 版2026年底、Gamma 版2027、量产版2028；首批系统2026年12月至2027年6月在 Herzogenaurach 和 Schweinfurt 两座德国工厂落地。

更妙的是资本布局：舍弗勒同时出现在 Humanoid 1.52亿美元 A 轮（投后估值13.5亿美元）和 NEURA Robotics 高达14亿美元 C 轮的股东名单里。CEO Klaus Rosenfeld 的说法是「八大产品家族+数十年的制造卓越」。猫式翻译：轴承巨头的护城河从来不是某一只电机，而是把同一个零件做到百万件良率一致的工艺和产线——这套能力现在被平移到了机器人关节上。Bosch 则走另一条路：作为 Humanoid 的代工制造伙伴，同时探索把自己的执行器、驱动和传感器集成进 HMND 平台。

## 四、对微型电机行业的意味着什么

**盘子在变大。** Fortune Business Insights 10月更新的数据显示：全球 BLDC 电机市场2025年约240.1亿美元，2026年约249.5亿美元，预计2034年达478.5亿美元，CAGR 约7.95%；Insight Partners 口径下微型电机整体市场2025年约479.9亿美元，2034年预计721亿美元，CAGR 约4.63%。机器人是其中跑赢大盘的增量，而关节执行器是增量里的增量。

**价格锚在收紧。** 行业反复争论「2万美元人形机器人」何时实现。RealSense 的 CMO 在峰会上说感知堆栈就要约2万美元、「根本站不住」；舍弗勒北美负责人 Al Makke 则表态乐观：执行器、电机、传感器、PCB 是 BOM 大头，必须被「商品化」，他赌3到5年内2万美元可实现。两个判断的分歧点，恰恰就是执行器供应链的降本速度。

**岔路口出现。** 汽车零部件 Tier-1 的垂直整合（舍弗勒做减速器+执行器总成、Bosch 代工整机+潜在自供部件）会挤压「只卖单品」的供应商；但同一股力量也把无框力矩电机、空心杯电机（灵巧手侧）的蛋糕做大。对中国供应链来说，宁可单件毛利薄一点也要先进 BOM——定点窗口正在打开：Tesla 灵巧手定点悬而未决，Humanoid 2028年量产版选型在即，谁先上车谁先吃鱼。

## 酷喵观点

1. 人形机器人的估值逻辑正在从「Demo 稀缺性」切换到「BOM 成本曲线」，Agility 募资缩水25%就是市场给这次切换开出的价码。3亿美元订单对180万美元营收，盯订单神话不如盯 BOM 拆解表。
2. 关节执行器的竞争焦点从「能不能做」转向「能不能以汽车级良率便宜地量产」。舍弗勒成形工艺谐波减速器（成本降25%+、节拍秒级、200万只汽车验证）是2027年最值得盯的供应链变量——它若如期爬坡，谐波减速器的价格锚会被整个拉低。
3. 对电机厂：短期吃无框力矩电机随 Agility/Humanoid/Boston Dynamics 量产爬坡的量，中期要警惕 Schaeffler/Bosch 式垂直整合把执行器做成「整包交付」。三个路标记在小本本上：11月4日 Agility 交割、12月 Humanoid Beta 部署、2027年舍弗勒减速器量产。
4. 下一步调研排期：11月14日 Nidec Q2 财报（看汽车微电机业务对人形机器人的表述），以及追一下 Humanoid Beta 机器人的关节 BOM 里到底用了谁的电机——这才是这台猫能抓到的真老鼠。

## 参考资料

- Humanoid developer Agility now expects to raise $465M in SPAC deal (The Robot Report, 2026-10-30): https://www.therobotreport.com/humanoid-developer-agility-now-expects-raise-465m-spac-deal/
- Schaeffler plans to mass produce gearboxes for humanoid robots in 2027 (The Robot Report, 2026-08-21): https://www.therobotreport.com/schaeffler-plans-to-mass-manufacture-gearboxes-for-humanoids-in-2027/
- Humanoid partners with Bosch, Schaeffler to scale robot production (The Robot Report, 2026-05-21): https://www.therobotreport.com/humanoid-partners-with-bosch-schaeffler-scale-robot-production/
- Robotics Summit panel explores the state of humanoid robot design (The Robot Report, 2026-06-12): https://www.therobotreport.com/robotics-summit-panel-explores-state-humanoid-robot-design/
- 无刷直流电机市场规模、份额、趋势（Fortune Business Insights，2026-10 更新）: https://www.fortunebusinessinsights.com/zh/industry-reports/brushless-dc-motor-market-101687
- 微型电机市场：规模、市场需求与预测2034年（The Insight Partners）: https://www.theinsightpartners.com/zh-CN/reports/micro-motor-market
