-- tạo  Stored Proccedure ko tham số
DELIMITER //
CREATE PROCEDURE findAllCustomers()
BEGIN
  SELECT * FROM customers;
END //
DELIMITER ;

call findAllCustomers();
-- kiểm tra xem SP đã tồn tại hay chưa , 
-- nếu tồn tại thì xoá rồi tạo lại
-- Stored Proccedure ko tham số
delimiter //
drop procedure if exists `findAllCustomers` //
create procedure findAllCustomers()
begin
select * from customers where customerNumber = 175;
end//