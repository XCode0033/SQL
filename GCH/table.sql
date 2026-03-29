USE gch;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    role ENUM('Barber','Client') NOT NULL,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    password VARCHAR(300) NOT NULL,
    phone VARCHAR(300) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP

);


CREATE TABLE barber_profiles (
    barber_id INT PRIMARY KEY,
    shop_name VARCHAR(300) NOT NULL,
    shop_address VARCHAR(300) NOT NULL,
    city VARCHAR(300) NOT NULL,
    state VARCHAR(300) NOT NULL,
    zip VARCHAR(300) NOT NULL,
    bio VARCHAR(300),
    specialties VARCHAR(300),
    avatar_url VARCHAR(300)
    CONSTRAINT fk_barber_profiles_user
        FOREIGN KEY (barber_id) REFERENCES users(user_id)
)


CREATE TABLE services (
    service_id INT,
    barber_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(300) NOT NULL,
    description VARCHAR(300) NOT NULL,
    duration_minutes INT,
    price INT NOT NULL,
    is_active boolean NOT NULL
)

CREATE TABLE barber_availability (
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    barber_id INT NOT NULL,
    is_available boolean NOT NULL,
    weekday ENUM('Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday'),
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    CONSTRAINT fk_availability_barber
        FOREIGN KEY (barber_id) REFERENCES users(user_id)
)

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    barber_id INT NOT NULL,
    client_id INT NOT NULL,
    service_id NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    current_status ENUM('pending','confirmed','cancelled', 'rejected','no show') NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_appointments_barber
    FOREIGN KEY (barber_id) REFERENCES users(user_id),
  CONSTRAINT fk_appointments_client
    FOREIGN KEY (client_id) REFERENCES users(user_id),
  CONSTRAINT fk_appointments_service
    FOREIGN KEY (service_id) REFERENCES services(service_id)
);






