# 📜 Changelog

## [Build 27 - Safe Neo 10 Edition] - 2026-10-30

### Fixed
- **Scope Restriction Refactor:** Gỡ bỏ hoàn toàn kiểm tra bắt buộc đối với `system` (Khung Android) trong `ModuleEntry.smali` và `Module_healthKt.smali`. Module hoạt động độc lập không phụ thuộc quyền hệ thống.
- **Benchmark Mode Retention:** Sửa lỗi benchmark mode bị mất khi mở khóa màn hình.
- **Image Enhancement Activation:** Hiển thị thông báo rõ ràng khi bộ lọc màn hình gặp xung đột (Iris Mode + 144Hz) thay vì âm thầm lỗi.
- **Custom SR Profile:** Chuyển phần cấu hình độ phân giải tùy biến sang Chế độ Nâng cao (Advanced Mode).

### Added
- **Global 144Hz In-game Override:** Tự động đồng bộ và ghi đè tốc độ làm tươi màn hình vào các tựa game có khóa FPS.
- **Iris Mode & Hawkeye (Ưng Nhãn):** Bổ sung 2 bộ lọc chuyên sâu "Light Reshaping" và "Night Vision" qua chip hiển thị độc lập.
- **Thermal Bypass Protection:** Bypass cơ chế bóp FPS nhiệt của Game Space nhưng bảo vệ phần cứng CPU/GPU.
- **Standalone Game Mode Overlay:** Cho phép ứng dụng mở khóa gọi overlay mà không cần add vào Ultra Game Mode.
- **Zero-Drain Toolkit:** Bổ sung kịch bản ngắt log `stop_ksulog.sh` kết hợp ReZygisk.

---

## [Build 26 - Initial Neo 10 Port] - 2026-10-30
- Khởi tạo bản chuyển đổi sơ bộ cho vivo iQOO Neo 10 trên nền Android 15.
