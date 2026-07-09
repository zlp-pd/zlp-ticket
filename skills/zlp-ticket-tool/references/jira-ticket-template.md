# Jira ticket cho designer — template Kick-off + ví dụ

Đọc khi chạy **Giai đoạn 3: Ticket Jira**. Ticket là output cuối sau brainstorm: đóng, cụ thể, đủ để team UXD **start ngay mà không phải quay lại hỏi**, và dev map đúng.

> **Lưu ý format:** ticket xuất ra chat là **markdown formatted** (heading `##`, bullet, bold hiển thị đẹp), KHÔNG bọc trong code block. Các khối ``` trong file này chỉ để minh hoạ cấu trúc — đừng bắt chước bọc ticket thật vào code block. Chỉ prompt wireframe (G4) mới dùng code block.

## Template Kick-off chính thức (7 mục — xương sống bắt buộc)

Đây là format team UXD dùng để nhận việc. **Thiếu mục = ticket bị trả về để làm rõ.** Điền đủ 7 mục, đúng tinh thần:

```
## 1. Context / Background
## 2. Problem            ← quan trọng nhất
## 3. Data
## 4. Product Requirement
## 5. Timeline
## 6. Success Metric
## 7. Wireframe draft idea (optional)
```

| # | Mục | Điền gì | Anti-pattern (bị trả về) | Nguyên tắc |
|---|---|---|---|---|
| 1 | **Context / Background** | Bối cảnh dẫn tới request: sản phẩm/luồng nào, vì sao giờ mới làm, có gì thay đổi. 2-3 câu. | — | — |
| 2 | **Problem** *(quan trọng nhất)* | Vấn đề thật của user/business, **góc user, không kê giải pháp**. | "Nhờ team review giúp wireframe" → đây là *việc cần làm*, không phải problem. | P2 |
| 3 | **Data** | Số liệu/signal của vấn đề (funnel, dashboard, CS ticket, analytics) + link. | "Cảm giác chỗ này chưa ổn" · "hỏi nhanh vài người thấy..." → chưa đo được thì chưa xếp ưu tiên. | P1 |
| 4 | **Product Requirement** | Cần giải quyết gì · ràng buộc không đổi được · phạm vi tới đâu (out-of-scope). | Mô tả mơ hồ không có ranh giới. | P4 |
| 5 | **Timeline** | Mốc **thật** cần có design để kịp quyết định/release. | "Càng sớm càng tốt" → không xếp lịch được. | — |
| 6 | **Success Metric** | Đo bằng gì để biết design thành công. | "Trông đẹp và dễ dùng hơn" → không đo được thì không biết có thành công không. | P5 |
| 7 | **Wireframe draft idea** *(optional)* | Link Figma/screenshot/ý phác nếu có. | Review/Writing/Design-state mà **không có link màn** → team không soi được. | — |

**Chỗ thiếu thông tin → tự điền giá trị đề xuất hợp lý** để ticket hoàn chỉnh, không để trống hay rải `[cần chốt]`. **Ngoại lệ — KHÔNG bịa như thể có thật:** số liệu/chỉ số cụ thể (Data, Success Metric %) và ràng buộc kỹ thuật (API, callback, ticket dev) — chưa có thì ghi kèm "(đề xuất, PO xác nhận)".

## 5 Project Type — chọn loại, kéo theo độ sâu enrichment

Skill nhận diện + đề xuất, PO xác nhận. Loại quyết định phần enrichment (Design Requirements/Case Matrix) làm nặng hay nhẹ:

| Project Type | Là gì | Data thường có | Enrichment (Design Requirements) |
|---|---|---|---|
| **Tạo mới màn/flow** | Feature/luồng chưa tồn tại, thiết kế từ đầu | Định lượng (funnel, cơ hội) | **Nhẹ** — Product Requirement ở mức khái niệm, để designer thiết kế |
| **Review wireframe có sẵn** | Đã có bản thiết kế, nhờ soi UX-logic-rule | Signal cụ thể chỗ nghi ngờ | **Trung bình** — chỉ rõ phần nào cần soi, phần nào đã chốt; **link màn bắt buộc** |
| **UX Writing** | Chỉnh/viết lại text, label, error, microcopy | Thường mỏng → signal định tính (CS ticket, user quote) | **Bỏ per-screen** — tập trung message + tone + ràng buộc độ dài; **link ngữ cảnh bắt buộc** |
| **Optimize / revamp** | Luồng đã live nhưng có vấn đề | Định lượng vấn đề hiện tại (drop-off...) | **Nặng** — enumerate màn/state hiện tại → mong muốn |
| **Design state lỗi / edge case** | Bổ sung màn lỗi/empty/pending cho luồng có sẵn | Signal lỗi (tỉ lệ fail, CS) | **Nặng** — Case Matrix + enumerate hết state; **link luồng bắt buộc** |

**Ranh giới cứng:** đụng tiền/bảo mật/nhiều biến thể → luôn full enrichment (Case Matrix + Dependency), KHÔNG lược bớt dù thay đổi trông nhỏ. Giữa chừng phát hiện phức tạp hơn tưởng → dừng, đề xuất nâng độ sâu.

---

## Enrichment layer — Design Requirements actionable (2 kiểu)

Thêm **dưới Product Requirement** khi có giá trị (Review/Optimize/Design-state/Complex). Đây là phần skill làm dày hơn khung Kick-off gốc để designer nhận việc nhanh hơn — KHÔNG thay quyền thiết kế của designer.

Designer đọc là vẽ được. Cụ thể vị trí + thứ tự + wording gợi ("..."), điều hướng bằng `->`. KHÔNG quy định màu/mã màu (vd #0033C9)/spacing/kích thước/font — chỉ nêu vai trò thành phần ("nút chính", "nút phụ ghost"), designer tự quyết màu & style. Không viết đoạn văn insight kiểu "empty state là cơ hội dẫn dắt".

**Kèm gợi ý UX behaviour khi cần:**
- Dạng UI: dialog bottom, tray, sliding banner (collapse<->expand), date picker, toast, tab...
- Điều kiện hiển thị: "chỉ show ngày có income >0", "nếu không có để blank", mask "chừa 4 số cuối"...
- Cơ chế tương tác: tap mở tray, expand xem breakdown, sliding ngang...
- Liệt kê data fields đầy đủ + enumerate hết trạng thái (confirmed/shipping/delivered/activated/cancel).

### Kiểu A - khối phẳng (ít màn, mỗi màn đơn giản)
```
**Màn: [tên màn/state]**
- [thành phần theo thứ tự trên->dưới] (wording: "...")
- [nút] -> [điều hướng]
- *[lưu ý phụ]*
```
Ví dụ:
```
**Màn: Empty state (referrer chưa có máy kích hoạt)**
- Icon minh hoạ (giữa màn)
- Tiêu đề: "Chưa có máy nào kích hoạt"
- Dòng phụ: "Chia sẻ cho chủ shop bạn biết để nhận hoa hồng"
- Nút chính: "Chia sẻ ngay" -> màn chia sẻ
- *Không để màn trống*
```

### Kiểu B - cây phân cấp (nhiều màn / có sub-state, tab lồng nhau)
Gom **Main screens** / **Extra screens**; mỗi màn có sub-state/tab lồng bên trong, kèm dạng UI + điều kiện hiển thị. Ví dụ (rút gọn từ Referral referrer):
```
Main screens:
1. Registration - dialog bottom
   - Info: Họ tên (KYC, nếu không có để blank) - SĐT (số đăng nhập) - CCCD (mask, chừa 4 số cuối)
   - T&C + nút "Đăng ký ngay"
   - State thiếu thông tin: dialog 2 nút - primary "Thực hiện ngay" -> KYC level 2, second "Để sau"
   - Toast xác nhận khi đăng ký thành công
