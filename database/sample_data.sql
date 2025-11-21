USE ecommerce_db;

-- Note: Passwords are all "password"
INSERT INTO Users (user_id, first_name, last_name, email, phone_number, tax_id, password_hash)
VALUES
(1, "Arya", "Hassibi", "arya@user.com", "+905301234567", "12345678901", SHA2("password", 256)),
(2, "Beste", "Bayhan", "bestebayhan@user.com", "+905302345678", "23456789012", SHA2("password", 256)),
(3, "Mustafa", "Topcu", "mustafatopcu@user.com", "+905303456789", "34567890123", SHA2("password", 256)),
(4, "Orhun Ege", "Ozpay", "orhun@user.com", "+905304567890", "45678901234", SHA2("password", 256)),
(5, "Eid", "Alhamali", "eid@user.com", "+905305678901", "56789012345", SHA2("password", 256)),
(6, "Ecem", "Akın", "ecem@user.com", "+905306789012", "67890123456", SHA2("password", 256)),
(7, "Test", "User", "test@user.com", "+905309012345", "90123456789", SHA2("password", 256));

INSERT INTO Categories (category_id, name, description)
VALUES
(1, "Blend Masterpieces", "Expertly curated mixes of beans for balanced and complex flavors."),
(2, "Seasonal Favorites", "Limited-time blends inspired by the seasons."),
(3, "Award-Winning Coffees", "Recognized and celebrated beans for their exceptional quality."),
(4, "Experimental Roasts", "Innovative roasting techniques for adventurous coffee lovers."),
(5, "Decade Favorites", "Timeless classics loved by our customers over the years.");

INSERT INTO DeliveryOptions (delivery_option_id, name, cost, description)
VALUES
(1, "Standard Shipping", 29.99, "Delivery in 5-7 business days."),
(2, "Express Shipping", 59.99, "Delivery in 2-3 business days."),
(3, "Overnight Shipping", 119.99, "Next business day delivery.");

INSERT INTO Products (product_id, name, origin, roast_level, bean_type, grind_type, flavor_profile, processing_method, caffeine_content, category_id, description, warranty_status, distributor_info)
VALUES
(1, "Sunrise Over the Serengeti", "Tanzania", "Light", "Arabica", "Whole Bean", "Citrus and floral whispers", "Washed", "High", 1, 
    "Like the first light kissing the vast plains of the Serengeti, this coffee feels alive. Notes of citrus and delicate florals bloom with every sip, reminding you of new beginnings and untamed beauty.", 
    FALSE, "Tanzanian Treasures Ltd."),

(2, " Bolivian Echoes", "Bolivia", "Medium", "Blend", "Ground", "Nutty with a whisper of cocoa", "Honey-processed", "Half-Caf", 2, 
    "A quiet symphony that lingers in the soul like the echoes of Andean pan flutes. Its nutty richness and subtle cocoa notes evoke mountain trails and misty mornings.", 
    TRUE, "Bolivia Bean Collective"),

(3, "The Midnight Drifter", "Ethiopia", "Espresso", "Arabica", "Ground", "Dark chocolate and blackberry", "Natural", "High", 3, 
    "A bold companion for sleepless nights and untold stories. Its intense dark chocolate depth and blackberry intrigue feel like wandering under a canopy of stars.", 
    FALSE, "Ethiopian Coffee Routes"),

(4, "Costa Rican Summer", "Costa Rica", "Light", "Arabica", "Ground", "Citrus and honeydew", "Washed", "High", 3, 
    "The brightness of citrus and a soft hint of honeydew carry you to endless beaches and golden sunsets. A sip is a reminder of warmth and carefree days.", 
    TRUE, "Costa Rica Coffee & Co."),

(5, "Guatemalan Volcano Heart", "Guatemala", "Dark", "Blend", "Whole Bean", "Caramel and red wine", "Natural", "High", 5, 
    "Forged in the heart of volcanic soil, this coffee ignites the senses with rich caramel sweetness and a red wine finish. A tribute to the land's fiery soul.", 
    FALSE, "Guatemala Coffee Legends"),

(6, "Cuban Memory Lane", "Cuba", "Espresso", "Robusta", "Whole Bean", "Cocoa and brown sugar", "Washed", "High", 4, 
    "A rich, nostalgic blend that whispers of Havana's cobbled streets and sunlit afternoons. Hints of cocoa and brown sugar evoke the rhythm of a simpler time.", 
    TRUE, "Havana Coffee Roasters"),

