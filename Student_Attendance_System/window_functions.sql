-- =========================================
-- Group Member: Ntwali Pacifique (SQL Analyst)
-- Task: Rank students using Window Functions
-- =========================================
SELECT 
    StudentID,
    AttendancePercentage,
    RANK() OVER (ORDER BY AttendancePercentage DESC) AS RankPosition
FROM (
    SELECT 
        StudentID,
        ROUND(
            (SUM(CASE WHEN Status = 'Present' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
            2
        ) AS AttendancePercentage
    FROM Attendance
    GROUP BY StudentID
);
