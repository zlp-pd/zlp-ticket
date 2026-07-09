# Zalopay Skills

Bộ **Claude Code / Agent skills** dùng chung cho team Zalopay. Mỗi skill là một folder trong [`skills/`](skills/), đóng gói quy trình + tri thức để agent làm việc nhất quán theo chuẩn của team.

> **Nội bộ.** Repo private, dùng trong tổ chức VNG / Zalopay. Xem [LICENSE](LICENSE).

## Skills hiện có

| Skill | Mô tả | Dành cho |
|---|---|---|
| [`zlp-ticket-tool`](skills/zlp-ticket-tool/) | Đưa một ý tưởng đi từ mơ hồ → validate → đào sâu UX → **ticket Jira theo template Kick-off chuẩn của team UXD** → prompt wireframe. | PO / PM |

## Cài đặt

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
zalopay-skills/
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
