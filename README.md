# EndlessPixel Minecraft Server部分开源文件

## 仓库说明
此仓库包含EndlessPixel Minecraft服务器的部分开源文件，主要用于测试和参考。仓库中主要包含现成的JAR文件以及一些配置文件（如JSON和YAML），并没有实际的代码。

---

## 重要声明
- **文件内容**：此仓库不包含任何带有EndlessPixel服务器专属前缀的文件。这些文件已被我们删除，以确保用户隐私和数据安全。
- **服务器核心**：
  > 此仓库不包含服务器核心文件，因为文件较大，无法直接上传。请自行下载服务器核心文件，并将其命名为server.jar。
  > 下载链接如下：
  > [服务器核心下载链接 - https://api.leafmc.one/v2/projects/leaf/versions/1.21.6/builds/29/downloads/leaf-1.21.6-29.jar](https://api.leafmc.one/v2/projects/leaf/versions/1.21.6/builds/29/downloads/leaf-1.21.6-29.jar)
- **启动脚本**：
  > 我们提供了Windows启动脚本。如果需要在其他操作系统上运行，或者需要修改脚本，请自行调整。启动脚本假设服务器核心文件名为server.jar。
- **官网代码**：
  > 此仓库不包含服务器官网代码。如果需要服务器官网代码，请前往仓库 [server](https://github.com/EndlessPixel/server)。
- **使用限制**：<font color="orange">这些文件仅供测试服务器使用，**禁止直接用于实际开服**。你可以借鉴我们的插件和配置文件，应用到你自己的服务器上。</font>
- **使用建议**：<font color="purple">服务器插件和配置文件仅供参考，建议在使用前进行修改和检查。</font>

---

## 服务器运行前置环境
- **JDK版本**：<font color="red">服务器运行需要JDK-21，请确保已安装并配置好JDK-21环境。</font>
- **启动脚本说明**：
  - <font color="blue">如果你下载的服务器核心文件名不是server.jar，请将其重命名为server.jar，或者修改启动脚本中的文件名。</font>
  - <font color="green">确保JDK-21的bin目录已添加到系统的环境变量中，以便启动脚本能够正确运行。</font>

start.bat
```batch
@echo off
cls
java -Xms4G -Xmx6G ^
  -XX:+UseG1GC ^
  -XX:+UnlockExperimentalVMOptions ^
  -XX:+ParallelRefProcEnabled ^
  -XX:MaxGCPauseMillis=150 ^
  -XX:+DisableExplicitGC ^
  -XX:+AlwaysPreTouch ^
  -XX:G1NewSizePercent=40 ^
  -XX:G1MaxNewSizePercent=50 ^
  -XX:G1HeapRegionSize=4M ^
  -XX:G1ReservePercent=15 ^
  -XX:G1HeapWastePercent=5 ^
  -XX:G1MixedGCCountTarget=4 ^
  -XX:InitiatingHeapOccupancyPercent=20 ^
  -XX:G1MixedGCLiveThresholdPercent=85 ^
  -XX:G1RSetUpdatingPauseTimePercent=5 ^
  -XX:SurvivorRatio=32 ^
  -XX:+PerfDisableSharedMem ^
  -XX:MaxTenuringThreshold=1 ^
  -jar server.jar --nogui
echo 服务器已关闭
pause
```
---

## 联系我们
如有疑问或需要进一步帮助，请联系项目维护者。
