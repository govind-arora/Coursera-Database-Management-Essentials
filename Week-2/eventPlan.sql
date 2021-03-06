CREATE TABLE EVENTPLAN (
    PLANNO CHAR(5) NOT NULL,
    EVENTNO CHAR(5) NOT NULL,
    WORKDATE DATE NOT NULL,
    NOTES TEXT,
    ACTIVITY CHAR(10) NOT NULL,
    EMPNO CHAR(5),
    CONSTRAINT PK_EVENTPLAN PRIMARY KEY (PLANNO),
    CONSTRAINT FK_EVENTREQUEST FOREIGN KEY (EVENTNO) REFERENCES EVENTREQUEST (EVENTNO),
    CONSTRAINT FK_EMPLOYEE FOREIGN KEY (EMPNO) REFERENCES EMPLOYEE (EMPNO)
);  