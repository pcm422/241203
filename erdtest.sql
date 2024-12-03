/*
ERD 설계
1. Users와 Properties는 서로 관계가 있으며, 한 사용자가 여러 숙소를 등록할 수 있습니다.
2. Users와 Bookings는 서로 관계가 있으며, 한 사용자가 여러 예약을 할 수 있습니다.
3. Properties와 Bookings는 서로 관계가 있으며, 한 숙소에 여러 예약이 있을 수 있습니다.
4. Properties와 Reviews는 서로 관계가 있으며, 한 숙소에 여러 리뷰가 있을 수 있습니다.
5. Users와 Messages는 서로 관계가 있으며, 사용자 간에 여러 메시지가 오갈 수 있습니다.
*/

use airbnb;
CREATE TABLE Users (
    userID INT AUTO_INCREMENT PRIMARY KEY,
    userName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    createDate TIMESTAMP
);

CREATE TABLE Properties (
    propertyID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    address VARCHAR(255),
    pricePerNight DECIMAL(10, 2),
    createDate TIMESTAMP,
    FOREIGN KEY (userID) REFERENCES Users(userID)
);

CREATE TABLE Bookings (
    bookingID INT AUTO_INCREMENT PRIMARY KEY,
    propertyID INT,
    userID INT,
    checkInDate DATE,
    checkOutDate DATE,
    totalPrice DECIMAL(10, 2),
    bookingDate TIMESTAMP,
    FOREIGN KEY (propertyID) REFERENCES Properties(propertyID),
    FOREIGN KEY (userID) REFERENCES Users(userID)
);

CREATE TABLE Reviews (
    reviewID INT AUTO_INCREMENT PRIMARY KEY,
    propertyID INT,
    userID INT,
    rating INT,
    comment TEXT,
    reviewDate TIMESTAMP,
    FOREIGN KEY (propertyID) REFERENCES Properties(propertyID),
    FOREIGN KEY (userID) REFERENCES Users(userID)
);

CREATE TABLE Messages (
    messageID INT AUTO_INCREMENT PRIMARY KEY,
    senderID INT,
    receiverID INT,
    messageText TEXT,
    sendDate TIMESTAMP,
    FOREIGN KEY (senderID) REFERENCES Users(userID),
    FOREIGN KEY (receiverID) REFERENCES Users(userID)
);