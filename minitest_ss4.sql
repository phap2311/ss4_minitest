drop database if exists quan_ly_du_lich;
create database if not exists quan_ly_du_lich;
use quan_ly_du_lich;
create table city(
id_city int primary key auto_increment,
name_city varchar(50) not null
);

create table visit_tour(
id_visit int primary key auto_increment,
name_visit varchar(50) not null,
description_visit varchar(50) not null,
price_avg int ,
id_city int,
foreign key (id_city) references city(id_city)
);
create table customer_tour(
id_customer int primary key auto_increment,
name_customer varchar(50) not null,
identification int not null,
birthday int,
id_city int,
foreign key (id_city) references city(id_city)
);
create table tour(
id_tour int primary key auto_increment,
code_tour varchar(50) not null,
name_tour varchar(50) not null
);

create table type_tour(
id_type int primary key auto_increment,
code_type_tour varchar(50) not null,
id_tour int,
id_visit int not null,
date_staft date not null,
date_end date not null,
foreign key (id_visit) references visit_tour(id_visit),
foreign key (id_tour) references tour(id_tour)
);
create table order_tour(
id_order int primary key auto_increment,
id_tour int,
id_customer int,
status_order varchar(50) not null,
foreign key (id_tour) references tour(id_tour),
foreign key (id_customer) references customer_tour(id_customer)
);
INSERT INTO `quan_ly_du_lich`.`city` (`id_city`, `name_city`) VALUES ('1', 'dong ha');
INSERT INTO `quan_ly_du_lich`.`city` (`id_city`, `name_city`) VALUES ('2', 'hue');
INSERT INTO `quan_ly_du_lich`.`city` (`id_city`, `name_city`) VALUES ('3', 'da nang');
INSERT INTO `quan_ly_du_lich`.`city` (`id_city`, `name_city`) VALUES ('4', 'tam ky');
INSERT INTO `quan_ly_du_lich`.`city` (`id_city`, `name_city`) VALUES ('5', 'quang ngai');

INSERT INTO `quan_ly_du_lich`.`visit_tour` (`id_visit`, `name_visit`, `description_visit`, `price_avg`, `id_city`) VALUES ('1', 'nha hat lon', 'dep', '10', '1');
INSERT INTO `quan_ly_du_lich`.`visit_tour` (`id_visit`, `name_visit`, `description_visit`, `price_avg`, `id_city`) VALUES ('2', 'kinh thanh hue', 'rong lon', '30', '2');
INSERT INTO `quan_ly_du_lich`.`visit_tour` (`id_visit`, `name_visit`, `description_visit`, `price_avg`, `id_city`) VALUES ('3', 'cau rong', 'dai', '15', '3');
INSERT INTO `quan_ly_du_lich`.`visit_tour` (`id_visit`, `name_visit`, `description_visit`, `price_avg`, `id_city`) VALUES ('4', 'hoi an', 'phon hoa', '35', '4');
INSERT INTO `quan_ly_du_lich`.`visit_tour` (`id_visit`, `name_visit`, `description_visit`, `price_avg`, `id_city`) VALUES ('5', 'ly son', 'dac sac', '100', '5');

INSERT INTO `quan_ly_du_lich`.`customer_tour` (`id_customer`, `name_customer`, `identification`, `birthday`) VALUES ('1', ' nguyen van an', '1234', '2007');
INSERT INTO `quan_ly_du_lich`.`customer_tour` (`id_customer`, `name_customer`, `identification`, `birthday`, `id_city`) VALUES ('2', 'nguyen van ban', '1345', '2009', '1');
INSERT INTO `quan_ly_du_lich`.`customer_tour` (`id_customer`, `name_customer`, `identification`, `birthday`, `id_city`) VALUES ('3', 'nguyen van can', '1456', '2005', '2');
INSERT INTO `quan_ly_du_lich`.`customer_tour` (`id_customer`, `name_customer`, `identification`, `birthday`, `id_city`) VALUES ('4', 'nguyen van dan', '1567', '2002', '3');
INSERT INTO `quan_ly_du_lich`.`customer_tour` (`id_customer`, `name_customer`, `identification`, `birthday`, `id_city`) VALUES ('5', 'nguyen van fan', '1678', '2007', '4');
INSERT INTO `quan_ly_du_lich`.`customer_tour` (`id_customer`, `name_customer`, `identification`, `birthday`, `id_city`) VALUES ('6', 'nguyen van gan', '1789', '2000', '5');
INSERT INTO `quan_ly_du_lich`.`customer_tour` (`id_customer`, `name_customer`, `identification`, `birthday`, `id_city`) VALUES ('7', 'nguyen van han', '1890', '2000', '5');
INSERT INTO `quan_ly_du_lich`.`customer_tour` (`id_customer`, `name_customer`, `identification`, `birthday`, `id_city`) VALUES ('8', 'nguyen van khan', '1901', '2001', '4');
INSERT INTO `quan_ly_du_lich`.`customer_tour` (`id_customer`, `name_customer`, `identification`, `birthday`, `id_city`) VALUES ('9', 'nguyen van man', '1012', '2008', '3');
INSERT INTO `quan_ly_du_lich`.`customer_tour` (`id_customer`, `name_customer`, `identification`, `birthday`, `id_city`) VALUES ('10', 'nguyen van nan', '1013', '2005', '2');

