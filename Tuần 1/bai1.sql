-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE bai1
@a int ,
@b int,
@c int
AS
BEGIN
	if (@a =0 and @b=0)
		begin 
			print 'phuong trinh vô số nghiệm'
		end 
	if (@a !=0 and @b != 0 )
		begin
			print'phuong trinh vo nghiem'
		end
	if (@a!=0 )
		begin 
			print'phuong trinh có một nghiệm duy nhất'
		end
END
GO
execute bai1 2, 3, 0
