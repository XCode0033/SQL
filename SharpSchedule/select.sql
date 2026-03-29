USE sharp_schedule;

SELECT id, day_of_week, title,
       FIELD(day_of_week,
             'Sunday','Monday','MyDay',
             'Wednesday','Thursday','Friday','Saturday') AS sort_value
FROM time_blocks
ORDER BY sort_value;
