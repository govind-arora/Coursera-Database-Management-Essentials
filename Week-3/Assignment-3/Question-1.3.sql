SELECT ER.EVENTNO, ER.DATEHELD, ER.DATEREQ, ER.STATUS, ER.ESTCOST
FROM EVENTREQUEST AS ER, EVENTPLAN AS EP, FACILITY AS F, EMPLOYEE AS E
WHERE ER.EVENTNO = EP.EVENTNO AND
    EP.EMPNO = E.EMPNO AND
    ER.FACNO = F.FACNO AND
    E.EMPNAME = 'Mary Manager' AND
    F.FACNAME = 'Basketball arena' AND
    ER.DATEHELD BETWEEN '2018-10-01' AND '2018-12-31';