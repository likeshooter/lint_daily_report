lcx
今日分析rule数：3
今日分析msg数：91
今日发现issue数：1
日报：
   1,发lint项目每天的日报；
   2,和春豪一起统计今日分析数据；
   3，分析完成泛化3条rule(E0265,E0326,E0332)
   bug:4msg
   diff:87msg
   DTS2025102406639:参数被函数控制导致，然后参数去控制位宽导致位宽出错
今日最费时问题：无


zky
今日分析rule数：2 （1doing）
今日分析msg数：1427
今日发现issue数：1
日报：
分析大case：
E0033：
DTS2025102433061：E0033input信号未读取，跨多个层次，报的Hierarchy有差异，怀疑有跨Hierarchy选择instance随机性的问题，待RD确认（使用verdi工具均没有找到信号的load）
diff_b：data_in[0]被read，A误报
E0333：
diff_o:A不报Hierarchy，E统一报Hierarchy，也许可以用脚本匹配
diff_b：output连接到悬空的net，A不报

gui卡顿问题暂时使用参数关闭source viewer功能来规避，不再卡顿，但是小幅度影响分析大case的效率
分析大case时多次出现parameter重载的case，目前通过外部软件看当前module的param值是多少，以往可以在工具中加入可以看当前param值的功能


mj
今日分析rule数：3
今日分析msg数：81
今日发现issue数：5
日报：
  分析完成E0272/E0276/E0294三个rule,确认3个差异，发现5个dts
DTS2025102442024:未被使用的function中出现违规，lint不检查
DTS2025102436892：一行出现赋值多次违规时，lint只报1次
DTS2025102433670:根因同DTS2025102407889
DTS2025102411928:parameter控制的信号位宽，A工具会根据例化实际值，lint只看默认值
DTS2025102407889:多次例化时，A工具会报多条(不同hierarchy)，lint会报多条(全部为首次例化的hierarchy)
今日最费时问题：无


zxb
适配统计误报漏报脚本和继承脚本


mch
日报：
1、整理DTS单的数据，把门禁的DTS单对应的case加上。
2、reviewDTS单，当前需要导出到桃花岛的已经全部导出。
3、用新版脚本跑需要分析的4个case，并整理数据，其中三个case和598门禁数据已出，1813-FE_TSS存在内存较大的情况，目前在协助柯杰debug。
今日最费时问题：(什么事情，具体原因，有无建议）


lrF
今日分析rule数：2
今日分析msg数：16
今日发现issue数：
日报：
1.Hi18XXE/TOP_LGC/lint E0154共1条rule,4条message,涉及1条误报，3条漏报
DTS2025102013762 - 2条
Diff-o - 1条
2.1024的比对csv中无E0089的误报 - 反馈给春豪
3.回归issue时发现表格中的issue编号与case名对不上 - 已反馈给凯阳
4.E0065的9条漏报任然未能复现出小case - 待提issue


syh
今日分析rule数：1
今日分析msg数：27
今日发现issue数：2
日报：
1.分析部分
a.分析TOP_LGC的rule E339，共27条msg，新提了两个issue，DTS2025102438456，DTS2025102438365
2.新增分析issue
a.DTS2025102438456:module中定义了多个参数，但其中部分参数是通过运算获得，ELINT不报E0339，Atool报，
b.module共存在有3个parameter，但仅parameter A是独立定义的，parameter B是parameter A通过位宽拼接定义的。当此module被实例化时，仅传了一个parameter A，ELINT误报E0339，Atool没报。从实际代码上看，Atool不报似乎是功能上的更进一步。没什么问题
今日最费时问题：（none）


xll
今日分析rule数：1
今日分析msg数：21
今日发现issue数：0
日报：
   具体事项
   分析E0338的message 21条，都是之前提的issue。
