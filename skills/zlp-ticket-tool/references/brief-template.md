# Viết brief cho designer

Đọc khi viết ticket (Giai đoạn 3) — nguyên tắc mô tả **vấn đề và người dùng** để phần Context/Design Requirements của ticket rõ ràng, designer đọc xong hiểu bài và không phải quay lại hỏi những thứ lẽ ra đã có sẵn.

## Vì sao PO hay viết brief làm designer khó chịu

Ba lỗi phổ biến — skill này giúp tránh:

1. **Kê giải pháp thay vì mô tả vấn đề.** "Thêm nút xanh góc phải" tước quyền thiết kế và thường sai. Designer cần biết *tại sao*.
2. **Thiếu bối cảnh người dùng.** Không có "ai / ở đâu trong hành trình / tâm lý gì", designer phải đoán.
3. **Bỏ quên trạng thái & edge case.** Loading, lỗi, rỗng, mạng yếu, lần đầu dùng — đây là thứ designer hay phải quay lại chất vấn nhất.

## Nguyên tắc vàng

- **Problem, not solution.** Mô tả nỗi đau, để designer đề xuất cách giải.
- **Cho WHY trước WHAT.** Mỗi ràng buộc nên kèm lý do (vd "phải <300ms vì độ trễ phá niềm tin trong thanh toán").
- **Ranh giới rõ, tự do trong ranh giới.** Nói cái gì bất khả xâm phạm (an toàn, tốc độ, tuân thủ, default state), phần còn lại để designer bay.
- **"Xong" phải đo được.** Thành công trông ra sao, đo bằng chỉ số nào.
- **Liệt kê đủ trạng thái.** Đây là món quà lớn nhất PO tặng designer.

## Template brief

```
## Tên tính năng

## Vấn đề đang giải
[Nỗi đau thật của người dùng, 2–3 câu. KHÔNG mô tả giải pháp ở đây.]

## Data / signal
[Số liệu chứng minh vấn đề: funnel, dashboard, CS ticket, analytics + link.
Chưa đo được ("cảm giác chưa ổn") thì chưa xếp ưu tiên được. Writing → signal
định tính (user quote, CS ticket) cũng được.]

## Người dùng & bối cảnh
- Ai: [nhóm cụ thể + hành vi, không phải nhân khẩu học chung chung]
- Ở đâu trong hành trình: [họ đang làm gì ngay trước bước này]
- Tâm lý lúc đó: [vội? lo tiền không tới? tò mò? ngại thao tác?]

## Mục tiêu & định nghĩa thành công
- Kết quả mong muốn: [hành vi/cảm xúc thay đổi ra sao]
- Đo bằng: [chỉ số cụ thể, vd tỉ lệ hoàn tất bước xác nhận]

## Timeline
[Mốc thật cần có design để kịp quyết định/release — không phải "càng sớm càng tốt".]

## Phạm vi
- Bắt buộc (non-negotiable): [an toàn, tốc độ <300ms, tuân thủ, default state...]
- Ngoài phạm vi: [nói rõ để tránh scope creep]

## Luồng chính
[Các bước ở mức KHÁI NIỆM — "người dùng cần xác nhận trước khi tiền đi",
KHÔNG phải "màn hình 2 có nút Confirm bên dưới". Để designer dựng UI.]

## Trạng thái & edge case cần xử lý
- Lần đầu dùng / chưa có dữ liệu (empty state)
- Đang xử lý (loading)
- Lỗi (mạng yếu, giao dịch thất bại, hết hạn...)
- Trường hợp biên đặc thù của tính năng

## Ràng buộc kỹ thuật & thương hiệu
[Giới hạn kỹ thuật, guideline thương hiệu, tuân thủ — kèm lý do]

## Câu hỏi mở cho designer
[Những chỗ PO chưa chắc — mời designer cùng nghĩ. Đây là phần
biến brief thành hội thoại thay vì mệnh lệnh.]
```

## Ví dụ ngắn: mô tả vấn đề đúng cách

**Cách gây khó chịu (kê giải pháp):**
> "Thêm màn hình xác nhận có nút xanh 'Đồng ý' và hiển thị số tiền cỡ chữ 24px ở giữa."

**Cách dễ chịu (mô tả vấn đề + bối cảnh):**
> **Vấn đề:** Người dùng chuyển tiền lần đầu cho người lạ lo lắng "tiền có tới đúng người không", dẫn tới bỏ ngang ở bước cuối.
> **Người dùng:** Người vừa nhập số tài khoản thủ công (không phải từ danh bạ), tâm lý cảnh giác.
> **Cần đạt:** Cho họ đủ tin tưởng để bấm gửi, giảm tỉ lệ bỏ ngang ở bước cuối.
> **Bắt buộc:** Tên người nhận phải hiển thị rõ trước khi tiền đi; toàn bước <300ms.
> **Câu hỏi mở:** Có nên cho xem lại trong bao lâu trước khi tự động tiếp tục không?

Designer đọc bản thứ hai sẽ hiểu *tại sao* và có không gian đề xuất giải pháp tốt hơn cái PO tự nghĩ ra.

## Nhắc cuối brief

Luôn nói với PO: brief này là **điểm khởi đầu cho hội thoại** với designer, không phải bản vẽ bằng chữ. Phần "câu hỏi mở" là nơi designer đóng góp chuyên môn.
