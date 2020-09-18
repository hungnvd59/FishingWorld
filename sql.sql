--
-- Tạo database fishingworld
--
-- --------------------------------------------------------
CREATE DATABASE fishingworld;


--
-- use database fishingworld
--
-- --------------------------------------------------------
USE fishingworld;


--
-- Tạo table "admin"
--
-- --------------------------------------------------------
CREATE TABLE admin (
  admin_id int AUTO_INCREMENT NOT NULL,
  admin_name varchar(50) NOT NULL,
  user_name varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  mail_address varchar(50) NOT NULL,
  PRIMARY KEY (admin_id)
);


--
-- Tạo table "category"
--
-- --------------------------------------------------------
CREATE TABLE category (
  category_id int AUTO_INCREMENT NOT NULL,
  category_name varchar(50) NOT NULL,
  PRIMARY KEY (category_id)
);


--
-- Tạo table "order"
--
-- --------------------------------------------------------
CREATE TABLE order_detail (
  order_id int AUTO_INCREMENT NOT NULL,
  customer_name varchar(50) NOT NULL,
  phone_number varchar(15) NOT NULL,
  address varchar(255) NOT NULL,
  total float(15) NOT NULL,
  date date NOT NULL,
  status bit NOT NULL,
    PRIMARY KEY (order_id)

);


--
-- Tạo table "product"
--
-- --------------------------------------------------------
CREATE TABLE product (
  product_id int  AUTO_INCREMENT NOT NULL,
  category_id int NOT NULL,
  product_name varchar(255) NOT NULL,
  title varchar(255) NOT NULL,
  blog varchar(255) NULL,
  price float(15) NOT NULL,
  quantity int NOT NULL,
  image varchar(255) NOT NULL,
  views int NOT NULL,
  description nvarchar(255) NULL,
      PRIMARY KEY (product_id)

);



--
-- Tạo table "order_detail"
--
-- --------------------------------------------------------
CREATE TABLE order_detail_main (
  order_detail_id int AUTO_INCREMENT NOT NULL,
  order_id int NOT NULL,
  product_id int NOT NULL,
  quantity int NOT NULL,
  amount float(15) NOT NULL,
  PRIMARY KEY (order_detail_id)
);


--
-- Thêm PRIMARY KEY cho table admin
--
-- --------------------------------------------------------
ALTER TABLE admin
ADD PRIMARY KEY (admin_id);


--
-- Thêm PRIMARY KEY cho table category
--
-- --------------------------------------------------------
ALTER TABLE category
ADD PRIMARY KEY (category_id);


--
-- Thêm PRIMARY KEY cho table order
--
-- --------------------------------------------------------
ALTER TABLE [order]
ADD PRIMARY KEY (order_id);

--
-- Thêm PRIMARY KEY cho table product
--
-- --------------------------------------------------------
ALTER TABLE product
ADD PRIMARY KEY (product_id);


--
-- Thêm PRIMARY KEY cho table order_detail
--
-- --------------------------------------------------------
ALTER TABLE order_detail_main
ADD PRIMARY KEY (order_detail_id, order_id, product_id)


--
-- Các ràng buộc cho bảng order_detail
--;
ALTER TABLE order_detail_main
ADD CONSTRAINT order_detail_ibfk_1
FOREIGN KEY (order_id) REFERENCES order_detail (order_id);
ALTER TABLE order_detail_main
ADD CONSTRAINT order_detail_ibfk_2
FOREIGN KEY (product_id) REFERENCES product (product_id);

--
-- Các ràng buộc cho bảng product
--
ALTER TABLE product
ADD CONSTRAINT product_ibfk_1 FOREIGN KEY (category_id) REFERENCES category (category_id);










--
-- INSERT thông tin table admin
--
INSERT INTO admin (admin_name, user_name, password,mail_address) VALUES
('Thuy Nguyen', 'ntmthuy', 'mt123456','15130189@st.hcmuaf.edu.vn'),
('Quang Thanh', 'thanhtq', 'It12345!','monken007@gmail.com');

-- --------------------------------------------------------