(7, "Indonesian Silk", "Indonesia", "Medium", "Arabica", "Whole Bean", "Velvety with soft spice", "Honey-processed", "Half-Caf", 4, 
    "Soft and smooth, like the flowing silk of ancient Java. Subtle spices weave through each sip, leaving an impression as graceful as it is unforgettable.", 
    FALSE, "Indo Luxe Beans"),

(8, "Misty Hills of Rwanda", "Rwanda", "Light", "Blend", "Ground", "Blackberry and jasmine", "Washed", "Decaf", 3, 
    "Ethereal and serene, this blend transports you to rolling mist-covered hills. Its delicate blackberry and jasmine notes whisper peace and stillness.", 
    TRUE, "Rwanda Bean Collective"),

(9, "Santiago at Dusk", "Chile", "Dark", "Liberica", "Whole Bean", "Earthy with a molasses finish", "Natural", "High", 1, 
    "Deep and grounding, like the fading light on Santiago's streets. Its earthy warmth and molasses undertone linger, wrapping you in twilight's embrace.", 
    FALSE, "Chilean Coffee Routes"),

(10, "Panama Geisha Dream", "Panama", "Light", "Arabica", "Whole Bean", "Jasmine and tropical fruit", "Washed", "High", 3, 
    "An ethereal experience. Jasmine notes entwined with tropical fruit sweetness make this a coffee to savor slowly, like a daydream slipping into reality.", 
    TRUE, "Panama Coffee Treasures");

INSERT INTO Product_Variant (variant_id, product_id, weight_grams, price, stock, sku)
VALUES
-- Product 1 Variants
(1, 1, 250, 500.00, 100, "ETH-YIR-250"),
(2, 1, 500, 950.00, 1, "ETH-YIR-500"),          -- Only 1 left in stock
(3, 1, 1000, 1800.00, 4, "ETH-YIR-1000"),       

-- Product 2 Variants
(4, 2, 250, 450.00, 1, "COL-SUP-250"),          -- Only 1 left in stock
(5, 2, 500, 850.00, 1, "COL-SUP-500"),          -- Only 1 left in stock

-- Product 3 Variants
(6, 3, 250, 600.00, 0, "BRA-SAN-250"),          -- Out of stock

-- Product 4 Variants
(7, 4, 250, 550.00, 0, "KEN-AA-250"),           -- Out of stock
(8, 4, 500, 1050.00, 60, "KEN-AA-500"),

-- Product 5 Variants
(9, 5, 250, 580.00, 90, "SUM-MAN-250"),
(10, 5, 500, 1100.00, 0, "SUM-MAN-500"),        -- Out of stock
(11, 5, 1000, 2100.00, 1, "SUM-MAN-1000"),      -- Out of stock

-- Product 6 Variants
(12, 6, 250, 520.00, 130, "GUA-ANT-250"),
(13, 6, 500, 1000.00, 70, "GUA-ANT-500"),

-- Product 7 Variants
(14, 7, 250, 480.00, 160, "COS-TAR-250"),

-- Product 8 Variants
(15, 8, 250, 530.00, 110, "NIC-SEG-250"),
(16, 8, 500, 1020.00, 55, "NIC-SEG-500"),

-- Product 9 Variants
(17, 9, 250, 400.00, 200, "MEX-ALT-250"),

-- Product 10 Variants
(18, 10, 250, 510.00, 0, "HON-MAR-250"),        -- Out of stock
(19, 10, 500, 1000.00, 1, "HON-MAR-500");       -- Only 1 left in stock


INSERT INTO Product_Images (image_id, variant_id, image_url, alt_text)
VALUES
(1, 1, "/assets/images/products/product1.png", "Sunrise Over the Serengeti 250g"),
(2, 2, "/assets/images/products/product1.png", "Sunrise Over the Serengeti 500g"),
(3, 3, "/assets/images/products/product1.png", "Sunrise Over the Serengeti 1000g"),


(4, 4, "/assets/images/products/product2.png", "Bolivian Echoes 250g"),
(5, 5, "/assets/images/products/product2.png", "Bolivian Echoes 500g"),

(6, 6, "/assets/images/products/product3.png", "The Midnight Drifter 250g"),

