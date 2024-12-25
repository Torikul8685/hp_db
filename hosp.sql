CREATE TABLE `departments` (
	`department_id` BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	`location` VARCHAR(50) NOT NULL,
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
	
);





CREATE TABLE `doctors` (
	`doctor_id` BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	`specialization` VARCHAR(50) NOT NULL,
    `phone` VARCHAR(15) NOT NULL,
    `department_id` BIGINT(20) UNSIGNED NOT NULL,
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`department_id`) REFERENCES `departments`(`department_id`) ON DELETE RESTRICT ON UPDATE CASCADE



	
);

CREATE TABLE `patients` (
	`patient_id` BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	`age` VARCHAR(15) NOT NULL,
	`gender` VARCHAR(15) NOT NULL,
	`phone` VARCHAR(20)  NOT NULL,
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE `appoinments` (
	`appoinment_id` BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`date` VARCHAR(50) NOT NULL,
	`status` VARCHAR(15) NOT NULL,
	`time` VARCHAR(15) NOT NULL,
	`doctor_id` BIGINT(20) UNSIGNED NOT NULL,
	`patient_id` BIGINT(20) UNSIGNED NOT NULL,
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY (`doctor_id`) REFERENCES `doctors`(`doctor_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN KEY (`patient_id`) REFERENCES `patients`(`patient_id`) ON DELETE RESTRICT ON UPDATE CASCADE

);

INSERT INTO `departments`(`department_id`, `name`, `location`, `created_at`, `updated_at`) 
VALUES ('201', 'Cardiology', 'Building A - 2nd Floor', '2024-12-24', '2024-12-25');

INSERT INTO `departments`(`department_id`, `name`, `location`, `created_at`, `updated_at`) 
VALUES ('202', 'Neurology', 'Building B - 3rd Floor', '2024-12-23', '2024-12-24');

INSERT INTO `departments`(`department_id`, `name`, `location`, `created_at`, `updated_at`) 
VALUES ('203', 'Pediatrics', 'Building C - Ground Floor', '2024-12-22', '2024-12-23');

INSERT INTO `departments`(`department_id`, `name`, `location`, `created_at`, `updated_at`) 
VALUES ('204', 'Orthopedics', 'Building D - 1st Floor', '2024-12-21', '2024-12-22');

INSERT INTO `doctors`(`doctor_id`, `name`, `specialization`, `phone`, `department_id`, `created_at`, `updated_at`) 
VALUES ('301', 'Dr. John Smith', 'Cardiologist', '1234567890', '201', '2024-12-24', '2024-12-25');

INSERT INTO `doctors`(`doctor_id`, `name`, `specialization`, `phone`, `department_id`, `created_at`, `updated_at`) 
VALUES ('302', 'Dr. Sarah Johnson', 'Neurologist', '0987654321', '202', '2024-12-23', '2024-12-24');

INSERT INTO `doctors`(`doctor_id`, `name`, `specialization`, `phone`, `department_id`, `created_at`, `updated_at`) 
VALUES ('303', 'Dr. Emily Brown', 'Pediatrician', '1122334455', '203', '2024-12-22', '2024-12-23');

INSERT INTO `doctors`(`doctor_id`, `name`, `specialization`, `phone`, `department_id`, `created_at`, `updated_at`) 
VALUES ('304', 'Dr. Michael Davis', 'Orthopedic Surgeon', '2233445566', '204', '2024-12-21', '2024-12-22');
INSERT INTO `patients`(`patient_id`, `name`, `age`, `gender`, `phone`, `created_at`, `updated_at`) 
VALUES ('401', 'Alice Brown', 30, 'Female', '1234567890', '2024-12-24 10:00:00', '2024-12-24 12:00:00');

INSERT INTO `patients`(`patient_id`, `name`, `age`, `gender`, `phone`, `created_at`, `updated_at`) 
VALUES ('402', 'Bob Smith', 45, 'Male', '0987654321', '2024-12-23 14:00:00', '2024-12-23 16:00:00');

INSERT INTO `patients`(`patient_id`, `name`, `age`, `gender`, `phone`, `created_at`, `updated_at`) 
VALUES ('403', 'Catherine Lee', 25, 'Female', '1122334455', '2024-12-22 09:30:00', '2024-12-22 11:30:00');

INSERT INTO `patients`(`patient_id`, `name`, `age`, `gender`, `phone`, `created_at`, `updated_at`) 
VALUES ('404', 'David Kim', 60, 'Male', '2233445566', '2024-12-21 08:00:00', '2024-12-21 10:00:00');

INSERT INTO `patients`(`patient_id`, `name`, `age`, `gender`, `phone`, `created_at`, `updated_at`) 
VALUES ('405', 'Emma Wilson', 35, 'Female', '3344556677', '2024-12-20 15:00:00', '2024-12-20 17:00:00');
INSERT INTO `appointments`(`appointment_id`, `date`, `status`, `time`, `doctor_id`, `patient_id`, `created_at`, `updated_at`) 
VALUES ('501', '2024-12-26', 'Confirmed', '10:00 AM', '301', '401', '2024-12-24 09:00:00', '2024-12-24 09:30:00');

INSERT INTO `appointments`(`appointment_id`, `date`, `status`, `time`, `doctor_id`, `patient_id`, `created_at`, `updated_at`) 
VALUES ('502', '2024-12-27', 'Pending', '11:30 AM', '302', '402', '2024-12-25 08:00:00', '2024-12-25 08:15:00');

INSERT INTO `appointments`(`appointment_id`, `date`, `status`, `time`, `doctor_id`, `patient_id`, `created_at`, `updated_at`) 
VALUES ('503', '2024-12-28', 'Confirmed', '02:00 PM', '303', '403', '2024-12-25 09:00:00', '2024-12-25 09:30:00');

INSERT INTO `appointments`(`appointment_id`, `date`, `status`, `time`, `doctor_id`, `patient_id`, `created_at`, `updated_at`) 
VALUES ('504', '2024-12-29', 'Cancelled', '03:15 PM', '304', '404', '2024-12-25 10:00:00', '2024-12-25 10:15:00');

INSERT INTO `appointments`(`appointment_id`, `date`, `status`, `time`, `doctor_id`, `patient_id`, `created_at`, `updated_at`) 
VALUES ('505', '2024-12-30', 'Confirmed', '09:45 AM', '301', '405', '2024-12-25 11:00:00', '2024-12-25 11:30:00');

