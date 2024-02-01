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