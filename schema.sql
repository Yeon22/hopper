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

INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('월드비전', 'https://www.worldvision.or.kr', 1);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('세이브더 칠드런', 'https://www.sc.or.kr', 2);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('월드 쉐어', 'http://www.worldshare.or.kr', 3);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('초록우산', 'https://www.childfund.or.kr', 4);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('컴패션', 'https://www.compassion.or.kr', 5);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('굿네이버스', 'https://www.goodneighbors.kr', 6);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('플랜코리아', 'https://www.plankorea.or.kr', 7);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('ADRF', 'https://adrf.or.kr', 8);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('한국백혈병어린이재단', 'https://www.kclf.org', 9);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('지파운데이션', 'https://gfound.org', 10);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('동물자유연대', 'https://www.animals.or.kr', 11);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('카라', 'https://ekara.org', 12);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('케어', 'https://fromcare.org', 13);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('야옹아 안녕', 'https://www.hellocat.org', 14);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('어웨어', 'https://www.aware.kr', 15);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('도와줄개', 'http://www.apg-helpdog.com', 16);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('동물보호단체라이프', 'http://www.savelife.or.kr', 17);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('리버스', 'https://linktr.ee/rebirth.or.kr', 18);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('동물보호협회', 'http://www.koreananimals.or.kr', 19);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('WWF(세계자연기금)', 'https://www.wwfkorea.or.kr', 20);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('그린피스', 'https://www.greenpeace.org/korea', 21);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('환경운동연합', 'http://kfem.or.kr', 22);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('녹색연합', 'https://www.greenkorea.org', 22);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('유엔환경계획', 'http://www.unep.or.kr', 23);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('숲과나눔', 'https://koreashe.org', 24);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('내셔널트러스트', 'https://nationaltrust.or.kr', 25);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('환경정의', 'https://www.eco.or.kr', 26);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('에너지전환포럼', 'http://www.energytransitionkorea.org', 27);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('환경재단', 'http://www.greenfund.org', 28);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('서울환경연합', 'https://seoulkfem.or.kr', 29);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('국제엠네스티', 'https://amnesty.or.kr/what-we-do/woman/', 30);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('한국여성단체연합', 'http://women21.or.kr', 31);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('한국여성민우회', 'https://www.womenlink.or.kr', 32);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('한국여성의전화', 'http://hotline.or.kr', 33);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('국경없는의사회', 'https://msf.or.kr', 34);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('컨설와이드', 'https://concern.or.kr', 35);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('월드휴먼브리지', 'http://www.whb.or.kr', 36);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('LCIF', 'https://www.lionsclubs.org/ko', 37);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('옥스팜', 'https://www.oxfam.or.kr', 38);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('대한적십자사', 'https://www.redcross.or.kr', 39);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('희망브리지', 'https://hopebridge.or.kr', 40);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('유엔난민기구', 'https://www.unhcr.or.kr', 41);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('피즈윈즈코리아', 'https://together.kakao.com/fundraisings/97376', 42);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('굿피플', 'https://goodcam.kr', 43);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('생명의숲', 'https://together.kakao.com/fundraisings/94817', 44);

CREATE TABLE sponsor_item (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  sponsor_id INT UNSIGNED NULL,
  status INT(2) NOT NULL DEFAULT 1,
  category_id INT UNSIGNED NOT NULL,
  title VARCHAR(125) NOT NULL,
  description VARCHAR(512) NOT NULL DEFAULT '',
  thumbnail_id INT UNSIGNED NOT NULL,
  period_id INT UNSIGNED NULL,
  site_url VARCHAR(255) NOT NULL DEFAULT '',
  tags VARCHAR(255) NOT NULL DEFAULT '',
  created_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumnail_id, site_url, tags, period_id)
  VALUES (1, 1, '해외아동후원', '', 1, 'https://www.worldvision.or.kr/sponsor/support/child/foreignchild.asp', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumnail_id, site_url, tags, period_id)
  VALUES (2, 1, '정기후원', '', 2, 'https://www.sc.or.kr/donate/monthly.do', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumnail_id, site_url, tags, period_id)
  VALUES (2, 1, '일시후원', '', 3, 'https://www.sc.or.kr/support/supportDate.do', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumnail_id, site_url, tags, period_id)
  VALUES (3, 1, '정기후원', '', 4, 'https://worldshare.or.kr/sponsor/regularly_sponsor_step.asp?seq=214&ACE_REF=adwords_g&ACE_KW=%EC%84%B8%EC%9D%B4%EB%B8%8C%EC%B9%A0%EB%93%9C%EB%9F%B0', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumnail_id, site_url, tags, period_id)
  VALUES (3, 1, '일시후원', '', 5, 'https://worldshare.or.kr/sponsor/one_sponsor_step.asp?seq=214&ACE_REF=adwords_g&ACE_KW=%EC%84%B8%EC%9D%B4%EB%B8%8C%EC%B9%A0%EB%93%9C%EB%9F%B0', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumnail_id, site_url, tags, period_id)
  VALUES (4, 1, '국내후원', '', 6, 'https://www.childfund.or.kr/sponsor/sponsorGuide.do', '', null);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumnail_id, site_url, tags, period_id)
  VALUES (5, 1, '어린이직접후원', '', 7, 'https://www.compassion.or.kr/sponsor/children', '', null);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumnail_id, site_url, tags, period_id)
  VALUES (6, 1, '정기후원', '', 8, 'https://www.goodneighbors.kr/support/index.gn', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumnail_id, site_url, tags, period_id)
  VALUES (7, 1, '아동결연', '', 9, 'https://my.plankorea.or.kr/donate/sponsor/step1', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumnail_id, site_url, tags, period_id)
  VALUES (8, 1, '', '', 9, 'https://my.plankorea.or.kr/donate/sponsor/step1', '', 1);

