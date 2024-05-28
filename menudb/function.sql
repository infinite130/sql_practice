-- BUILD IN FUNCTIONS

-- 문자열 관련 함수

SELECT ascii('A');

-- CONCAT 문자열을 이어붙이는 함수

SELECT CONCAT('TIGER',' ','PIG');
SELECT CONCAT_WS(',','TIGER','PIG');
SELECT concat_ws('-','2023','05','30');

-- ELT(위치, 문자열1, 문자열2,...) - FIELD(찾을문자열,문자열1,문자열2...)
-- FIND_IN_SET(찾을 문자열, 문자열 리스트..) INSTR(기본문자열,부분문자열)
-- LOCATE(부분문자열,기준문자열)

SELECT ELT(2,'APPLE','STRAWBERRY','BANANA'); -- 해당 위치의 문자열 반환
SELECT FIELD('STRAWBERRY','APPLE','STRAWBERRY','BANANA'); -- 찾을 문자열 위치 반환
SELECT find_in_set('banana','apple,strawberry,banana'); -- 찾을 문자열 위치 반환
SELECT INSTR('APPLEMANGOBANANA','MANGO'); -- 기존 문자열에서 부분 문자열의 시작 위치 반환
SELECT LOCATE('MANGO','APPLEMANGOBANANA');

-- FORMAT
SELECT FORMAT(123123123123.3456443,3);

-- BIN(2) OCT(8) HEX(16)
SELECT BIN(65), OCT(65), HEX(65);

-- INSERT(기준 문자열, 위치, 길이, 삽입할 문자열);
SELECT INSERT('MY NAME IS...',7,3,'MARK');


-- LEFT(문자열, 길이) RIGHT(문자열, 길이)
SELECT LEFT('HELLO WORLD',3), RIGHT('HELLO WORLD',3);

-- UPPER(문자열), LOWER(문자열)
SELECT LOWER('hello World'), UPPER('HELLO WOlrd');

-- LPAD(문자열, 길이, 채울문자열) RPAD(문자열, 길이, 채울문자열)
SELECT LPAD('LEFT',6,'@'), RPAD('RIGHT',6,'@');

-- LTRIM(문자열), RTRIM(문자열)
SELECT ltrim('   left'), rtrim('right    ');

-- TRIM(문자열)
SELECT TRIM(' MYSQL ');
SELECT TRIM(BOTH '@' FROM '@@@MYSQL@@@');
-- LEADING(앞) , BOTH(양쪽), TRALING(뒤)

-- REPEAT(문자열, 횟수)
SELECT REPEAT('MYSQL',3);

-- REPLACE(문자열, 찾을 문자열, 바꿀 문자열)
SELECT REPLACE('MYSQL','MY','My');

-- REVERSE(문자열)
SELECT REVERSE('STRESSED');

-- SPACE(길이)
SELECT CONCAT('HELLO',SPACE(5),'WORLD',SPACE(3),':D');

-- SUBSTRING(문자열, 시작위치, 길이)
SELECT substring('HELLO :D',7,2);
SELECT substring('HELLO :D',7);

-- SUBSTRING_INDEX(문자열, 구분자, 횟수)
SELECT substring_index('skfo.3219@gmail.com','.',1);

-- ABS(숫자)
SELECT ABS(-123);

-- CEILING(숫자) 올림, FLOOR(숫자) 버림, ROUND(숫자) 반올림
SELECT CEILING(1234.46), FLOOR(1234.46), ROUND(1234.46);

-- CONV(숫자, 원래 진수, 변환할 진수)
SELECT CONV('2351',10,2), CONV('A',16,8);

-- POW(숫자1, 숫자2) SQRT(숫자)
SELECT POW(2,4), SQRT(16);

-- RAND()
-- 0이상 1미만의 실수
-- M과 N사이의 임이의 정수를 구하려면
SELECT RAND(), FLOOR(RAND() * (11-1)+1);

-- SIGN(숫자)
SELECT SIGN(10.1), SIGN(0), SIGN(-19);

-- TRUNCATE(숫자,정수)
-- 소수점을 기준으로 정수 위치까지 구하고 나머지는 버린다
SELECT TRUNCATE(12345.12345,2);


-- ADDDATE(날짜,차이), SUBDATE(날짜,차이)
SELECT ADDDATE('2007-05-31',INTERVAL 30 DAY);
SELECT SUBDATE('2007-05-31',INTERVAL 30 DAY);

-- addtime()
SELECT ADDTIME('2023-04-31 09:00:00','1:0:1');
SELECT subtime('2023-04-31 09:00:00','1:0:1');

-- CURDATE(), CURTIME(), NOW(), SYSDATE()
SELECT CURDATE(), CURTIME(),NOW(),SYSDATE();

SELECT YEAR(CURDATE()),MONTH(CURDATE()),DAYOFMONTH(CURDATE());
SELECT HOUR(CURTIME()),MINUTE(CURTIME()),SECOND(current_time()),microsecond(current_time());

-- DATEDIFF(날짜1, 날짜2), TIMEDIFF(날짜또는시간1, 날짜또는시간2)
SELECT DATEDIFF('2024-05-30',NOW());
SELECT TIMEDIFF('17:07:11',CURTIME());

-- DAYOFWEEK(날짜), MONTHNAME(), DAYOFYEAR()
SELECT DAYOFWEEK(CURDATE());
SELECT monthname(CURDATE());
SELECT dayofyear(CURDATE());

-- MAKEDATE
SELECT MAKEDATE(YEAR(CURDATE()), DAYOFYEAR(CURDATE()));


-- PERIOD_ADD(연도 개월수)
SELECT period_add(202305,6);

-- QURTER
SELECT quarter(CURDATE());








































