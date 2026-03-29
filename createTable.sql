
use sharp_schedule;
CREATE TABLE time_blocks (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title varchar(100) NOT NULL,
  day_of_week ENUM(
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ) NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 
);
