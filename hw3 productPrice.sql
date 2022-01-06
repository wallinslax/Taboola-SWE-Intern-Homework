DROP TABLE if exists productPriceHistory;
DROP TABLE if exists products;

CREATE TABLE products (
 product_id INTEGER PRIMARY KEY,
 product_name TEXT NOT NULL,
 product_category TEXT NOT NULL
);

CREATE TABLE productPriceHistory (
 price_history_id INTEGER PRIMARY KEY,
 product_id INTEGER NOT NULL,
 price INTEGER NOT NULL,
 start_date TEXT NOT NULL,
 end_date TEXT,
 foreign key(product_id) references products(product_id)
);

insert into products (product_name, product_category)
values
('Dog', 'Pet'),
('Cat', 'Pet');

insert into productPriceHistory (product_id, price, start_date, end_date)
VALUES
(1, 5, '2021-01-01', '2021-01-03'),
(1, 10, '2021-01-04', '2021-01-05'),
(1, 15, '2021-01-06', NULL),
(2, 8, '2021-02-03', '2021-02-04'),
(2, 16, '2021-02-05', '2021-02-08'),
(2, 3, '2021-02-10', NULL)
;

select products.product_name, productPriceHistory.price
from products join productPriceHistory on products.product_id = productPriceHistory.product_id
where productPriceHistory.end_date is NULL;