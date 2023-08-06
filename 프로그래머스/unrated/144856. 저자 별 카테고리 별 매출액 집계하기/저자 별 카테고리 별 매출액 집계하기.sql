-- 코드를 입력하세요
SELECT AUTHOR.AUTHOR_ID, AUTHOR.AUTHOR_NAME, BOOK.CATEGORY, SUM(BOOK.PRICE * BOOK_SALES.SALES) AS TOTAL_SALES
FROM BOOK_SALES
    JOIN BOOK ON BOOK.BOOK_ID = BOOK_SALES.BOOK_ID
    JOIN AUTHOR ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
WHERE BOOK_SALES.SALES_DATE LIKE "2022-01%"
GROUP BY AUTHOR.AUTHOR_NAME, BOOK.CATEGORY
ORDER BY AUTHOR.AUTHOR_ID ASC, BOOK.CATEGORY DESC;