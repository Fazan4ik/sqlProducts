-- Завдання 1
/*
DECLARE @hour_now int = DATEPART(HOUR, GETDATE())
IF @hour_now BETWEEN 5 AND 11 PRINT 'Доброго ранку!'
ELSE IF @hour_now BETWEEN 12 AND 16 PRINT 'Доброго дня!'
ELSE IF @hour_now BETWEEN 17 AND 23 PRINT 'Доброго вечора!'
ELSE PRINT 'Спокійной ночі!' */

-- Завдання 2
/*
DECLARE @len_password int = 10
DECLARE @current int = 0
DECLARE @new_password nvarchar(20) = ''
DECLARE @r int
WHILE @current < @len_password
BEGIN
    SET @r = RAND() * 3
	SET @new_password += CASE @r 
				WHEN 0 THEN CHAR(RAND() * 26 + 65)
				 WHEN 1 THEN CHAR(RAND() * 26 + 97)
				 ELSE CHAR(RAND() * 10 + 48)
	                     END
	SET @current += 1
END

PRINT @new_password */

-- Завдання 3
/*
DECLARE @cur_num int = 0
DECLARE @factorial_num int = 0
DECLARE @max_num int = 20
DECLARE @total bigint = 0
WHILE @cur_num <= @max_num
BEGIN
    if @cur_num != 0
	BEGIN
		SET @total = 1
		SET @factorial_num = 1

		WHILE @factorial_num <= @cur_num
		BEGIN
			SET @total *= @factorial_num
			SET @factorial_num += 1
		END
	END
	PRINT convert(varchar, @cur_num) + '! - ' + convert(varchar, @total)
    SET @cur_num += 1
END */

-- Завдання 4
/*
DECLARE @cur int = 3
DECLARE @max_num int = 100000
DECLARE @div int
DECLARE @flag bit
WHILE @cur <= @max_num
BEGIN
    SET @div = 2
    SET @flag = 1
    WHILE @div * @div <= @cur
    BEGIN
        IF @cur % @div = 0 
        BEGIN
            SET @flag = 0
            BREAK
        END
        SET @div += 1
    END
    IF @flag = 1 PRINT @cur
    SET @cur += 1
END */

-- Завдання 5
DECLARE @capital INT = 500
DECLARE @costPerSpin INT = 10
DECLARE @balance INT = @capital
DECLARE @spinResult1 INT
DECLARE @spinResult2 INT
DECLARE @spinResult3 INT

WHILE @balance >= @costPerSpin
BEGIN
    SET @balance -= @costPerSpin

    SET @spinResult1 = CAST(RAND() * 7 + 1 AS INT)
	SET @spinResult2 = CAST(RAND() * 7 + 1 AS INT)
	SET @spinResult3 = CAST(RAND() * 7 + 1 AS INT)

    PRINT 'Результат крутки: ' + CAST(@spinResult1 AS NVARCHAR(10)) + ' - ' + CAST(@spinResult2 AS NVARCHAR(10)) + ' - ' + CAST(@spinResult3 AS NVARCHAR(10))
    
    IF @spinResult1 = @spinResult2 AND @spinResult2 = @spinResult3
	BEGIN
		SET @balance += 50
		PRINT 'Вітаємо, ви виграли 50 кредитів!'
	END
	ELSE IF @spinResult1 = 7 AND @spinResult2 = 7 AND @spinResult3 = 7
	BEGIN
		SET @balance += 777
		PRINT 'ДЖЕК ПОТ, ви виграли 777 кредитів!'
	END
	ELSE
	BEGIN
		PRINT 'Нажаль, ви не виграли'
		SET @balance -= 10
	END
PRINT 'баланс станом на зараз: ' + CAST(@balance AS NVARCHAR(10)) + ' кредитів'
PRINT '----------------------------------'
END

IF @balance < @costPerSpin
    PRINT 'Кінець гри, гроші закончились!'