INSERT INTO `quan_ly_du_lich`.`tour` (`id_tour`, `code_tour`, `name_tour`) VALUES ('1', 'mt1', 'vip');
INSERT INTO `quan_ly_du_lich`.`tour` (`id_tour`, `code_tour`, `name_tour`) VALUES ('2', 'mt2', 'thuong');

INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('1', 'ctt1', '1', '2', '2000-03-15', '2000-04-30');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('2', 'ctt2', '2', '2', '2000-03-17', '2000-04-25');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('3', 'ctt3', '1', '2', '2000-01-11', '2000-02-15');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('4', 'ctt4', '2', '4', '2000-01-18', '2000-02-05');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('5', 'ctt5', '1', '5', '2000-03-19', '2000-05-29');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('6', 'ctt6', '2', '4', '2000-01-25', '2000-01-30');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('7', 'ctt7', '2', '3', '2000-01-27', '2000-01-31');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('8', 'ctt8', '1', '2', '2000-01-10', '2000-01-18');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('9', 'ctt9', '1', '1', '2000-01-18', '2000-01-19');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('10', 'ctt10', '1', '5', '2000-01-19', '2000-01-25');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('11', 'ctt11', '2', '1', '2000-01-18', '2000-01-25');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('12', 'ctt12', '2', '2', '2000-01-18', '2000-01-30');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('13', 'ctt13', '1', '3', '2000-01-19', '2000-01-30');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('14', 'ctt14', '1', '4', '2000-01-12', '2000-01-19');
INSERT INTO `quan_ly_du_lich`.`type_tour` (`id_type`, `code_type_tour`, `id_tour`, `id_visit`, `date_staft`, `date_end`) VALUES ('15', 'ctt15', '2', '5', '2000-01-16', '2000-01-19');

INSERT INTO `quan_ly_du_lich`.`order_tour` (`id_order`, `id_tour`, `id_customer`, `status_order`) VALUES ('1', '2', '1', 'cb');
INSERT INTO `quan_ly_du_lich`.`order_tour` (`id_order`, `id_tour`, `id_customer`, `status_order`) VALUES ('2', '1', '2', 'dg');
INSERT INTO `quan_ly_du_lich`.`order_tour` (`id_order`, `id_tour`, `id_customer`, `status_order`) VALUES ('3', '1', '3', 'cb');
INSERT INTO `quan_ly_du_lich`.`order_tour` (`id_order`, `id_tour`, `id_customer`, `status_order`) VALUES ('4', '1', '4', 'dg');
INSERT INTO `quan_ly_du_lich`.`order_tour` (`id_order`, `id_tour`, `id_customer`, `status_order`) VALUES ('5', '2', '5', 'dg');
INSERT INTO `quan_ly_du_lich`.`order_tour` (`id_order`, `id_tour`, `id_customer`, `status_order`) VALUES ('6', '1', '6', 'dg');
INSERT INTO `quan_ly_du_lich`.`order_tour` (`id_order`, `id_tour`, `id_customer`, `status_order`) VALUES ('7', '2', '7', 'cb');
INSERT INTO `quan_ly_du_lich`.`order_tour` (`id_order`, `id_tour`, `id_customer`, `status_order`) VALUES ('8', '1', '8', 'cb');
INSERT INTO `quan_ly_du_lich`.`order_tour` (`id_order`, `id_tour`, `id_customer`, `status_order`) VALUES ('9', '2', '9', 'cb');
INSERT INTO `quan_ly_du_lich`.`order_tour` (`id_order`, `id_tour`, `id_customer`, `status_order`) VALUES ('10', '1', '10', 'dg');

-- Thống kê số lượng tour của các thành phố
select count(type_tour.id_visit) as so_tour, city.name_city
from type_tour 
join visit_tour on  type_tour.id_visit = visit_tour.id_visit
join city on visit_tour.id_city = city.id_city
group by city.name_city;
-- Tính số tour có ngày bắt đầu trong tháng 3 năm 2020 ( dùng count) 
select count(id_tour) as so_tour
from type_tour
where month(date_staft) = 3;
-- Tính số tour có ngày kết thúc trong tháng 4 năm 2020
select count(id_tour) as so_tour
from type_tour
where month(date_end) = 4;