2. Homepage
   - Sliding campaign banner: collapse (sliding ngang) <-> expand (chi tiết campaign + nút copy link)
   - Section "How to earn income"
3. Analytics - help button mở tray giải thích cách tính metric
   - Filter: 7/30/60 ngày + custom (date picker)
   - 2 số: Est commission (đ) - Sales (tổng máy bán trong kỳ)
   - Trend chart (phân biệt completed vs còn lại — designer chọn cách thể hiện)
   - Bảng chi tiết: order id - version (V1/2/3) - giá - commission est - status (confirmed/shipping/delivered/activated/cancel)
4. Payment
   - Số: Processing (đ) - Paid (đ); filter như trên
   - 3 tab: daily revenue (chỉ ngày income>0, expand xem breakdown) - payment daily (chỉ paid) - cancel (fraud/refund)
Extra screens: Referral info - Terms & conditions
```

### Case Matrix — khi nào dùng
Khi tính năng có nhiều biến thể theo điều kiện (Flow × device, trạng thái × role...). Bảng liệt kê từng tổ hợp điều kiện → nội dung cụ thể (title/body/CTA/điều hướng...). Luôn kèm **chú thích cách đọc cột** để designer/dev không hiểu nhầm. Đây là cách thể hiện P3 (Design for Reality) rõ nhất khi có nhiều nhánh.

### Dependency
Ràng buộc kỹ thuật + ref ticket dev (API, callback, framework). Chưa chắc thì ghi "(đề xuất, PO xác nhận)".

---

## Ví dụ mẫu — ticket Complex đầy đủ (7 mục + enrichment)

Ví dụ: result page "Failed định danh mức 1". Project Type = **Design state lỗi / edge case**, đụng flow định danh → full enrichment.

```
# Customize result page "Failed định danh mức 1" theo context

