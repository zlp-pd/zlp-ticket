# Zalopay Skills

Bộ **Claude Code / Agent skills** dùng chung cho team Zalopay. Mỗi skill là một folder trong [`skills/`](skills/), đóng gói quy trình + tri thức để agent làm việc nhất quán theo chuẩn của team.

> **Nội bộ.** Repo private [`zlp-pd/zlp-ticket`](https://github.com/zlp-pd/zlp-ticket), dùng trong tổ chức VNG / Zalopay. Xem [LICENSE](LICENSE).

## Skills hiện có

| Skill | Mô tả | Dành cho |
|---|---|---|
| [`zlp-ticket-tool`](skills/zlp-ticket-tool/) | Đưa một ý tưởng đi từ mơ hồ → validate → đào sâu UX → **ticket Jira theo template Kick-off chuẩn của team UXD** → prompt wireframe. | PO / PM |

---

## Skill: `zlp-ticket-tool`

Đóng vai **product lead + UX lead ngồi cùng PO/PM** — thấu cảm với con người, tàn nhẫn với sự phức tạp. Dẫn một ý tưởng từ lúc còn mơ hồ tới **ticket giao designer** (và prompt wireframe nếu cần), luôn bám giá trị product & UX đã thống nhất của team.

### Bốn giai đoạn (skill tự đề xuất chuyển tiếp)

```
1. CLEAR & VALIDATE  →  2. ĐÀO SÂU UX  →  3. TICKET JIRA  →  4. PROMPT WIREFRAME (optional)
```

1. **Clear & Validate** — stress-test idea có đáng làm không, qua khung sản phẩm 4 tầng + 8 nguyên tắc Tencent, soi bằng 6 nguyên tắc UX. Verdict thẳng thắn: *Nên làm / Cần chỉnh / Chưa nên làm* + lỗ lớn nhất & hướng đi.
2. **Đào sâu UX** — 3 câu hỏi (nút bấm) trúng chỗ mơ hồ nhất, làm rõ *điều thật sự cần giải* trước khi chốt yêu cầu.
3. **Ticket Jira** — kết tinh thành ticket theo **template Kick-off chuẩn của team UXD**, đủ để designer nhận việc ngay mà không phải quay lại hỏi.
4. **Prompt wireframe** *(tùy chọn)* — đóng gói ticket thành prompt để công cụ khác (Claude Design / AI) generate wireframe. Skill **không tự vẽ**.

PO/PM có thể nhảy thẳng tới giai đoạn cần, hoặc dừng ở bất kỳ đâu.

### Ticket theo chuẩn team UXD

Ticket luôn đủ **7 mục bắt buộc** — Context · Problem · Data · Product Requirement · Timeline · Success Metric · Wireframe. Skill nhận diện **Project Type** để cân độ sâu:

| Project Type | Là gì |
|---|---|
| Tạo mới màn/flow | Feature/luồng chưa tồn tại, thiết kế từ đầu |
| Review wireframe có sẵn | Đã có bản thiết kế, nhờ soi UX-logic-rule |
| UX Writing | Chỉnh/viết lại text, label, error, microcopy |
| Optimize / revamp | Luồng đã live nhưng có vấn đề |
| Design state lỗi / edge case | Bổ sung màn lỗi/empty/pending cho luồng có sẵn |

Khi cần, ticket thêm **Design Requirements / Case Matrix / Dependency**. Ticket đụng tiền/bảo mật/nhiều biến thể luôn làm đầy đủ (không cho hạ mức).

### Cách kích hoạt

Gõ `/zlp-ticket-tool`, hoặc chỉ cần mô tả việc — skill tự nhận. Ví dụ:

- *"Critique giúp idea thêm màn X vào luồng thanh toán"*
- *"Viết ticket Jira cho designer về màn lỗi định danh mức 1"*
- *"Tạo prompt wireframe từ ticket này"*

### Nền tảng tư duy (references — nạp theo nhu cầu)

- [`critique-framework.md`](skills/zlp-ticket-tool/references/critique-framework.md) — 4 tầng sản phẩm + 8 nguyên tắc Tencent
- [`ux-principles.md`](skills/zlp-ticket-tool/references/ux-principles.md) — 6 nguyên tắc UX (P1–P6)
- [`jira-ticket-template.md`](skills/zlp-ticket-tool/references/jira-ticket-template.md) — template Kick-off + 5 Project Type + ví dụ mẫu
- [`brief-template.md`](skills/zlp-ticket-tool/references/brief-template.md) — nguyên tắc problem-not-solution

### Lưu ý khi dùng

- Ticket là **markdown trong chat** để copy thẳng vào Jira (không bọc code block); chỉ prompt wireframe mới ở code block.
- Mọi câu hỏi cho PO đều dạng **nút bấm**, gọn (≤3 câu/lần).
- Chỗ thiếu thông tin skill tự điền đề xuất hợp lý; riêng số liệu/chỉ số và ràng buộc kỹ thuật thì ghi "(đề xuất, PO xác nhận)", không bịa như thật.
- Trả lời tiếng Việt.

## Cài đặt

Lần đầu — clone repo về:

```bash
git clone https://github.com/zlp-pd/zlp-ticket.git
cd zlp-ticket
```

Skill được cài vào `~/.claude/skills/<tên-skill>/`. Dùng `install.sh`:

```bash
# Cài một skill cụ thể
./install.sh zlp-ticket-tool

# Cài tất cả skill trong repo
./install.sh --all

# Dev mode: symlink thay vì copy (sửa trong repo là skill cập nhật ngay)
./install.sh --link zlp-ticket-tool
```

Sau khi cài, mở Claude Code và gõ `/zlp-ticket-tool` hoặc chỉ cần mô tả việc — skill tự kích hoạt theo `description` của nó.

### Cài thủ công

```bash
cp -R skills/zlp-ticket-tool ~/.claude/skills/
```

## Cập nhật

```bash
git pull
./install.sh --all      # cài lại bản mới
```

## Đóng gói `.skill` (tùy chọn)

Để chia sẻ một skill dưới dạng file `.skill` đơn (zip) cho người chưa clone repo:

```bash
./scripts/build-skill.sh zlp-ticket-tool
# → dist/zlp-ticket-tool.skill
```

File `.skill` là **build artifact**, không commit vào repo (xem [.gitignore](.gitignore)). Source of truth luôn là folder trong `skills/`.

## Thêm / sửa skill

Xem [CONTRIBUTING.md](CONTRIBUTING.md) cho quy ước tác giả skill (frontmatter, references, giọng văn, versioning).

## Cấu trúc repo

```
zlp-ticket/                # repo zlp-pd/zlp-ticket
├── README.md              # file này
├── LICENSE                # nội bộ VNG/Zalopay
├── CONTRIBUTING.md        # quy ước thêm/sửa skill
├── CHANGELOG.md           # lịch sử thay đổi
├── install.sh             # cài skill vào ~/.claude/skills/
├── scripts/
│   └── build-skill.sh     # đóng gói folder skill → dist/<name>.skill
└── skills/
    └── zlp-ticket-tool/
        ├── SKILL.md        # bộ não skill (frontmatter name + description)
        └── references/     # tài liệu nạp theo nhu cầu
```
