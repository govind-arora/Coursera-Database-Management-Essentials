SELECT EVENTNO, DATEAUTH, STATUS
FROM EVENTREQUEST
WHERE (STATUS ='Approved' OR STATUS = 'Denied') AND 
(DATEAUTH BETWEEN str_to_date('01,JUL,18','%d,%b,%y') AND str_to_date('31,JUL,18','%d,%b,%y'));