(7, 7, "/assets/images/products/product4.png", "Costa Rican Summer 250g"),
(8, 8, "/assets/images/products/product4.png", "Costa Rican Summer 500g"),

(9, 9, "/assets/images/products/product5.png", "Guatemalan Volcano Heart 250g"),
(10, 10, "/assets/images/products/product5.png", "Guatemalan Volcano Heart 500g"),
(11, 11, "/assets/images/products/product5.png", "Guatemalan Volcano Heart 1000g"),

(12, 12, "/assets/images/products/product6.png", "Cuban Memory Lane 250g"),
(13, 13, "/assets/images/products/product6.png", "Cuban Memory Lane 500g"),

(14, 14, "/assets/images/products/product7.png", "Indonesian Silk 250g"),

(15, 15, "/assets/images/products/product8.png", "Misty Hills of Rwanda 250g"),
(16, 16, "/assets/images/products/product8.png", "Misty Hills of Rwanda 500g"),

(17, 17, "/assets/images/products/product9.png", "Santiago at Dusk 250g"),

(18, 18, "/assets/images/products/product10.png", "Panama Geisha Dream 250g"),
(19, 19, "/assets/images/products/product10.png", "Panama Geisha Dream 500g");

-- Insert into ShoppingCart for Registered Users
INSERT INTO ShoppingCart (cart_id, user_id, session_id, created_at, updated_at)
VALUES
    (1, 1, NULL, "2024-12-01 10:00:00", "2024-12-01 10:00:00"),
    (2, 2, NULL, "2024-12-02 11:00:00", "2024-12-02 11:00:00"),
    (3, 3, NULL, "2024-12-03 12:00:00", "2024-12-03 12:00:00"),
    (4, 4, NULL, "2024-12-04 13:00:00", "2024-12-04 13:00:00"),
    (5, 5, NULL, "2024-12-05 14:00:00", "2024-12-05 14:00:00"),
    (6, 6, NULL, "2024-12-06 15:00:00", "2024-12-06 15:00:00"),
    (7, 7, NULL, "2024-12-07 16:00:00", "2024-12-07 16:00:00");



INSERT INTO Comments (comment_id, product_id, user_id, rating, content, approved, created_at)
VALUES
(1, 1, 1, 5, "Absolutely love the floral notes!", TRUE, "2024-11-02 10:30:00"),
(2, 2, 2, 4, "Great balance and smooth taste.", TRUE, "2024-11-16 13:45:00"),
(3, 3, 3, 3, "Too strong for my liking.", FALSE, "2024-12-02 09:15:00"),
(4, 4, 4, 5, "Bright and fruity, perfect for mornings!", TRUE, "2024-12-03 11:00:00"),
(5, 5, 5, 4, "Rich and complex flavors.", TRUE, "2024-11-21 16:20:00"),
(6, 6, 6, 2, "Not as sweet as I expected.", FALSE, "2024-10-26 17:50:00"),
(7, 7, 3, 5, "Delightful and aromatic.", TRUE, "2024-12-07 18:30:00"),
(8, 8, 4, 4, "Good quality coffee.", TRUE, "2024-12-08 19:45:00");


-- Ensure product averages reflect the sample comments
UPDATE Products p
LEFT JOIN (
    SELECT product_id, AVG(rating) AS avg_rating
    FROM Comments
    -- WHERE approved = TRUE
    GROUP BY product_id
) ratings ON p.product_id = ratings.product_id
SET p.average_rating = COALESCE(ratings.avg_rating, 0);


INSERT INTO Orders (order_id, user_id, total_price, status, delivery_option_id, created_at, updated_at)
VALUES
-- Orders by user 1
(1, 1, 1350.00, 'processing', 1, '2025-01-10 10:15:00', '2025-01-10 10:15:00'),
(2, 1, 2250.00, 'in-transit', 2, '2025-01-11 14:30:00', '2025-01-12 09:45:00'),
(3, 1, 1200.00, 'delivered', 3, '2024-11-09 08:20:00', '2025-01-11 16:50:00'),
(4, 1, 950.00, 'canceled', 1, '2025-01-12 11:00:00', '2025-01-12 12:00:00'),
(5, 1, 1275.00, 'delivered', 2, '2025-01-13 09:10:00', '2025-01-13 09:10:00'),

