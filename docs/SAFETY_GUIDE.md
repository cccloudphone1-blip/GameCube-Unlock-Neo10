# 🛡️ Hướng Dẫn An Toàn & Phân Vùng Scope (Safety Guide)

Tài liệu này giải thích chi tiết kiến trúc an toàn của bản **Build 27 (Safe Neo 10 Edition)** so với các bản mod thông thường.

---

## 1. Tại sao KHÔNG ĐƯỢC tích chọn `Khung Android (system)` trong LSPosed?

Trong kiến trúc của các module Xposed truyền thống:
* Nhiều module cố tình hook vào toàn bộ tiến trình hệ điều hành Android (`system_server` / `android`).
* Điều này tiềm ẩn rủi ro rất lớn: nếu một hàm bị null pointer exception hoặc không tương thích trên phiên bản ROM OriginOS mới, toàn bộ giao diện hệ thống sẽ bị khởi động lại liên tục (**Bootloop**).

**Giải pháp trên Build 27:**
* Chúng tôi đã loại bỏ hoàn toàn các hook vào `system_server`.
* Toàn bộ mã điều khiển được chuyển hướng vào không gian ứng dụng người dùng (Userspace) của **Chế độ siêu trò chơi** (`com.vivo.gamecube`) và **GameWatch** (`com.vivo.gamewatch`).
* Nhờ đó, ngay cả khi ứng dụng trò chơi gặp sự cố, hệ điều hành của điện thoại vẫn an toàn 100%.

---

## 2. Danh sách Scope chuẩn cho LSPosed:
- ✅ `com.vivo.gamecube` (Bắt buộc)
- ✅ `com.vivo.gamewatch` (Bắt buộc)
- ✅ Các tựa game cần tối ưu tần số quét và mở khóa đồ họa.
- ❌ **Khung Android (`android`)**: Tuyệt đối bỏ qua.

---

## 3. Tối ưu nhiệt độ & tuổi thọ linh kiện
Tính năng **Bypass Thermal Throttling** trong bộ công cụ chỉ can thiệp vào các cờ giới hạn phần mềm của vivo (`thermal_limit_fps`). Ngưỡng bảo vệ vật lý của chip Qualcomm Snapdragon (ngắt khi chạm ngưỡng $95^\circ\text{C}$ của SoC) vẫn được giữ nguyên ở mức kernel, đảm bảo an toàn tuyệt đối cho phần cứng.
