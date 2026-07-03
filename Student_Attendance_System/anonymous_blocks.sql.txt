-- =========================================
-- Group Member: Umutoni Fortunate (SQL Analyst)
-- Task: Test PL/SQL execution blocks
-- =========================================
BEGIN
    MarkAttendance(1001, 1, 101, TO_DATE('2026-07-03','YYYY-MM-DD'), 'Present');
END;
/
 TESTING FUNCTION 

DECLARE
    v_result NUMBER;
BEGIN
    v_result := GetAttendancePercentage(1);
    DBMS_OUTPUT.PUT_LINE('Attendance Percentage = ' || v_result || '%');
END;
/