-- Orders by user 2
(6, 2, 1450.00, 'processing', 1, '2025-01-15 11:00:00', '2025-01-15 11:00:00'), 
(7, 2, 2750.00, 'in-transit', 2, '2025-01-16 15:30:00', '2025-01-17 10:00:00'),

-- Orders by user 3
(8, 3, 1600.00, 'delivered', 3, '2024-11-12 09:00:00', '2025-01-17 12:30:00'), 
(9, 3, 850.00, 'canceled', 1, '2025-01-18 14:00:00', '2025-01-18 15:00:00'), 
(10, 3, 1350.00, 'delivered', 2, '2025-01-19 08:45:00', '2025-01-19 08:45:00');

INSERT INTO OrderItems (order_id, variant_id, quantity, price_at_purchase)
VALUES
-- OrderItems for Order 1
(1, 1, 1, 500.00),   -- Variant 1: ETH-YIR-250
(1, 5, 1, 850.00),   -- Variant 5: COL-SUP-500),

-- OrderItems for Order 2
(2, 10, 1, 1100.00), -- Variant 10: SUM-MAN-500
(2, 4, 1, 1150.00), -- Variant 22: TAN-PEA-500),

-- OrderItems for Order 3
(3, 2, 1, 1200.00), -- Variant 34: YEM-MOH-500

-- OrderItems for Order 4
(4, 2, 1, 950.00),    -- Variant 2: ETH-YIR-500

-- OrderItems for Order 5
(5, 12, 1, 575.00),   -- Variant 21: TAN-PEA-250
(5, 18, 1, 700.00);   -- Variant 28: PAN-GEI-250

-- Addresses (inserted after Orders to satisfy FK constraints)
INSERT INTO Address (address_name, user_id, order_id, address_line, city, phone_number, postal_code, country) 
VALUES 
('Home Address 1', 1, NULL, '1234 Elm St', 'Istanbul', '555-1234', '34000', 'Turkey'),
('Work Address 1', 1, NULL, '4567 Oak St', 'Ankara', '555-5678', '06000', 'Turkey'),
('Home Address 2', 2, NULL, '7890 Pine St', 'Izmir', '555-8765', '35000', 'Turkey'),
('Work Address 2', 2, NULL, '2345 Maple St', 'Bursa', '555-4321', '16000', 'Turkey'),
('Home Address 3', 3, NULL, '9876 Birch St', 'Antalya', '555-2345', '07000', 'Turkey'),
('Work Address 3', 3, NULL, '3456 Cedar St', 'Konya', '555-6789', '42000', 'Turkey'),
('Home Address 4', 4, NULL, '6789 Redwood St', 'Mersin', '555-1357', '33000', 'Turkey'),
('Work Address 4', 4, NULL, '5432 Palm St', 'Adana', '555-2468', '01000', 'Turkey'),
('Home Address 5', 5, NULL, '1122 Cherry St', 'Gaziantep', '555-3579', '27000', 'Turkey'),
('Work Address 5', 5, NULL, '2233 Fir St', 'Kayseri', '555-4680', '38000', 'Turkey'),
('Home Address 1', 1, 4, '1234 Elm St', 'Istanbul', '555-1234', '34000', 'Turkey'),
('Home Address 1', 1, 3, '1234 Elm St', 'Istanbul', '555-1234', '34000', 'Turkey'),
('Home Address 1', 1, 1, '1234 Elm St', 'Istanbul', '555-1234', '34000', 'Turkey'),
('Home Address 1', 1, 2, '1234 Elm St', 'Istanbul', '555-1234', '34000', 'Turkey');

