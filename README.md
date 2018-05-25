# EOSIO-主网启动演练
> 预演流程还有许多需要改进的地方，期待大家一起完善。

> 由于涉及`eosio`账号分权技术方案，官方还未给出，快照后投票无法进行，故`BIOS`节点只设置`eosio`为APB,并且不会进行快照的验证，只对系统进行初始化工作。

## 步骤说明
### 所有BP准备工作
1. 公布自己加入网络的BP信息(即：`0000_CONFIG.conf`文件中的`INIT_ACCOUNT`，`INIT_PUB_KEY`，`URL`)
2. 安装`EOSIO`
3. 配置环境(config.ini,genesis.json)
4. 运行节点，等待`BIOS`启动
5. 注册BP
6. 抵押余额
7. 投票
8. 开始生产区块


* 注意：`p2p-peer-address`填写你信任的几个节点(建议添加1/3+1BP)

* 关于配置环境，由于`BIOS_Node`不会长久运行，在配置文件中加入其`p2p-peer-address`会造成链接该节点失败，故EOSTEA和EOSBeijing讨论的方案是：先由`BIOS-Node`团队再开一台BP节点链接`BIOS`节点并与其他节点相互链接，等启动后，该团队的`BP`节点再去除`BIOS`节点。

### BIOS-Node
1. 启动`BIOS`节点
2. 发布`BIOS`合约，设置ABP
3. 创建系统初始账户
4. 发布`TOKEN`及`MSIG`合约
5. 创建并发布系统代币
6. 发布`SYSTEM`合约,设置`eosio.msig`为特殊权限账户
7. 创建BP账号，转账投票代币。

## 使用说明
### BP
1. 设置`00_CONFIG.conf`，抵押的`TOKEN`数量
2. 等待创建账号
3. 按顺序执行命令

### BIOS
1. 设置`00_CONFIG.conf`
2. 按顺序执行脚本
3. 创建BP账户，转账投票金额
