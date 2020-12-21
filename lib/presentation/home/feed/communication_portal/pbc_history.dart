import 'package:flutter/material.dart';
import 'package:phanboichau_app/presentation/home/feed/widgets/row_title.dart';

class PBCHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiểu sử Phan Bội Châu'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Container(
            height: MediaQuery.of(context).size.width / 3,
            width: MediaQuery.of(context).size.width / 3,
            margin: const EdgeInsets.all(10.0),
            child: Image.asset('assets/images/pbc.jpg'),
          ),
          const RowTitle(
            title: 'Thân thế Phan Bội Châu',
            padding: 0,
          ),
          const Text(
            'Phan Bội Châu tên thật là Phan Văn San, tự là Hài Thu, bút hiệu là Sào Nam, Thị Hán, Độc Kinh Tử, Việt Điểu, Hàn Mãn Tử, v.v...Theo gia phả họ Phan, ông sinh ngày 26 tháng 12 năm 1867 tại làng Đan Nhiễm, xã Nam Hòa, huyện Nam Đàn, tỉnh Nghệ An, cha là Phan Văn Phổ, mẹ là Nguyễn Thị Nhàn. Ông nổi tiếng thông minh từ bé, năm 6 tuổi học 3 ngày thuộc hết Tam Tự Kinh, 7 tuổi ông đã đọc hiểu sách Luận Ngữ, 13 tuổi ông thi đỗ đầu huyện. Thuở thiếu thời ông đã sớm có lòng yêu nước. Năm 17 tuổi ông viết bài Hịch Bình Tây Thu Bắc đem dán ở cây đa đầu làng để hưởng ứng việc Bắc Kỳ khởi nghĩa kháng Pháp. Năm 19 tuổi (1885) ông cùng bạn Trần Văn Lương lập đội nghĩa quân Cần Vương chống Pháp nhưng việc không thành.Gia cảnh khó khăn, ông đi dạy học kiếm sống và học thi, nhưng thi suốt 10 năm không đỗ, lại can tội "hoài hiệp văn tự" (mang văn tự trong áo) án ghi "chung thân bất đắc ứng thí" (suối đời không được dự thi). Năm 1896, ông vào Huế dạy học, do mến tài ông nên các quan xin vua Thành Thái xóa án "chung thân bất đắc ứng thí". Khi được xóa án, ông dự khoa thi hương năm Canh Tý (1900) ở trường Nghệ và đậu Giải nguyên. Có tài liệu cho rằng bài làm của ông quá xuất sắc đến nỗi khi yết bảng, trường thi đã làm 2 bảng, 1 bảng ghi 5 chữ to "Giải nguyên Phan Bội Châu", bảng kia ghi tên những người thi đỗ còn lại. Câu Bảng một tên lừng lẫy tiếng làng văn từ đó mà ra.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const RowTitle(
            title: 'Phong trào Đông du',
            padding: 0,
          ),
          const Text(
            'Trong vòng 5 năm sau khi đỗ Giải nguyên, ông bôn ba khắp nước Việt Nam liên kết với các nhà yêu nước như Phan Chu Trinh, Huỳnh Thúc Kháng, Trần Quý Cáp, Nguyễn Thượng Hiền, Nguyễn Hàm (tức Tiểu La Nguyễn Thành), Đặng Nguyên Cẩn, Ngô Đức Kế, Đặng Thái Thân, Hồ Sĩ Kiện, Lê Huân, Nguyễn Quyền, Võ Hoành, Lê Đại để cùng họ chống Pháp. Ông chọn một hoàng thân nhà Nguyễn, Kỳ Ngoại Hầu Cường Để, làm lãnh tụ phong trào Cần Vương.\nNăm 1904, ông cùng 20 đồng chí họp mặt tại Quảng Nam để thành lập Hội Duy Tân.\nNăm 1905, ông cùng Tăng Bạt Hổ sang Trung Quốc rồi sang Nhật Bản để gặp gỡ các nhà cách mạng Nhật và Trung Quốc và cầu viện trợ tài chính cho phong trào do ông thành lập. Tại Trung Quốc ông gặp Lương Khải Siêu, và được khuyên nên dùng thơ văn để thức tỉnh lòng yêu nước của dân Việt. Nghe lời khuyên, ông viết nhiều tác phẩm có tác động lớn với sĩ phu trong nước(Việt Nam Quốc sử khảo (1909), Ngục Trung Thư, Lưu Cầu Huyết Lệ Tân Thư,Việt Nam Vong Quốc Sử, Việt Nam Quốc sử bình diễn ca (1927) …) Cùng thời điểm này chiến thắng của Nhật Bản tại trận Tsushima trong Chiến tranh Nga-Nhật đã tạo nên nhiều lạc quan trong các phong trào chống thực dân ở châu Á. Do đó, các tác phẩm của ông đã tạo nên một làn sóng mới thúc đẩy nhiều thanh niên yêu nước tham gia phong trào Đông Du, xuất ngoại học tập để tìm đường chống Pháp.Ngày 30 tháng 6 năm 1925, ông lại bị Pháp bắt tại Hàng Châu, ông bị dẫn giải về Hà Nội và xử án chung thân khổ sai. Về sau, bản án được đổi lại thành án quản thúc tại gia. Theo Việt Nam Pháp Thuộc Sử, ông được giảm án vì phản ứng mạnh mẽ của toàn dân đối với nhà cầm quyền Pháp.\nTừ năm 1926, ông bị đưa về sống ở Bến Ngự, Huế, cho đến khi mất tại Huế vào năm 1940. Lúc đó ông được gọi là Ông già Bến Ngự.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
