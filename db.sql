CREATE TABLE `adv_php`.`products` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(128) NOT NULL,
    `description` TEXT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;
INSERT INTO `products`(`name`, `description`)
VALUES ('Product One', 'This is product one'),
    ('Second Product', 'This is product 2'),
    ('Product #3', ''),
    (
        'The 4th Product',
        'Here is a product with some <b>HTML</b> in the description.'
    );