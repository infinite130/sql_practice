-- DML (Data Manipulation Language) 데이터 조작 언어

-- 테이블에 값을 삾입하거나 수정하거나 삭제하는 언어
-- insert, update, delete, select

-- insert
-- 새로운 행을 추가하는 구문이다 테이블의 행의 수가 증가한다

INSERT INTO tbl_menu(
	menu_code,
    menu_name,
	menu_price,
    category_code,
    orderable_status
) VALUES (
	'바나나 해장국',
	8500,
	4,
	'Y'
);
SELECT * FROM tbl_menu;

INSERT INTO tbl_menu VALUES(null, '바나나해장국', 8500, 4, 'Y');

INSERT INTO tbl_menu(
	orderable_status,
    menu_price,
    menu_name,
    category_code
) VALUES (
	'Y',
    5500,
    '파인애플탕',
    4
);

INSERT INTO tbl_menu
VALUES (
	null,
    '순대국밥',
    8500,
    (SELECT category_code FROM tbl_category WHERE category_name = '한식'),
    'Y'
);

INSERT INTO tbl_menu
VALUES
	(null, '참치아이스크림', 1700, 12, 'Y'),
    (null, '멸치아이스크림', 1500, 11, 'Y');
   
   
-- update
-- 테이블에 기록된 컬럼의 값을 수정하는 구문이다 전체 행 갯수는 변화가 없다 ALTER

UPDATE tbl_menu
  SET menu_name = "델몬트바나나"
WHERE menu_name = "바나나 해장국";

SELECT * FROM tbl_menu;

UPDATE tbl_menu
  SET category_code = 6
WHERE menu_price IN (
  SELECT 
	menu_price
    FROM (SELECT * FROM tbl_menu) AS a
    WHERE menu_name = '델몬트바나나'
);

-- DELETE
-- 행을 삭제하는 구문이다 테이블의 행의 갯수가 줄어든다

DELETE FROM tbl_menu
	WHERE menu_name = '순대국밥';
    
SELECT * FROM tbl_menu;

DELETE FROM tbl_menu
ORDER BY menu_price DESC
LIMIT 2;

SELECT * FROM tbl_menu ORDER BY menu_price DESC;


SELECT
*
FROM tbl_menu
WHERE orderable_status = 'Y';

UPDATE tbl_menu SET orderable_status = 'N'
WHERE menu_code = 24;


-- INSERT 시에 충돌이 발생할 수 있다면 REPLACE 를 통해 중복된 데이터를 덮얼 쓸 수 있다

REPLACE INTO tbl_menu VALUES(1, '참기름라떼', 5000, 10, 'Y');

SELECT * FROM tbl_menu;

-- TRANSACTION
-- 데이터베이스에서 한번에 수행되는 작업의 단위
-- 시작, 진행, 종료 단계를 가지며 중간에 오류가 발생하면 ROLLBACK 을 수행하고
-- 제대로 반영하기 위해서는 COMMIT 을 진행한다

SET autocommit = 0;

START TRANSACTION;

SELECT * FROM tbl_menu;
INSERT INTO tbl_menu VALUES (null, '바나나해장국', 8500, 4, 'Y');
UPDATE tbl_menu SET menu_name = '수정된 메뉴' WHERE menu_code = 5;
DELETE FROM tbl_menu WHERE menu_code = 7;

ROLLBACK;


SET autocommit = 1;











