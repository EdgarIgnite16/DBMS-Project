-- Vì ta không có dữ liệu thực tế nên bài code được thực hiện trên 100% là ý tưởng

CREATE PROC sp_KetQua_Mon 
    @maSinhVien varchar(20), 
    @maMonHoc varchar(20)
AS
    BEGIN
        IF (EXISTS(SELECT * FROM SinhVien SV WHERE SV.MaSV = @maSinhVien))
            BEGIN
                -- Khởi tạo biến
                DECLARE @DiemSoCuaSinhVien FLOAT 
                
                -- Gán giá trị ta select được vào biến vừa được khởi tạo
                SELECT @DiemSoCuaSinhVien = KQ.Diem FROM KetQua KQ
                WHERE KQ.MaSV = @maSinhVien AND KQ.MaMH = @maMonHoc

                IF (@DiemSoCuaSinhVien > 5) 
                    BEGIN 
                        PRINT N'Đạt'
                    END
                ELSE
                    BEGIN
                        PRINT N'Chưa đạt'
                    END
            END
        ELSE 
            BEGIN
                PRINT N'Không tồn tại sinh viên này'
            END
    END 
GO

-- Thực hiện hàm
EXEC sp_KetQua_Mon N'SV001', N'MH001' -- Giả định