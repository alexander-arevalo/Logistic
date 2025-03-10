-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `role` ENUM('ADMIN', 'LOGISTIC', 'DISPATCHER') NOT NULL DEFAULT 'DISPATCHER',
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `createdById` INTEGER NULL,

    UNIQUE INDEX `users_username_key`(`username`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicles` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `owner` VARCHAR(255) NOT NULL,
    `tonnage` DECIMAL(10, 2) NOT NULL,
    `OR_number` VARCHAR(50) NOT NULL,
    `CR_number` VARCHAR(50) NOT NULL,
    `vehicle_type` VARCHAR(100) NOT NULL,
    `vehicle_model` VARCHAR(100) NOT NULL,
    `time_in` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `time_out` DATETIME(0) NULL,
    `time_inside` INTEGER NULL,

    UNIQUE INDEX `OR_number`(`OR_number`),
    UNIQUE INDEX `CR_number`(`CR_number`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_createdById_fkey` FOREIGN KEY (`createdById`) REFERENCES `users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
