create TABLE powers(
  user VARCHAR(200),
  power_level int,
  user_rank int,
  life_status ENUM('Active', 'Passive', 'MIA', 'Retired', 'Rouge')
)