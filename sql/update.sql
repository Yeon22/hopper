UPDATE sponsor_category SET image_id=1 WHERE id=3;
UPDATE sponsor_category SET image_id=2 WHERE id=2;
UPDATE sponsor_category SET image_id=3 WHERE id=1;
UPDATE sponsor_category SET image_id=4 WHERE id=4;
UPDATE sponsor_category SET image_id=5 WHERE id=5;
UPDATE sponsor_category SET image_id=6 WHERE id=6;

UPDATE banner SET image_id=1 WHERE id IN (1,2,3);
UPDATE banner SET image_id=2 WHERE id IN (4,5,6);
UPDATE banner SET image_id=3 WHERE id IN (7,8,9);
UPDATE banner SET tags='직접전달,호퍼인증,비영리';