# 🚀 iQOO Neo 10 GameCube Unlock & Optimization Pro Kit

[![Release](https://img.shields.io/badge/Release-Build%2027--Safe-brightgreen.svg)](https://github.com)
[![Platform](https://img.shields.io/badge/Platform-OriginOS%20%7C%20Android%2014%2B15-blue.svg)](https://github.com)
[![Device](https://img.shields.io/badge/Device-vivo%20%2F%20iQOO%20Neo%2010-orange.svg)](https://github.com)
[![SoC](https://img.shields.io/badge/SoC-Snapdragon%208%20Gen%203-red.svg)](https://github.com)
[![License](https://img.shields.io/badge/License-GPL%20v3-lightgrey.svg)](LICENSE)

> **Bộ công cụ mở khóa tính năng phần cứng, ép xung màn hình 144Hz, mở rộng bộ lọc Iris Display Chip và tối ưu hóa hệ thống không hao pin (Zero-Drain Profile) dành riêng cho vivo & iQOO Neo 10.**

---

## ⚡ Các Tính Năng Nổi Bật (Build 27)

* 🛡️ **Safe Scope Architecture (Chống văng & Bootloop):**
  - Gỡ bỏ hoàn toàn sự phụ thuộc vào `Khung Android (system)`, bóc tách độc lập để module chỉ can thiệp vào tầng ứng dụng trò chơi (`com.vivo.gamecube` & `com.vivo.gamewatch`). 
  - Khắc phục triệt để lỗi xung đột scope trên OriginOS.
* 🖥️ **Mở khóa 144Hz Toàn Cục & Ghi đè In-game:**
  - Ép buộc màn hình OLED chạy tần số quét 144Hz cho toàn bộ ứng dụng và ép FPS trong game nhận diện đúng 144Hz.
* 👁️ **Mở khóa Bộ lọc Màn hình Iris Mode & Hawkeye (Ưng Nhãn):**
  - Kích hoạt trực tiếp 2 bộ lọc hình ảnh chuyên sâu:
    - **Light Reshaping (Tái tạo vùng sáng):** Tăng cường chi tiết các góc khuất và vùng sáng chói.
    - **Night Vision (Nhìn đêm):** Tối ưu độ tương phản ban đêm qua chip hiển thị độc lập.
* 🔥 **Bypass Thermal Throttling Thông Minh:**
  - Vượt qua toàn bộ cơ chế tự động bóp khung hình (FPS Drop) khi máy nóng của GameCube.
  - Vẫn bảo lưu ngưỡng ngắt an toàn phần cứng của SoC Snapdragon 8 Gen 3 để chống sốc nhiệt.
* 🎮 **Overlay Game Độc Lập:**
  - Cho phép gọi thanh Game Mode Overlay trực tiếp trong mọi ứng dụng/game mà không cần thêm vào Không gian trò chơi (Ultra Game Mode).
* 🔋 **Zero-Drain Optimization Kit:**
  - Đi kèm module ReZygisk siêu nhẹ và script ngắt tiến trình debug log của KernelSU, giúp thời lượng pin ở trạng thái chờ đạt mức lý tưởng.

---

## 📦 Danh Mục Thành Phần

| Tệp / Thư mục | Phân loại | Mô tả |
| :--- | :--- | :--- |
| `bin/GameCube_Unlock_Neo10_Safe_v27.apk` | Ứng dụng chính | APK module Xposed đã patch an toàn và ký chuẩn v1/v2/v3. |
| `scripts/stop_ksulog.sh` | Shell script | Script chạy bằng quyền root để ngắt log kernel KSU, giảm tải CPU. |
| `scripts/install_zerodrain.ps1` | PowerShell | Script tự động đẩy toàn bộ kit qua ADB vào điện thoại. |
| `docs/CHANGELOG.md` | Tài liệu | Lịch sử cập nhật và chi tiết các bản build. |
| `docs/SAFETY_GUIDE.md` | Hướng dẫn | Nguyên tắc an toàn và phạm vi scope trong LSPosed. |

---

## 🛠️ Hướng Dẫn Cài Đặt Chuẩn

### Bước 1: Chuẩn bị Môi trường Root & LSPosed
1. Cài đặt **KernelSU Next** trên thiết bị vivo / iQOO.
2. Cài đặt module **ReZygisk** (hoặc Zygisk-Next) trong KernelSU.
3. Cài đặt module **LSPosed (Zygisk Release)** và khởi động lại thiết bị.

### Bước 2: Cài đặt Module GameCube Unlock
1. Cài đặt file `GameCube_Unlock_Neo10_Safe_v27.apk`.
2. Mở ứng dụng **LSPosed Manager** $\rightarrow$ Chọn tab **Modules** $\rightarrow$ Bật công tắc **GameCube Unlock**.
3. **Cấu hình Scope (Quan trọng):**
   - ✅ Tích chọn: `Chế độ siêu trò chơi` (`com.vivo.gamecube`)
   - ✅ Tích chọn: `GameWatch` (`com.vivo.gamewatch`)
   - ✅ Tích chọn các game mục tiêu (Liên Quân, Free Fire, PUBG, Genshin...).
   - ❌ **TUYỆT ĐỐI KHÔNG TÍCH:** `Khung Android (system)`.

### Bước 3: Kích hoạt Tính năng
1. Khởi chạy ứng dụng **GameCube Unlock** từ màn hình chính.
2. Cấp quyền Superuser khi KernelSU hiển thị thông báo.
3. Bật các tùy chọn mong muốn: **Global 144Hz**, **Bypass Thermal Throttling**, **Iris Mode / Hawkeye**.
4. Mở game và tận hưởng trải nghiệm mượt mà.

### Bước 4: Tối ưu Zero-Drain
Mở ứng dụng Terminal (Termux / MT Manager) và thực thi script ngắt log:
```bash
su -c "sh /sdcard/Download/00-stop-ksulog.sh"
```

---

## ⚠️ Lưu Ý & Miễn Trừ Trách Nhiệm

* Bộ công cụ này can thiệp vào các API hệ thống của vivo GameCube nhằm mục đích tối ưu hóa hiệu năng thiết bị.
* Không sử dụng cho các mục đích vi phạm điều khoản dịch vụ của nhà phát hành game.
* Hãy luôn sao lưu dữ liệu trước khi thực hiện các tinh chỉnh hệ thống.

---
*Phát triển và tối ưu cho cộng đồng người dùng iQOO & vivo.*
