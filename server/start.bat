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