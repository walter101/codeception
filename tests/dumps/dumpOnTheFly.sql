USE testdatabase;

CREATE TABLE IF NOT EXISTS testdatabase.walter (
  `id` int NOT NULL,
  `first_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO testdatabase.walter (`id`, `first_name`) VALUES
(10, 'aline'),
(11, 'tim');