--
-- INSERT thông tin table category
--
INSERT INTO category (category_name) VALUES
(N'Cần câu'),
(N'Mồi câu'),
(N'Máy câu'),
(N'Dây câu'),
(N'Phao-Chì'),
(N'Lưỡi'),
(N'Phụ kiện câu');

-- --------------------------------------------------------


--
-- INSERT thông tin table order
--
INSERT INTO order_detail (customer_name, phone_number, address, total, date, status) VALUES
(N'Nguyễn Văn A', '113', N'Dương Liễu - Hoài Đức - HN', 16500000, '2017-06-24', 1),
(N'Nguyễn Văn B', '114', N'Nghệ An', 16500000, '2017-06-24', 1),
(N'Nguyễn Văn C', '115', N'Hải Phòng', 21000000, '2017-06-24', 1);


-- --------------------------------------------------------

--
-- INSERT thông tin table product
--
INSERT INTO product (category_id, product_name,title,blog ,price, quantity, image, views, description)
  VALUES (1, N'CẦN CÂU CACBON ABU GARCIA RED 2M4-CẦN CÂU CÁ','','', 1080000, 68, 'static/images/cauca/can-cacbon.jpg', 69, N'Thiết kế bắt mắt,chất lượng tuyệt hảo từ thương hiệu hàng đầu của thế giới.'),
  (1, N'CẦN CÂU CÁ 2 KHÚC DAIWA SWEEPFIRE 702MHFS-CẦN CÂU CÁ','','', 550000, 48, 'static/images/cauca/can-2-khuc-daiwa.jpg', 100, N'- Cần câu cá 2 khúc DAIWA SWEEPFIRE 702MHFS - Cần câu cá'),
  (2, N'MỒI CÂU LUCKY HEART FROG-MỒI CÂU CÁ','','', 129000, 57,'static/images/cauca/moi-cau-lucky.jpg', 73, N'-Chất liệu: Gỗ'),
  (2, N'MỒI CÁ 6 KHÚC-MỒI CÂU CÁ', '','',119000, 19, 'static/images/cauca/moi-cau-6-khuc.jpg', 0, N'Chất liệu: nhựa ABS'),
  (3, N'MÁY CÂU ĐỨNG YOLO CS4000 - MÁY CÂU CÁ', '','',250000, 30, 'static/images/cauca/may-cau-yolo.jpg', 0, N'- Xuất xứ: Đài Loan'),
  (3, N'MÁY CÂU CÁ PIONNER INFERNO INO - 201 - MÁY NGANG', '','',1010000, 10, 'static/images/cauca/may-cau-pioner.jpg', 0, N'- Thương hiệu: Pionner'),
  (4, N'CƯỚC CÂU CÁ OKAMOTO 7 MÀU', '','',185000, 36, 'static/images/cauca/day-cau-7-mau.jpg', 0, N'Chất liệu: sợi nylon.'),
  (5, N'XPHAO CÂU CÁ BFX', '','',60000, 48, 'static/images/cauca/phao-bfx.jpg', 0, N'Chiều dài : 300mm'),
  (5, N'Phao lục chân chì ', '','',40000, 54, 'static/images/cauca/phao-luc-chan-chi.jpg', 0, N'Phao câu lục'),
  (6, N'HỘP 4 LƯỠI LANCE CÂU CÁ', '','',95000, 40, 'static/images/cauca/luoi-lance.jpg', 0, N'BỘ LƯỠI LANCE CÂU CÁ CHÉP, CÁ TRẮM, CÁ ME, CÁ TRA... - LƯỠI CÂU CÁ'),
  (7, N'TÚI ĐỰNG CÁ FM1', '','',65000, 40, 'static/images/cauca/tui-dung-ca.jpg', 0, N'Sản xuất : Việt Nam');


--
-- INSERT thông tin table order_detail
--
INSERT INTO order_detail_main (order_id, product_id, quantity, amount) VALUES
(1, 1, 1, 16500000),
(2, 1, 1, 16500000),
(3, 4, 1, 21000000);

-- --------------------------------------------------------


