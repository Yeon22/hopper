CREATE TABLE sponsor (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(70) NOT NULL,
  site_url VARCHAR(255) NOT NULL DEFAULT '',
  status INT(2) NOT NULL DEFAULT 1,
  thumbnail_id INT NULL,
  created_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE sponsor_item (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  sponsor_id INT UNSIGNED NULL,
  status INT(2) NOT NULL DEFAULT 1,
  category_id INT UNSIGNED NOT NULL,
  title VARCHAR(125) NOT NULL,
  description TEXT NOT NULL,
  thumbnail_id INT UNSIGNED NOT NULL,
  period_id INT UNSIGNED NULL,
  site_url VARCHAR(255) NOT NULL DEFAULT '',
  tags VARCHAR(255) NOT NULL DEFAULT '',
  created_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE sponsor_category (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(125) NOT NULL,
  description VARCHAR(125) NOT NULL DEFAULT '',
  status INT(2) NOT NULL DEFAULT 1,
  image_id INT NOT NULL,
  created_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE banner (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(125) NOT NULL,
  description TEXT NOT NULL,
  image_id INT NOT NULL,
  site_url VARCHAR(512) NOT NULL DEFAULT '',
  status INT(2) NOT NULL DEFAULT 1,
  created_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE sponsor_period (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(10) NOT NULL,
  status INT(2) NOT NULL DEFAULT 1,
  created_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;