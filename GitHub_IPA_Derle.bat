@echo off
chcp 65001 >nul
title 7/24 Oto Kurtarıcı - Ücretsiz iPhone (.ipa) Bulut Derleme Yukleyici
echo ============================================================================
echo   7/24 OTO KURTARICI SIMULATOR - IPHONE (.IPA) BULUT DERLEME ARACI
echo ============================================================================
echo.
echo Bu arac, hazirlanan iOS Xcode projesini GitHub deponuza yukler ve
echo GitHub'in ucretsiz macOS sunucusunda "OtoKurtarici.ipa" dosyasini uretir.
echo.
cd /d "%~dp0"

if not exist ".git" (
    git init
    git branch -M main
    git config user.name "OtoKurtariciBuilder"
    git config user.email "builder@otokurtarici.sim"
    git remote add origin https://github.com/cermanboyasizpdr-cell/otokurtarici-ios.git
)

echo [1/3] Dosyalar hazirlaniyor...
git add .
git commit -m "iOS Xcode Build v1.0.6"

echo.
echo [2/3] GitHub'da "otokurtarici-ios" adinda bir depo olusturduysaniz simdi yuklenecek.
echo (Eger tarayici giris penceresi acilirsa GitHub hesabinizi onaylayin)
echo.
git push -u origin main --force

echo.
echo ============================================================================
echo Yukleme tamamlandiysa tarayicinizdan su adrese gidin:
echo   https://github.com/cermanboyasizpdr-cell/otokurtarici-ios/actions
echo Derleme bittiginde "OtoKurtarici-iPhone-IPA" paketini indirip
echo Sideloadly ile iPhone'unuza yukleyebilirsiniz!
echo ============================================================================
pause
