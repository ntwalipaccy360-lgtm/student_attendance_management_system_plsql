-- =========================================
-- Group Member: Ntwali Pacifique (PL/SQL Developer)
-- Task: Stored Procedure for Attendance
-- =========================================
CREATE OR REPLACE PROCEDURE MarkAttendance (
    p_AttendanceID NUMBER,
    p_StudentID NUMBER,
    p_CourseID NUMBER,
    p_Date DATE,
    p_Status VARCHAR2
)
IS
BEGIN
    INSERT INTO Attendance (
        AttendanceID,
        StudentID,
        CourseID,
        AttendanceDate,
        Status
    )
    VALUES (
        p_AttendanceID,
        p_StudentID,
        p_CourseID,
        p_Date,
        p_Status
    );

    DBMS_OUTPUT.PUT_LINE('Attendance recorded successfully');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error while recording attendance');
END;
/
