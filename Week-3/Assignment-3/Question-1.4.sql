SELECT EPL.PLANNO, EPL.LINENO, R.RESNAME, EPL.NUMBERFLD, L.LOCNAME, EPL.TIMESTART, EPL.TIMEEND
FROM EVENTPLANLINE AS EPL, RESOURCETBL AS R, LOCATION AS L, FACILITY AS F, EVENTPLAN AS EP
WHERE EPL.RESNO = R.RESNO AND   
    EPL.LOCNO = L.LOCNO AND
    EPL.PLANNO = EP.PLANNO AND
    L.FACNO = F.FACNO AND
    F.FACNAME = 'Basketball arena' AND
    EP.ACTIVITY = 'Operation' AND
    EP.WORKDATE BETWEEN '2018-10-01' AND '2018-12-31'