INSERT INTO Payments (payment_id, order_id, user_id, payment_date, amount, card_holder_name, card_number, card_expiration, cvv)
VALUES
(1, 1, 1, "2024-11-01 10:05:00", 1500.00, "Arya Hassibi", AES_ENCRYPT("4111111111111111", "encryption_key"), "2026-05-01", AES_ENCRYPT("123", "encryption_key")),
(2, 2, 1, "2024-11-15 12:35:00", 800.00, "Arya Hassibi", AES_ENCRYPT("4111111111111111", "encryption_key"), "2026-05-01", AES_ENCRYPT("123", "encryption_key")),
(3, 3, 1, "2024-12-01 09:50:00", 300.00, "Arya Hassibi", AES_ENCRYPT("4111111111111111", "encryption_key"), "2026-05-01", AES_ENCRYPT("123", "encryption_key")),
(4, 4, 2, "2024-12-05 11:25:00", 500.00, "Beste Bayhan", AES_ENCRYPT("4222222222222222", "encryption_key"), "2025-06-01", AES_ENCRYPT("456", "encryption_key")),
(5, 5, 3, "2024-12-07 08:20:00", 2500.00, "Mustafa Topcu", AES_ENCRYPT("4333333333333333", "encryption_key"), "2027-07-01", AES_ENCRYPT("789", "encryption_key")),
(6, 6, 5, "2024-11-20 14:55:00", 750.00, "Eid Alhamali", AES_ENCRYPT("4444444444444444", "encryption_key"), "2025-08-01", AES_ENCRYPT("012", "encryption_key")),
(7, 7, 6, "2024-10-25 16:35:00", 1200.00, "Ecem Akın", AES_ENCRYPT("4555555555555555", "encryption_key"), "2024-09-01", AES_ENCRYPT("345", "encryption_key")),
(8, 8, 6, "2024-12-02 13:45:00", 600.00, "Ecem Akın", AES_ENCRYPT("4555555555555555", "encryption_key"), "2024-09-01", AES_ENCRYPT("345", "encryption_key"));


INSERT INTO RefundRequests 
(refund_request_id, order_id, user_id, variant_id, quantity, price_at_purchase, 
 request_date, status, reason, reject_reason)
VALUES
(1, 2, 1, 3, 1, 600.00, "2024-11-20 10:00:00", "approved", "Product arrived damaged.", NULL),
(2, 4, 2, 6, 2, 520.00, "2024-12-10 12:00:00", "pending", "Wrong product delivered.", NULL),
(3, 7, 6, 12, 1, 575.00, "2024-10-30 09:30:00", "rejected", "No reason provided.", NULL),
(4, 5, 3, 5, 1, 450.00, "2024-11-15 14:00:00", "approved", "Received a defective item.", NULL),
(5, 3, 4, 8, 1, 300.00, "2024-11-18 11:45:00", "pending", "Item not as described.", NULL),
(6, 1, 5, 10, 1, 700.00, "2024-11-20 16:20:00", "rejected", "Request submitted after return period.", NULL);


INSERT INTO Discounts (discount_id, discount_type, value, start_date, end_date, variant_id, active)
VALUES
(1, "percentage", 10.00, "2024-12-01", "2025-12-31", 13, TRUE),
(2, "fixed", 50.00, "2024-11-15", "2025-11-30", 4, TRUE),
(3, "percentage", 15.00, "2024-10-01", "2025-10-31", 9, FALSE),
(4, "fixed", 100.00, "2024-12-05", "2025-12-20", 17, TRUE),
(5, "percentage", 5.00, "2024-12-10", "2025-12-25", 16, TRUE);

INSERT INTO Wishlist (wishlist_id, user_id, created_at)
VALUES
(1, 1, "2024-12-01 10:00:00"),
(2, 2, "2024-12-03 09:30:00"),
(3, 4, "2024-12-05 15:45:00"),
(4, 5, "2024-12-02 18:20:00"),
(5, 6, "2024-12-07 11:10:00"),
(6, 7, "2024-12-04 13:50:00");

INSERT INTO WishlistItems (wishlist_item_id, wishlist_id, variant_id, added_at)
VALUES
-- User 1"s Wishlist
(1, 1, 3, "2024-12-01 10:15:00"),
(2, 1, 7, "2024-12-01 10:25:00"),

-- User 2"s Wishlist
(3, 2, 5, "2024-12-03 09:35:00"),
(4, 2, 14, "2024-12-03 09:50:00"),

-- User 4"s Wishlist
(5, 3, 8, "2024-12-05 15:50:00"),
(6, 3, 15, "2024-12-05 16:10:00"),
(7, 3, 17, "2024-12-05 16:20:00"),

-- User 5"s Wishlist
(8, 4, 2, "2024-12-02 18:25:00"),

-- User 6"s Wishlist
(9, 5, 11, "2024-12-07 11:15:00"),
(10, 5, 13, "2024-12-07 11:25:00"),

-- User 7"s Wishlist
(11, 6, 18, "2024-12-04 13:55:00"),
(12, 6, 7, "2024-12-04 14:05:00"),
(13, 6, 6, "2024-12-04 14:20:00");
