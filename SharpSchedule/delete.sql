USE sharp_schedule;

DELETE FROM time_blocks
WHERE title = 'Study Time';

INSERT INTO time_blocks(title,day_of_week,start_time, end_time) VALUES('Study','Sunday', '03:00:00', '12:00:00');