## 1. Context / Background
Result page "Failed định danh mức 1" đang dùng copy generic ("Xác thực thất bại..." + 1 nút "Đóng") cho mọi trường hợp, không tận dụng NFC của device hay context của flow.

## 2. Problem
User fail định danh mức 1 không biết next step là gì — message chung không dẫn được họ tới hành động đúng (hoàn tất mức 2, thử NFC, hay nhờ người khác), dẫn tới bỏ cuộc giữa flow eKYC.

## 3. Data
[Tỉ lệ drop-off tại result page Failed mức 1 — link dashboard] · CS ticket user hỏi "giờ phải làm gì" (đề xuất, PO xác nhận).

## 4. Product Requirement
Customize result page theo ngữ cảnh — tách case theo Flow (VNeID Direct / eKYC Merge / NFC Only) × khả năng NFC của device — mỗi case có copy, CTA, điều hướng dẫn tới next step đúng nhất. Title dùng chung: "Xác thực chưa thành công". Out of scope: không đổi logic định danh, chỉ đổi result page.

## 5. Timeline
[Mốc release — PO xác nhận].

## 6. Success Metric
Giảm drop-off tại result page Failed mức 1 · tăng % user đi tiếp tới mức 2 / thử lại NFC sau khi thấy màn (đề xuất, PO xác nhận).

## 7. Wireframe draft idea
[Link Figma hiện trạng] · [ảnh Current UI]

---

## Case Matrix
Quy ước đọc: Main/Secondary CTA = nút chính/phụ; CTA Target = màn đích khi bấm; "Entry point" = quay lại đúng điểm đã mở flow eKYC; "-" = case không có element này.

| Flow | Device NFC? | Body | Main CTA | Secondary CTA | Main CTA Target | Secondary CTA Target |
|---|---|---|---|---|---|---|
| VNeID Direct | - | VNeID mới ở mức 1. Hãy hoàn tất định danh mức 2 để tiếp tục. | Quay lại trang trước | - | Entry point | - |
| eKYC Merge | Yes | ...mức 1. Hoàn tất mức 2 hoặc thử lại bằng NFC. | Thử NFC lại | - | Tap thẻ | - |
| NFC Only | Yes | ...mức 1. Hoàn tất mức 2 hoặc thử lại bằng NFC. | Thử NFC lại | Nhờ người khác xác thực giúp | Tap thẻ | Flow NFC Hộ |
| NFC Only | No | ...mức 1, hoặc nhờ người khác xác thực giúp. | Nhờ người khác xác thực giúp | Để sau | Flow NFC Hộ | Entry point |

## Design Requirements
- Title chung "Xác thực chưa thành công" mọi biến thể.
- Body + CTA + điều hướng lấy đúng theo từng dòng Case Matrix.
- Case chỉ có Main CTA -> layout 1 nút; case có cả Main + Secondary -> Main nổi bật, Secondary là nút phụ bên dưới.
- Icon/illustration thể hiện đúng case Failed định danh mức 1, KHÔNG dùng icon shield-with-X generic. Giữ nav bar hiện có.

## Dependency
Điều hướng "Entry point" cần support function callback trong Authen Challenge Framework -> check + cần PO support lúc tạo dev ticket. Ref: PCFUM-11694 (iOS) / PCFUM-11695 (Android) / PCFUM-11696 (ZMP).

## Reference
PCFUM-11694 / 11695 / 11696 — Support callback URL.
```

## Nhắc
- Ticket rút gọn ở trên là *khuôn dạng*; khi tạo thật, giữ đủ chi tiết PO đã chốt.
- Luôn giữ đủ 7 mục Kick-off. Enrichment (Case Matrix, Design Requirements, Dependency) chỉ thêm khi Project Type cần — tính năng không có nhiều biến thể thì bỏ Case Matrix, Product Requirement mô tả trực tiếp.
- Số liệu (Data/Success Metric) và ràng buộc kỹ thuật (Dependency) chưa có thì ghi "(đề xuất, PO xác nhận)", KHÔNG bịa như thật.
