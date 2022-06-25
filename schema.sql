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
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('녹색연합', 'https://www.greenkorea.org', 23);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('유엔환경계획', 'http://www.unep.or.kr', 24);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('숲과나눔', 'https://koreashe.org', 25);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('내셔널트러스트', 'https://nationaltrust.or.kr', 26);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('환경정의', 'https://www.eco.or.kr', 27);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('에너지전환포럼', 'http://www.energytransitionkorea.org', 28);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('환경재단', 'http://www.greenfund.org', 29);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('서울환경연합', 'https://seoulkfem.or.kr', 30);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('국제엠네스티', 'https://amnesty.or.kr/what-we-do/woman/', 31);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('한국여성단체연합', 'http://women21.or.kr', 32);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('한국여성민우회', 'https://www.womenlink.or.kr', 33);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('한국여성의전화', 'http://hotline.or.kr', 34);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('국경없는의사회', 'https://msf.or.kr', 35);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('컨설와이드', 'https://concern.or.kr', 36);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('월드휴먼브리지', 'http://www.whb.or.kr', 37);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('LCIF', 'https://www.lionsclubs.org/ko', 38);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('옥스팜', 'https://www.oxfam.or.kr', 39);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('대한적십자사', 'https://www.redcross.or.kr', 40);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('희망브리지', 'https://hopebridge.or.kr', 41);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('유엔난민기구', 'https://www.unhcr.or.kr', 42);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('피즈윈즈코리아', 'https://together.kakao.com/fundraisings/97376', 43);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('굿피플', 'https://goodcam.kr', 44);
INSERT INTO sponsor (name, site_url, thumbnail_id) VALUES ('생명의숲', 'https://together.kakao.com/fundraisings/94817', 45);

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

INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (1, 1, '월드비전 해외아동후원', '', 1, 'https://www.worldvision.or.kr/sponsor/support/child/foreignchild.asp', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (2, 1, '세이브더 칠드런 정기후원', '', 2, 'https://www.sc.or.kr/donate/monthly.do', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (2, 1, '세이브더 칠드런 일시후원', '', 3, 'https://www.sc.or.kr/support/supportDate.do', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (3, 1, '월드 쉐어 정기후원', '', 4, 'https://worldshare.or.kr/sponsor/regularly_sponsor_step.asp?seq=214&ACE_REF=adwords_g&ACE_KW=%EC%84%B8%EC%9D%B4%EB%B8%8C%EC%B9%A0%EB%93%9C%EB%9F%B0', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (3, 1, '월드 쉐어 일시후원', '', 5, 'https://worldshare.or.kr/sponsor/one_sponsor_step.asp?seq=214&ACE_REF=adwords_g&ACE_KW=%EC%84%B8%EC%9D%B4%EB%B8%8C%EC%B9%A0%EB%93%9C%EB%9F%B0', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (4, 1, '초록우산 국내정기후원', '', 6, 'https://www.childfund.or.kr/regular/support.do?ret=D', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (4, 1, '초록우산 국내일시후원', '', 7, 'https://www.childfund.or.kr/irregular/irregularSupport.do?ret=D', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (5, 1, '1:1 어린이 양육', '', 8, 'https://www.compassion.or.kr/sponsor/children', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (6, 1, '해외아동 1:1 결연', '', 9, 'https://www.goodneighbors.kr/support/index.gn', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (7, 1, '아동결연', '', 10, 'https://my.plankorea.or.kr/donate/sponsor/step1', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (8, 1, '난민교육후원', '', 11, 'https://secure.donus.org/adrfhope/pay/step1', '', null);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (9, 1, '소아암어린이정기후원', '', 12, 'https://donate.kclf.org/v2/Member/MemberJoin.aspx?action=join&server=qJmn188GAr8pdx6bAL%208aQ==', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (9, 1, '소아암어린이일시후원', '', 13, 'https://donate.kclf.org/v2/Member/SupportOnce.aspx?action=once&server=qJmn188GAr8pdx6bAL%208aQ==', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (10, 1, '아동결연정기후원', '', 14, 'https://donation.gfound.org/support1-1.php?TrXBQAfPYXlIhr0vqzbvpQ%3D%3D', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (11, 2, '동물자유연대후원', '', 15, 'https://www.animals.or.kr/support/intro?utm_source=google&utm_medium=sa&utm_campaign=pc&utm_content=%ED%9B%84%EC%9B%90&utm_term=%EB%8F%99%EB%AC%BC%20%ED%9B%84%EC%9B%90', '', null);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (12, 2, '카라정기후원', '', 16, 'https://online.mrm.or.kr/i3ajN1E', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (12, 2, '카라일시후원', '', 17, 'https://online.mrm.or.kr/LICIbdl', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (13, 2, '케어정기후원', '', 18, 'https://mrmweb.hsit.co.kr/v2/Member/MemberJoin.aspx?action=join&server=bL/9vmrI6f%20GfqRVvoEYmQ==&supportgroup=4', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (13, 2, '케어일시후원', '', 19, 'https://mrmweb.hsit.co.kr/v2/Member/SupportOnce.aspx?action=once&server=bL/9vmrI6f%20GfqRVvoEYmQ==', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (14, 2, '고양이쉼터일시후원', '', 20, 'https://www.hellocat.org/%EC%9D%BC%EC%8B%9C%ED%9B%84%EC%9B%90', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (15, 2, '동물복지문제연구소어웨어(AWARE) 정기후원', '', 21, 'https://mrmweb.hsit.co.kr/v2/Member/MemberJoin.aspx?action=join&server=PdwaKUPM9FPxVis68cwsiQ==', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (16, 2, '도와줄개 정기후원', '', 22, 'https://www.ihappynanum.com/Nanum/B/B3W1FDL806', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (17, 2, '동물보호단체라이브 정기후원', '', 23, 'https://secure.donus.org/savelife/pay/step1', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (18, 2, '동물구조단체 리버스 정기후원', '', 24, 'https://secure.donus.org/rebirth/pay/step1', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (19, 2, '동물보호쉼터 정기후원', '', 25, 'https://www.ihappynanum.com/Nanum/B/03C9LI59BE', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (19, 2, '동물보호쉼터 일시후원', '', 26, 'https://www.ihappynanum.com/Nanum/B/I4TZ991PQE', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (20, 3, '세계자연기금 정기후원', '', 27, 'https://donate.wwfkorea.or.kr/wwfkorea/pay/step1_direct?background=b001&dontype=P10101&period=pledge&price=20000', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (20, 3, '세계자연기금 일시후원', '', 28, 'https://donate.wwfkorea.or.kr/wwfkorea/pay/step1_direct?background=b001&dontype=P10101&period=oneoff&price=10000', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (21, 3, '그린피스 정기후원', '', 29, 'https://supporter.ea.greenpeace.org/kr/s/donate', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (22, 3, '환경운동연합 정기후원', '', 30, 'https://mrmweb.hsit.co.kr/v2/Member/MemberJoin.aspx?action=join&server=Q15WKv7ScmOhF/6R/ZRkPg==', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (22, 3, '환경운동연합 일시후원', '', 31, 'https://mrmweb.hsit.co.kr/v2/Member/SupportOnce.aspx?action=once&server=Q15WKv7ScmOhF/6R/ZRkPg==', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (23, 3, '녹색연합 정기후원', '', 32, 'https://mrmweb.hsit.co.kr/v2/Member/MemberJoin.aspx?action=join&server=y95QNtCjffH7I4mBPIkQdA==&supportgroup=9', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (24, 3, '유엔환경계획한국협회 정기후원', '', 33, 'http://www.unep.or.kr/sub/sub06_01.php', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (25, 3, '숲과나눔 정기후원', '', 34, 'https://mrmweb.hsit.co.kr/v2/Member/MemberJoin.aspx?action=join&server=OOnCuQcBLccuWbPmV9TXcg==', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (25, 3, '숲과나눔 일시후원', '', 35, 'https://mrmweb.hsit.co.kr/v2/Member/SupportOnce.aspx?action=once&server=OOnCuQcBLccuWbPmV9TXcg==', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (26, 3, '한국내셔널트러스트 정기후원', '', 36, 'https://nationaltrust.or.kr/bbs/board.php?bo_table=B32', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (27, 3, '환경정의 정기후원', '', 37, 'https://secure.donus.org/ejustice/pay/step1?_ga=2.22881531.1760578761.1552882234-1626872633.1551146695', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (28, 3, '에너지전환포럼 정기후원', '', 38, 'https://mrmweb.hsit.co.kr/v2/Member/MemberJoin.aspx?action=join&server=FkrJ7x0tmV4552sbnqpjnw==', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (29, 3, '환경재단 정기후원', '', 39, 'https://mrmweb.hsit.co.kr/v2/Member/MemberJoin.aspx?action=join&server=FkrJ7x0tmV4552sbnqpjnw==', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (30, 3, '서울환경연합 정기후원', '', 40, 'https://seoulkfem.or.kr/donate', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (31, 4, '앰네스티 정기후원', '', 41, 'https://amnesty.or.kr/donation/', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (32, 4, '(사)한국여성단체연합 정기후원', '', 42, 'https://mrmweb.hsit.co.kr/v2/Member/MemberJoin.aspx?action=join&server=WnAEwtbAhl9yKWI%2077f8dg==', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (32, 4, '(사)한국여성단체연합 일시후원', '', 43, 'https://mrmweb.hsit.co.kr/v2/Member/SupportOnce.aspx?action=once&server=WnAEwtbAhl9yKWI%2077f8dg==', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (33, 4, '한국여성민우회 정기후원', '', 44, 'https://mrmweb.hsit.co.kr/v2/Member/MemberJoin.aspx?action=join&server=upWoBogw22sCL0kKI%20daHg==', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (33, 4, '한국여성민우회 일시후원', '', 45, 'https://mrmweb.hsit.co.kr/v2/Member/SupportOnce.aspx?action=once&server=upWoBogw22sCL0kKI%20daHg==', '', 2);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (34, 4, '한국여성의전화 정기후원', '', 46, 'https://secure.donus.org/kwhotline/pay/step1', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (35, 5, '국경없는의사회 정기후원', '', 47, 'https://donate.msf.or.kr/msfk/pay/step1?_ga=2.167488062.1465886695.1656156291-1493828725.1656156289&motivecode=DG101&channelcode=427', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (36, 5, '기아와 극빈 정기후원', '', 48, 'https://secure.donus.org/concern/pay/step1?dontype=c10101&period=pledge&price=20000', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (37, 5, '긴급구호 정기후원', '', 49, 'https://cs.smartraiser.co.kr/api/whb.or.kr/1/Gift/Gift', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (38, 5, '난민 정기후원', '', 50, 'https://www.lionsclubs.org/ko/donate?utm_source=lci-homepage-slider&utm_medium=link&utm_campaign=humanitarian-resettlement', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (39, 5, '옥스팜 정기후원', '', 51, 'https://www.oxfam.or.kr/participation/sponsorship-participation/', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (40, 5, '대한적십자사 정기후원', '', 52, 'https://www.redcross.or.kr/donation_participation_v2/donation_participation_reg.do?action=regApplyForm&gibupgmno=1304', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (41, 5, '국내구호사업 정기후원', '', 53, 'https://donate.hopebridge.or.kr/api/hopebridge.or.kr/1/Gift/Gift', '', 1);
INSERT INTO sponsor_item (sponsor_id, category_id, title, description, thumbnail_id, site_url, tags, period_id)
  VALUES (42, 5, '우크라이나 긴급구호 정기후원', '', 54, 'https://www.unhcr.or.kr/ukraine-emergency/', '', 1);

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