CREATE TABLE sponsor_category (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(125) NOT NULL,
  status INT(2) NOT NULL DEFAULT 1,
  image_id INT NOT NULL,
  created_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO sponsor_category (name, image_id) VALUES ('아동', 1);
INSERT INTO sponsor_category (name, image_id) VALUES ('동물', 2);
INSERT INTO sponsor_category (name, image_id) VALUES ('환경', 3);
INSERT INTO sponsor_category (name, image_id) VALUES ('여성', 4);
INSERT INTO sponsor_category (name, image_id) VALUES ('자연재해', 5);
INSERT INTO sponsor_category (name, image_id) VALUES ('기타', 6);
INSERT INTO sponsor_category (name, image_id) VALUES ('캠페인', 0);

CREATE TABLE banner (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(125) NOT NULL,
  description VARCHAR(512) NOT NULL DEFAULT '',
  image_id INT NOT NULL,
  site_url VARCHAR(512) NOT NULL DEFAULT '',
  status INT(2) NOT NULL DEFAULT 1,
  created_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO banner (title, description, image_id, site_url) VALUES ('우크라이나 긴급구호', '', 1, 'https://www.unhcr.or.kr/unhcr/program/donate_row/support01.jsp');
INSERT INTO banner (title, description, image_id, site_url) VALUES ('우크라이나 난민 긴급구호', '', 2, 'https://together.kakao.com/fundraisings/97376');
INSERT INTO banner (title, description, image_id, site_url) VALUES ('우크라이나 지원', '', 3, 'https://www.redcross.or.kr/donation_campaign/togetherofhumanity/index.htm');
INSERT INTO banner (title, description, image_id, site_url) VALUES ('산불 피해 지역 나무 심기', '', 4, 'https://goodcam.kr/');
INSERT INTO banner (title, description, image_id, site_url) VALUES ('강원도산불피해', '', 5, 'https://my.worldvision.or.kr/hope/sponsor_onestopselect.asp?gubun=2&code=3036&amount_cd=3103&moti=25533');
INSERT INTO banner (title, description, image_id, site_url) VALUES ('산불피해 산림 복원 프로젝트', '', 6, 'https://together.kakao.com/fundraisings/94817');
INSERT INTO banner (title, description, image_id, site_url) VALUES ('코로나19 위기대응 긴급구호', '', 7, 'https://msf.or.kr/campaigns/COVID-19/index.html');
INSERT INTO banner (title, description, image_id, site_url) VALUES ('코로나19 긴급구호', '', 8, 'https://www.unhcr.or.kr/coronavirus-emergency/');
INSERT INTO banner (title, description, image_id, site_url) VALUES ('코로나19 재난구호 더 가까이', '', 9, 'https://www.compassion.or.kr/campaign/covid19/?e_id=1101&e_src=covid19_closer_ad_banner_ajunews&utm_source=ajunews&utm_medium=ad_banner&utm_campaign=covid19_closer');

CREATE TABLE sponsor_period (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(10) NOT NULL,
  status INT(2) NOT NULL DEFAULT 1,
  created_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO sponsor_period (name) VALUES ('장기 후원');
INSERT INTO sponsor_period (name) VALUES ('단기 후원');