SELECT EP.PLANNO, COUNT(EPL.PLANNO), SUM(EPL.NUMBERFLD)
FROM EVENTPLAN AS EP, EVENTPLANLINE AS EPL
WHERE EP.PLANNO = EPL.PLANNO
GROUP BY EP.PLANNO;