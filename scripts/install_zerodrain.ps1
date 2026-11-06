$ErrorActionPreference = "Stop"
$adb = "C:\Users\ADMIN\AppData\Local\Android\Sdk\platform-tools\adb.exe"
$kitDir = "C:\Users\ADMIN\Desktop\ToolIQOO\ZeroDrain_Kit"

Write-Host "=== 1. Checking ADB device connection ==="
& $adb wait-for-device

Write-Host "=== 2. Installing APKs (GhostLock, KernelSU v3.3.0, GameCube Unlock Safe v26, HMA v3.2 Light) ==="
& $adb install -r "$kitDir\1_GhostLock_TempRoot.apk"
& $adb install -r "$kitDir\2_KernelSU_v3.3.0.apk"
& $adb install -r "$kitDir\3_GameCube_Unlock_Neo10_Safe_26.apk"
& $adb install -r "$kitDir\4_HMA_v3.2_Light.apk"

Write-Host "=== 3. Pushing ReZygisk, LSPosed Release & Zero-Drain Script to /sdcard/Download/ ==="
& $adb push "$kitDir\5_ReZygisk_UltraLight.zip" "/sdcard/Download/5_ReZygisk_UltraLight.zip"
& $adb push "$kitDir\6_LSPosed_Zygisk_Release.zip" "/sdcard/Download/6_LSPosed_Zygisk_Release.zip"
& $adb push "$kitDir\00-stop-ksulog.sh" "/data/local/tmp/00-stop-ksulog.sh"

Write-Host "=== 4. Checking if Temp Root (su) is already active to install modules & zero-drain script ==="
$uid = & $adb shell "su -c 'id -u' 2>/dev/null"
if ($uid -match "^0") {
    Write-Host "Root detected! Installing Zero-Drain script and modules automatically..."
    & $adb shell "su -c 'mkdir -p /data/adb/service.d && cp /data/local/tmp/00-stop-ksulog.sh /data/adb/service.d/00-stop-ksulog.sh && chmod 755 /data/adb/service.d/00-stop-ksulog.sh && sh /data/adb/service.d/00-stop-ksulog.sh'"
    & $adb shell "su -c '/data/adb/ksud feature set sulog 0 && /data/adb/ksud feature save'"
    & $adb shell "su -c '/data/adb/ksud module install /sdcard/Download/5_ReZygisk_UltraLight.zip'"
    & $adb shell "su -c '/data/adb/ksud module install /sdcard/Download/6_LSPosed_Zygisk_Release.zip'"
    Write-Host "=== ALL DONE! Zero-Drain Temp Root Kit is 100% active! ==="
} else {
    Write-Host "=== APKs installed! Please open GhostLock on your phone, tap Run to Temp Root, then run this script again (or tell the assistant) to finish module setup! ==="
}
