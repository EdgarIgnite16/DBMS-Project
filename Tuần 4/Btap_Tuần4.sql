USE QLSV_Lenh
GO
-- Làm bài tập tại đây
-- Câu 1
SELECT * FROM SVIEN
WHERE MAKHOA = 'TOAN'
GO
-- Câu 2

-- Câu 3

-- Câu 4

-- Câu 5

-- Câu 6

-- Câu 7

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

-- Câu 18
SELECT * FROM MHOC mh
WHERE mh.MAKHOA like 'TOAN' AND mh.MAMH NOT IN (
    SELECT hp.MAMH FROM HPHAN hp
    WHERE hp.HOCKY = 1 AND hp.NAM = 1996
    AND hp.MAMH = mh.MAMH
)

-- Câu 19
SELECT * FROM SVIEN sv
WHERE sv.MAKHOA = 'TOAN'
AND sv.NAM = 3
AND sv.MASV NOT IN (
    SELECT sv.MASV FROM KQUA kq, HPHAN hp, MHOC mh
    WHERE mh.TENMH like 'Cơ sở dữ liệu' 
    AND hp.HOCKY = 1 AND hp.NAM = 1996
    AND mh.MAMH = hp.MAMH
    AND hp.MAHP = kq.MAHP
    AND kq.MASV = sv.MASV
)

-- Câu 20
SELECT * FROM SVIEN sv ,(
    SELECT kq.MASV 'MASV', COUNT(*) 'COUNT' FROM KQUA kq, HPHAN hp
    WHERE hp.HOCKY = 1 AND hp.NAM = 1996
    AND hp.MAHP = kq.MAHP
    GROUP BY kq.MASV
) tb2
WHERE tb2.COUNT >= 3 AND sv.MASV = tb2.MASV
