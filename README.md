# mcfunction-debug-system

#### 介绍
用 mcfunction 实现的基于 Minecraft Java 版原版指令的调试(debug)系统

本软件是在开发数据包中加入的调试系统，在命名空间上独立于您自己的数据包，是一个可在调试时加入，在发布时分离的独立模块。
(说是独立，其实也不是 100% 独立，比如在您输出调试信息的时候仍需将调试变量耦合进您自己的代码中)
本软件 **不是** 一个独立的数据包，是一个用来辅助测试您自己数据包的模块。

适用版本：1.15-1.17
1.13-1.14(需要测试)

数据包介绍：https://minecraft.fandom.com/zh/wiki/%E6%95%B0%E6%8D%AE%E5%8C%85

制作数据包：https://minecraft.fandom.com/zh/wiki/%E6%95%99%E7%A8%8B/%E5%88%B6%E4%BD%9C%E6%95%B0%E6%8D%AE%E5%8C%85

函数：https://minecraft.fandom.com/zh/wiki/%E5%87%BD%E6%95%B0%EF%BC%88Java%E7%89%88%EF%BC%89

#### 安装教程
1.  下载并解压缩；
2.  将本文件放置于 <存档名>/datapacks/<数据包名>/data 文件夹内；
3.  开始使用！

#### 软件架构
tick.mcfunction: 在每一个游戏刻的开始运行。
load.mcfunction: 在每次加载数据包之后运行。
toggle.mcfunction: 在每次切换调试状态时候运行。
on_once.mcfunction: 在调试状态开启时运行一次。
off_once.mcfunction: 在调试状态关闭时运行一次。
on_tick.mcfunction: 在调试状态开启后每刻运行一次。
off_tick.mcfunction: 在调试状态关闭后每刻运行一次。

#### 使用说明
1.  使用命令：/trigger debug 切换调试状态。也可以使用 scoreboard players set debug debug <数字> 直接设置调试变量的值，1为开启，0为关闭；
2.  您可以使用指令 execute if score debug debug matches 1 run say <调试信息> 来输出调试信息；
3.  您可以在调试系统的原函数中调用函数或者输入任意代码来帮助测试您自己的数据包。


#### 注意事项

1.  调试系统的命名空间叫做 debug，调试系统创建了 debug 计分项和 debug 计分板对象，请在自定义名称时避免与之冲突；
2.  直接使用 scoreboard players set debug debug <数字> 会无法执行 on_once 和 off_once 函数，请尽量不要这么做；如果迫不得已这么做，也请尽量填入数字1或0而不是其他值；
3.  本软件 **不是** 一个独立的数据包，我想再次强调这一点。
