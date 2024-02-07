--ENTITIES

CREATE TABLE Motion_Picture (
    m_id char(20),
    name varchar,
    genre char(20),
    production varchar,
    release_date date,
    budget int,
    ratings float,
        CHECK (ratings >= 0 AND ratings <= 10),
    PRIMARY KEY (m_id)
)

CREATE TABLE Movies (
    m_id char(20),
    box_office varchar,
    PRIMARY KEY (m_id),
    FOREIGN KEY (m_id) REFERENCES Motion_Picture
)

CREATE TABLE TV_Series (
    m_id char(20),
    seasons int,
    PRIMARY KEY (m_id)
    FOREIGN KEY (m_id) REFERENCES Motion_Picture
)

CREATE TABLE Genre (
    u_id char(20),
    descr varchar,
    PRIMARY KEY (u_id)
)

CREATE TABLE People (
    p_id char(20),
    person_name char(30),
    nationality char(20),
    date_of_birth date,
    gender char(10),
    PRIMARY KEY (p_id)
)

CREATE TABLE Location (
    l_id char(20),
    location_name varchar,
    city varchar,
    country varchar,
    PRIMARY KEY (l_id)
)

CREATE TABLE Users (
    u_id char(20),
    email varchar,
    user_name char(30), 
    age int,
    PRIMARY KEY (u_id)
)

CREATE TABLE Awards (
    a_id char(20),
    award_name char(30),
    received date,
    PRIMARY KEY (a_id)
)

CREATE TABLE Roletype (
    r_id char(20),
    role_name char(30),
    PRIMARY KEY (r_id)
)

--RELATIONS

CREATE TABLE PMR ( --People, Motion Pic, Roletype
    p_id char(20),
    m_id char(20),
    r_id char(20),
    a_id char(20),
    FOREIGN KEY (p_id) REFERENCES People,
    FOREIGN KEY (m_id) REFERENCES Motion_Picture
    FOREIGN KEY (r_id) REFERENCES Roletype,
    FOREIGN KEY (a_id) REFERENCES Awards
)

CREATE TABLE User_Likes (
    u_id char(20),
    m_id char(20),
    PRIMARY KEY (u_id, m_id),
    FOREIGN KEY (u_id) REFERENCES User,
    FOREIGN KEY (m_id) REFERENCES Motion_Picture,
)

CREATE TABLE Genre_Pic (
    g_id char(20),
    m_id char(20),
    PRIMARY KEY (g_id, m_id)
    FOREIGN KEY (g_id) REFERENCES Genre,
    FOREIGN KEY (m_id) REFERENCES Motion_Picture,
)

CREATE TABLE Pic_Location (
    m_id char(20),
    l_id char(20),
    PRIMARY KEY (m_id, l_id),
    FOREIGN KEY (m_id) REFERENCES Motion_Picture,
    FOREIGN KEY (l_id) REFERENCES Shooting_Location
)
