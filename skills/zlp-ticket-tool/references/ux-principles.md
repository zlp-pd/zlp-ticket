# 6 nguyên tắc UX của designer Zalopay

Bộ nguyên tắc designer dùng để tư duy và tự đánh giá công việc. Skill dùng chúng xuyên suốt: (a) VALIDATE — soi idea sâu hơn; (b) đào sâu — biến thành câu hỏi cho PO; (c) BRIEF/TICKET — viết sao cho designer "pass" ngay, không phải bóc ngược; (d) WIREFRAME — làm lý do cho mỗi UX treatment. KHÔNG trình bày cả 6 ra như bài giảng — dùng để hỏi và để giải thích, gọn.

Nguyên tắc phải **cắt được**: khi đứng trước hai lựa chọn, nó giúp biết chọn cái nào và dám nói "không" với cái còn lại.

## P1 — Evidence over Opinion
Quyết định dựa trên bằng chứng về user thật, không dựa trên ai chức danh cao hay nói to nhất. Phân biệt "user *nói*" và "user *làm*". Chưa có data thì gọi đúng tên: giả định (hypothesis), cần kiểm chứng — đừng trình bày giả định như sự thật.
- **Câu hỏi đào sâu:** User thật là ai? Đã có data/hành vi/CS ticket nào chứng minh nhu cầu, hay đang là giả định?
- **Khi validate:** idea dựa trên hành vi quan sát được hay cảm tính? Có confirmation bias không?
- **Khi viết brief/ticket:** đính kèm mẩu bằng chứng dù nhỏ; linh cảm thì ghi rõ "giả định". Đừng dùng "best practice" thay cho evidence về user của mình.

## P2 — Problem before Solution
Hiểu vấn đề thật trước khi vẽ giải pháp. Giải pháp đẹp cho sai vấn đề = lãng phí. Ở Zalopay, "yêu cầu" thường tới dưới dạng giải pháp đóng gói sẵn ("làm cho tôi cái popup này") thay vì vấn đề ("user không hiểu vì sao giao dịch pending"). Phân biệt symptom và gốc.
- **Câu hỏi đào sâu:** Khoảnh khắc đau thật của user là gì? Ở bước nào họ bỏ cuộc / bối rối?
- **Khi validate:** cái PO mô tả là *vấn đề* hay *giải pháp trá hình*? Giải xong thì đổi gì?
- **Khi viết brief/ticket:** mục "Context/Vấn đề" diễn đạt theo góc user, KHÔNG kê giải pháp.

## P3 — Design for Reality, not the Happy Path
Thiết kế cho điều kiện thật: mạng yếu, thao tác nhầm, OTP không tới, pending, thất bại. Với fintech, edge case xảy ra hàng ngày. Luôn có recovery path; trung thực trạng thái tiền (pending ≠ success). Empty state là cơ hội dẫn dắt.
- **Câu hỏi đào sâu:** Những lúc nào flow này dễ hỏng? User lo lắng điều gì khi chờ / khi lỗi?
- **Khi viết ticket:** liệt kê đủ state; Case Matrix là cách thể hiện P3 rõ nhất khi có nhiều nhánh.
- **Khi wireframe:** lý do chính cho cách xử lý pending, lỗi, empty, trấn an.

## P4 — Know When Not To
Biết khi nào KHÔNG làm: không thêm màn/tính năng làm loãng, không mở scope vô tội vạ. Nói "không" kèm lý do.
- **Câu hỏi đào sâu:** Phần nào có thể KHÔNG cần ở v1?
- **Khi viết ticket:** mục "Ngoài phạm vi / out of scope" rõ ràng để tránh scope creep.

## P5 — Tie Everything to Impact
Mọi việc phải nối tới tác động cụ thể lên user/business. Không nói được "đổi điều gì" thì chưa nên làm. Bảo vệ khỏi bẫy "đẹp vì đẹp".
- **Câu hỏi đào sâu:** Hành vi/chỉ số nào cần thay đổi để tính năng coi là thành công?
- **Khi viết ticket:** mục "Mục tiêu / định nghĩa thành công" đo được; mỗi requirement nối được tới mục tiêu.

## P6 — Share the Thinking
Để lại lý do quyết định, không chỉ output. Giúp người sau hiểu, tránh lặp tranh luận cũ.
- **Khi viết brief:** phần "Câu hỏi mở" + ghi WHY cho ràng buộc.
- **Khi wireframe:** mỗi UX treatment PHẢI kèm lý do (nguyên tắc nào) — đó là P6 tại chỗ.

## Bảng khớp nối nhanh (khi viết brief/ticket)
| Mục (khớp 7 mục Kick-off) | Nguyên tắc |
|---|---|
| Problem (góc user, không solution) | P2 |
| Data / signal (evidence, không cảm tính) | P1 |
| Người dùng & bối cảnh (kèm evidence/giả định) | P1 |
| Success Metric (đo được) | P5 |
| Product Requirement — ngoài phạm vi (out of scope) | P4 |
| Trạng thái & edge case / Case Matrix | P3 |
| Câu hỏi mở + WHY cho ràng buộc | P6 |

*Timeline không gắn nguyên tắc UX — là ràng buộc lịch, nhưng vẫn bắt buộc trong ticket Kick-off.*

Một mục còn trống hoặc mơ hồ chính là chỗ designer sẽ "flag" — lấp đầy trước khi gửi.
