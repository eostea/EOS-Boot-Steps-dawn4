# EOSIO-主网启动演练
EOS版本: dawn-v4.2.0
> 预演流程还有许多需要改进的地方，期待大家一起完善。

> 由于涉及`eosio`账号分权技术方案，官方还未给出，快照后投票无法进行，故`BIOS`节点只设置`eosio`为APB,并且不会进行快照的验证，只对系统进行初始化工作。

## 步骤说明

### 所有BP准备工作
1. 在演练开始之前部署好自己的节点，安装`jq`依赖。
2. 运行`nodeos -v`保持与`BIOS`节点相同的版本
3. 运行`nodeos`,有错误不要紧关掉就可以了。
4. 公布自己加入网络的BP信息(`account_name`,`Public_Key`,`p2p-server-address`).
5. 克隆github用`config`下的文件代替`~/.local/share/eosio/nodeos/config`
6. 更改`config.ini`文件配置    
    1. `p2p-peer-address`
    1. `producer-name`
    1. `private-key`
    1. `agent-name`
7. 在`BP`目录下：
    1. 运行`cleos wallet create`, 或`cd /path/to/eos/build/programs/cleos`执行`./cleos wallet create`,创建钱包，将创建钱包返回的钱包密码复制为`0000_CONFIG.conf`文件的`WALLET_PASSWD`对应的参数。
    2. `0000_CONFIG.conf`文件配置：
      1. `eos`部署路径->`SOURCES_FOLDER`
      2. 账户名->`INIT_ACCOUNT`，
      3. 公匙->`INIT_PUB_KEY`，
      4. 私匙-> `INIT_PRIV_KEY`,
      5. 节点URL(http端口:http://ip:8888)->`INIT_URL`.
8. 修改`cleos.sh`下的`NODEOSBINDIR`
9. 保持节点关闭，等待`BIOS`启动
10. 等待`BIOS`通知开始逐个运行节点，加入网络。
11. 接到通知的`BP`,可以注册`BP`,抵押代币,投票。


* 关于配置环境，由于`BIOS`不会长久运行，在配置文件中加入其`p2p-peer-address`会造成链接该节点失败，故EOSTEA和EOSBeijing讨论的方案是：先由`BIOS`团队再开一台BP节点链接`BIOS`节点并与其他节点相互链接，等启动后，该团队的`BP`节点再去除`BIOS`节点。

### BIOS
1. 生成`eosio`密匙对。[生成地址](https://eosfans.io/tools/generate/)
1. 更改`config/config.ini`文件配置    
  1. `p2p-peer-address`为`BIOS`所启动的`BP`节点的`p2p`地址。
2. 更改`config/genesis.json`
  1. 修改`initial_key`为`eosio`的公匙。
3. 提交代码，以便`BP`克隆，保持`config`一致。
3. 在演练开始之前部署好自己的节点，安装`jq`依赖。
4. 运行`nodeos -v`，公布自己的节点版本，以便`BP`统一节点版本。
5. 运行`nodeos`,有错误不要紧关掉就可以了。
6. 用`config`下的文件代替`~/.local/share/eosio/nodeos/config`
7. 更改`~/.local/share/eosio/nodeos/config/config.ini`文件配置:
  1. 去除`p2p-peer-address`
  2. `producer-name=eosio`
  3. 填写生成的`eosio`->`private-key`
  4. `agent-name`
6. 在`BIOS`目录下：
    1. 运行`cleos wallet create`, 或`cd /path/to/eos/build/programs/cleos`执行`./cleos wallet create`,创建钱包，将创建钱包返回的钱包密码复制为`0000_CONFIG.conf`文件的`WALLET_PASSWD`对应的参数。
    2. `0000_CONFIG.conf`文件配置：
      1. `eos`部署路径->`SOURCES_FOLDER`
      3. 公匙->`EOSIO_PRODUCER_PUB_KEY`，
      4. 私匙-> `EOSIO_PRODUCER_PRIV_KEY`,
      5. `BIOS`节点所启动的`BP`账户名->`INIT_ACCOUNT`
      6. `BIOS`节点所启动的`BP`的公匙->`INIT_PUB_KEY`
7. 修改`cleos.sh`下的`NODEOSBINDIR`
1. 启动`BIOS`节点
2. 钱包中导入`eosio`的私匙.(00_WALLET_IMPORT.sh)
2. 发布`BIOS`合约，设置ABP(01)
3. 创建系统初始账户(02)
4. 发布`TOKEN`及`MSIG`合约(03)
5. 创建并发布系统代币(04)
6. 发布`SYSTEM`合约,设置`eosio.msig`为特殊权限账户(05)
7. 创建`BIOS`节点的BP账号。(06)
8. 给`BIOS`节点的BP转账。(07)

## `BIOS`节点的`BP`
基本与`BP`相同。唯一不同的是`config.ini`的`p2p-peer-address`必须填写`BIOS`节点。

## 其他
更改本目录下的`cleos.sh`的`NODEOSBINDIR`参数。
执行`Z_TESTS_SYSTEM_TABLES.sh`脚本，可查询`eosio.system`合约的数据表信息。
