ALTER PROC InBangCuuChuong
    @x int
AS
    BEGIN
        DECLARE @i INT = 1
        WHILE @i <= 10
            BEGIN
                DECLARE @kq INT = @x * @i
                PRINT @kq
                
                -- tang gia tri
                SET @i = @i + 1
            END    
    END
GO

EXEC InBangCuuChuong 5
