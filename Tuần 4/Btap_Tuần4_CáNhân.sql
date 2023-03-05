-- Các câu truy vấn đơn giản
-- Câu 1
SELECT MANV, HONV, TENLOT, TENNV
FROM NHANVIEN
WHERE PHONG = 'NC'

-- Câu 2
SELECT MANV, HONV, TENLOT, TENNV, PHAI
FROM NHANVIEN
WHERE MLUONG > 3000000

-- Câu 3
SELECT HONV + ' ' + TENLOT + ' ' + TENNV AS 'TENNV', PHONG
FROM NHANVIEN
WHERE MLUONG BETWEEN 2000000 AND 3000000

-- Câu 4
SELECT HONV + ' ' + TENLOT + ' ' + TENNV AS 'TENNV'
FROM NHANVIEN
WHERE DCHI LIKE'%TpHCM'

-- Câu 5
SELECT NGSINH, DCHI
FROM NHANVIEN
WHERE HONV ='Dinh' and TENLOT='Ba' and TENNV='Tien'

--Câu 6
SELECT TENTN
FROM THANNHAN
WHERE YEAR(GETDATE())-YEAR(NGSINH)<18 and MANV ='001'

--Câu 7
SELECT HONV + ' ' + TENLOT + ' ' + TENNV AS 'TENNV'
FROM NHANVIEN
WHERE YEAR(GETDATE())-YEAR(NGSINH)>30 and PHAI='NU'

-- Phép kết
-- Câu 8

-- Câu 9

-- Câu 10

-- Câu 11

-- Câu 12

-- Câu 13

-- Câu 14

-- Câu 15

-- Câu 16

-- Câu 17

-- Gom nhóm
-- Câu 18

-- Câu 19


-- Câu 20

-- Câu 21

-- Câu 22


-- Câu truy vấn lồng

-- Câu 23

-- Câu 24

-- Câu 25

-- Câu 26

-- Câu 27


-- Câu 28

-- Câu 29

-- câu 30

-- Câu 31


-- Phép chia
-- Câu 32

-- Câu 33

-- Câu 34
