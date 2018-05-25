# EOSIO-主网启动演练
> 预演流程还有许多需要改进的地方，期待大家一起完善。

> 由于涉及`eosio`账号分权技术方案，官方还未给出，快照后投票无法进行，故`BIOS`节点只设置`eosio`为APB,并且不会进行快照的验证，只对系统进行初始化工作。

## 步骤说明

### 所有BP准备工作
1. 公布自己加入网络的BP信息(即：`0000_CONFIG.conf`文件中的`INIT_ACCOUNT`，`INIT_PUB_KEY`，`URL`)
2. 安装`EOSIO`
3. 配置环境(config.ini,genesis.json)
4. 运行节点，等待`BIOS`启动
5. 注册`BP`(BP/1)
6. 抵押`TOKEN`(BP/2)
7. 投票(BP/3)


* 注意：`p2p-peer-address`填写你信任的几个节点(建议添加1/3+1BP)

* 关于配置环境，由于`BIOS_Node`不会长久运行，在配置文件中加入其`p2p-peer-address`会造成链接该节点失败，故EOSTEA和EOSBeijing讨论的方案是：先由`BIOS-Node`团队再开一台BP节点链接`BIOS`节点并与其他节点相互链接，等启动后，该团队的`BP`节点再去除`BIOS`节点。

### BIOS
1. 启动`BIOS`节点
2. 发布`BIOS`合约，设置ABP(01)
3. 创建系统初始账户(02)
4. 发布`TOKEN`及`MSIG`合约(03)
5. 创建并发布系统代币(04)
6. 发布`SYSTEM`合约,设置`eosio.msig`为特殊权限账户(05)
7. 创建BP账号，转账投票代币。(06)

## 脚本使用说明
### BP
所有操作都在`BP`目录下：
1. 创建钱包`cleos wallet create`.将钱包密码写入`００_CONFIG.conf`中。
2. 添加BP信息到`00_CONFIG.conf`，抵押的`TOKEN`数量，修改`cleos.sh`路径。~~安装`jq`~~
3. 等待创建账号
4. 按顺序执行命令

### BIOS
所有操作都在`BIOS`目录下：
1. 创建钱包`cleos wallet create`.将钱包密码写入`００_CONFIG.conf`中。将`eosio`账号公匙和私匙，写入`EOSIO_PRODUCER_PUB_KEY`和`EOSIO_PRODUCER_PRIV_KEY`,写入需要创建的BP的信息。
2. 设置`00_CONFIG.conf`,`cleos.sh`路径。
3. 按顺序执行脚本
4. 创建BP账户，转账投票金额
