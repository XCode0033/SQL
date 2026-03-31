
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

CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(300) NOT NULL UNIQUE,
  password VARCHAR(300) NOT NULL,
  full_name VARCHAR(100) NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
  
)

CREATE TABLE activities (
  activity_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  UNIQUE(user_id, name),
  CONSTRAINT fk_activities_id
  FOREIGN KEY (user_id) REFERENCES users(user_id);
)


CREATE TABLE sessions (
  session_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  activity_id INT NOT NULL,
  title VARCHAR(200) NOT NULL,
  start_time DATETIME NOT NULL,
  end_time DATETIME NOT NULL,
  status ENUM('planned', 'completed','skipped','unplanned') NOT NULL DEFAULT 'planned' ,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_sessions_userId
    FOREIGN KEY (user_id) REFERENCES users(user_id),
  CONSTRAINT fk_sessions_activityId
    FOREIGN KEY (activity_id) REFERENCES activities(activity_id)
)