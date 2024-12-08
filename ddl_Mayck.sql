CREATE TABLE `tb_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_hora` datetime(6) DEFAULT NULL,
  `orderstatus` tinyint(4) DEFAULT NULL,
  `pagamento` tinyint(4) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi0x0rv7d65vsceuy33km9567n` (`client_id`),
  CONSTRAINT `FKi0x0rv7d65vsceuy33km9567n` FOREIGN KEY (`client_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `dish_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcv5piipnnrvk7fasybcn1iw93` (`dish_id`),
  KEY `FKgeobgl2xu916he8vhljktwxnx` (`order_id`),
  CONSTRAINT `FKcv5piipnnrvk7fasybcn1iw93` FOREIGN KEY (`dish_id`) REFERENCES `tb_product` (`id`),
  CONSTRAINT `FKgeobgl2xu916he8vhljktwxnx` FOREIGN KEY (`order_id`) REFERENCES `tb_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `availability` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
