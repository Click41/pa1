CREATE TABLE Motion_Picture (
    m_id CHAR(),
    name STRING,
    genre STRING,
    production STRING,
    release_date DATE,
    budget INT,
    ratings FLOAT(0, 10),
    PRIMARY KEY (m_id)
)

CREATE TABLE Movies(
    m_id CHAR(),
    box_office STRING,
    PRIMARY KEY (m_id),
    FOREIGN KEY (m_id)
        REFERENCES Motion_Picture,
)

CREATE TABLE TV (
    m_id CHAR(),
    seasons INTEGER,
    PRIMARY KEY (m_id),
    FOREIGN KEY (m_id)
        REFERENCES Motion_Picture,
)

CREATE TABLE Genre (
    u_id CHAR(),
    description STRING,
    PRIMARY KEY (u_id)
)

CREATE TABLE People (
    p_id CHAR(),
    name STRING,
    nationality STRING,
    date_of_birth DATE,
    gender STRING,
    PRIMARY KEY (p_id)
)

CREATE TABLE Shooting_Location (
    name STRING,
    city STRING,
    country STRING,
)

CREATE TABLE Award (
    name STRING,
    year_received DATE,
)

CREATE TABLE User (
    u_id CHAR(),
    email STRING,
    name STRING, 
    age INTEGER,
    PRIMARY KEY (u_id)
)

CREATE TABLE Role (
    p_id CHAR(),
    m_id CHAR(),
    role_type VARCHAR NOT NULL,
    PRIMARY KEY (m_id, p_id, role_type),
    FOREIGN KEY (m_id) REFERENCES Motion_Picture,
    FOREIGN KEY (p_id) REFERENCES People,
)

CREATE TABLE Likes (
    u_id CHAR(),
    m_id CHAR(),
    PRIMARY KEY (u_id, m_id),
    FOREIGN KEY (u_id) REFERENCES User,
    FOREIGN KEY (m_id) REFERENCES Motion_Picture,
)

CREATE TABLE Belongs (
    g_id CHAR(),
    m_id CHAR(),
    PRIMARY KEY (g_id, m_id)
    FOREIGN KEY (g_id) REFERENCES Genre,
    FOREIGN KEY (m_id) REFERENCES Motion_Picture,
)