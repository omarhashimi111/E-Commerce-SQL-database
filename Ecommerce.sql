CREATE TABLE `users` (
  `id` integer PRIMARY KEY,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `email` varchar(255),
  `password` varchar(255),
  `address` varchar(255),
  `phone` number,
  `created_at` timestamp
);

CREATE TABLE `buyer` (
  `buyer_id` int PRIMARY KEY,
  `user_id` int,
  `COD_limit` int DEFAULT 5000,
  `fine` int DEFAULT 0
);

CREATE TABLE `seller` (
  `seller_id` int PRIMARY KEY,
  `user_id` int,
  `company_name` varchar(255),
  `balance` int DEFAULT 0,
  `created_at` timestamp
);

CREATE TABLE `Product` (
  `product_id` int PRIMARY KEY,
  `name` varchar(255),
  `description` text,
  `price` decimal,
  `seller_id` int,
  `category` int,
  `used` boolean,
  `rate` int,
  `created_date` timestamp
);

CREATE TABLE `ShoppingCart` (
  `shopping_cart_id` int PRIMARY KEY,
  `product_id` int,
  `buyer_id` int,
  `quantity` int,
  `unit_price` decimal,
  `total_price` decimal
);

CREATE TABLE `Category` (
  `category_id` int PRIMARY KEY,
  `name` varchar(255),
  `parent_category` int
);

CREATE TABLE `ProductImg` (
  `product_img_id` int PRIMARY KEY,
  `product_id` int,
  `url` varchar(255)
);

CREATE TABLE `Orders` (
  `orders_id` int PRIMARY KEY,
  `seller_id` int,
  `buyer_id` int,
  `product_id` int,
  `delivery_method` int,
  `rate` int,
  `commment` varchar(255),
  `date` timestamp,
  `status` enum(pending,process,delivered,canceled)
);

CREATE TABLE `DeliveryMethods` (
  `delivery_method_id` int PRIMARY KEY,
  `shipping_method` varchar(255),
  `delivery_time` varchar(255),
  `cost` int
);

ALTER TABLE `users` ADD FOREIGN KEY (`id`) REFERENCES `buyer` (`user_id`);

ALTER TABLE `users` ADD FOREIGN KEY (`id`) REFERENCES `seller` (`user_id`);

ALTER TABLE `Category` ADD FOREIGN KEY (`parent_category`) REFERENCES `Category` (`category_id`);

ALTER TABLE `DeliveryMethods` ADD FOREIGN KEY (`delivery_method_id`) REFERENCES `Orders` (`delivery_method`);

ALTER TABLE `Orders` ADD FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`);

ALTER TABLE `ShoppingCart` ADD FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`);

ALTER TABLE `Product` ADD FOREIGN KEY (`product_id`) REFERENCES `ShoppingCart` (`product_id`);

ALTER TABLE `Product` ADD FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`);

ALTER TABLE `ProductImg` ADD FOREIGN KEY (`product_img_id`) REFERENCES `Product` (`product_id`);

ALTER TABLE `Category` ADD FOREIGN KEY (`category_id`) REFERENCES `Product` (`category`);

ALTER TABLE `Orders` ADD FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`);

ALTER TABLE `Orders` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`product_id`);
