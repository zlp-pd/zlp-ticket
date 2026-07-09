# Đóng góp skill

## Một skill trông như thế nào

```
skills/<tên-skill>/
├── SKILL.md            # bắt buộc
└── references/         # tùy chọn — tài liệu nạp theo nhu cầu
```

`SKILL.md` phải mở đầu bằng frontmatter YAML:

```yaml
---
name: ten-skill-kebab-case
description: >
  Một đoạn mô tả súc tích NHƯNG giàu keyword — đây là thứ agent dùng để
  quyết định khi nào kích hoạt skill. Nêu rõ skill làm gì, các giai đoạn/bước,
  và liệt kê những cụm từ người dùng hay nói ("viết ticket Jira", "vẽ wireframe"...).
---
```

- **`name`**: kebab-case, trùng tên folder.
- **`description`**: quan trọng nhất cho auto-activation — nhồi đủ trigger keyword tự nhiên, đừng chỉ mô tả trừu tượng.

## Nguyên tắc viết

- **Router, không phải bách khoa.** `SKILL.md` nói *khi nào / làm gì*; chi tiết dài đẩy vào `references/*.md` và trỏ tới bằng đường dẫn tương đối (`references/xxx.md`). Agent nạp reference theo nhu cầu → tiết kiệm context.
- **Súc tích, actionable.** Ưu tiên câu lệnh rõ ràng hơn văn giải thích.
- **Ví dụ tiết chế.** Đủ để minh họa, không lan man.
- **Cross-reference** giữa các reference bằng đường dẫn tương đối để không vỡ khi đóng gói.

## Quy trình sửa

1. Sửa file trong `skills/<tên-skill>/`.
2. Dev nhanh: `./install.sh --link <tên-skill>` (symlink) rồi thử trong Claude Code.
3. Cập nhật [CHANGELOG.md](CHANGELOG.md).
4. Commit theo [Conventional Commits](https://www.conventionalcommits.org/) — ví dụ:
   - `feat(zlp-ticket-tool): align ticket với template Kick-off của UXD`
   - `fix(zlp-ticket-tool): sửa cross-reference reference`
   - `docs: cập nhật README`
5. Mở PR để team review trước khi merge.

## Đóng gói chia sẻ

```bash
./scripts/build-skill.sh <tên-skill>   # → dist/<tên-skill>.skill (zip)
```

Dùng khi cần gửi file `.skill` đơn cho người chưa clone repo. Không commit `dist/`.

## Versioning

- Repo dùng git tag dạng `zlp-ticket-tool/vX.Y.Z` cho từng skill khi có release đáng kể, hoặc tag chung `vX.Y.Z` cho cả bộ.
- Ghi thay đổi vào `CHANGELOG.md` theo skill.
