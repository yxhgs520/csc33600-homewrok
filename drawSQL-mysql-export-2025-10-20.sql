CREATE TABLE `User`(
    `user_ID` BIGINT NOT NULL,
    `user_name` VARCHAR(255) NOT NULL,
    `user_email` VARCHAR(255) NOT NULL,
    `social_media_account_type` VARCHAR(255) NOT NULL,
    `accountHandle` VARCHAR(255) NOT NULL,
    `profile_url` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`user_ID`)
);
CREATE TABLE `Checkin`(
    `checkin_ID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_ID` BIGINT NOT NULL,
    `location` VARCHAR(255) NOT NULL
);
CREATE TABLE `Follower`(
    `follower_ID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `follower_name` VARCHAR(255) NOT NULL
);
CREATE TABLE `User_Follower`(
    `user_ID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `follower_ID` BIGINT NOT NULL
);
ALTER TABLE
    `Checkin` ADD CONSTRAINT `checkin_user_id_foreign` FOREIGN KEY(`user_ID`) REFERENCES `User`(`user_ID`);
ALTER TABLE
    `User_Follower` ADD CONSTRAINT `user_follower_follower_id_foreign` FOREIGN KEY(`follower_ID`) REFERENCES `Follower`(`follower_ID`);
ALTER TABLE
    `User_Follower` ADD CONSTRAINT `user_follower_user_id_foreign` FOREIGN KEY(`user_ID`) REFERENCES `User`(`user_ID`);