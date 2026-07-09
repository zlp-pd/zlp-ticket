# Changelog

Định dạng theo [Keep a Changelog](https://keepachangelog.com/). Ghi theo từng skill.

## zlp-ticket-tool

### [Unreleased]
#### Changed
- **Align ticket Giai đoạn 3 với template Kick-off chính thức của team UXD.**
  7 mục bắt buộc thành xương sống: Context · Problem · Data · Product Requirement ·
  Timeline · Success Metric · Wireframe. Bổ sung 3 mục trước đây thiếu (Data,
  Timeline, Success Metric).
- Thêm phân loại **5 Project Type** (Tạo mới / Review / UX Writing / Optimize / Design
  state lỗi) — thay cho hệ Quick/Standard/Complex; Project Type quyết định độ sâu enrichment.
- Design Requirements / Case Matrix / Dependency hạ xuống thành **enrichment layer**
  thêm dưới Product Requirement khi cần, thay vì section bắt buộc.
- Cụm xác nhận (nút bấm) đổi: hỏi Project Type + Timeline + asset thay vì hỏi "level".
- Cập nhật `references/jira-ticket-template.md`, `references/brief-template.md` (thêm
  Data + Timeline), `references/ux-principles.md` (map bảng theo 7 mục Kick-off).

### [0.1.0] — bản đầu
- 4 giai đoạn: Clear & Validate → Đào sâu UX → Ticket Jira → Prompt Wireframe.
- Reference: critique-framework (4 tầng + 8 nguyên tắc Tencent), ux-principles (6 nguyên
  tắc P1–P6), jira-ticket-template, brief-template.
