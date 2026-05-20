-- ============================================================
-- DAY 1: DATABASE + TABLE + SAMPLE DATA
-- This script creates the TaskTracker database, recreates the
-- Tasks table, and inserts 10 sample records.
-- ============================================================


-- ============================================================
-- Drop the Tasks table if it already exists
-- This prevents the "object already exists" error when re-running.
-- ============================================================
DROP TABLE IF EXISTS Tasks;
GO


-- ============================================================
-- Create the Tasks table
-- Fields:
--   Id           : Auto-incrementing primary key
--   Title        : Short task name (required)
--   Description  : Longer explanation (optional)
--   Status       : Open / In Progress / Completed (required)
--   Priority     : Low / Medium / High (required)
--   DueDate      : When the task is due
--   CreatedDate  : Automatically set to current timestamp
-- ============================================================
CREATE TABLE Tasks(
    Id INT IDENTITY(1, 1) PRIMARY KEY,   -- Unique ID for each task
    Title VARCHAR(100) NOT NULL,         -- Task title
    Description VARCHAR(500),            -- Optional description
    Status VARCHAR(20) NOT NULL,         -- Task status
    Priority VARCHAR(20) NOT NULL,       -- Task priority
    DueDate DATE,                        -- Due date
    CreatedDate DATETIME NOT NULL        -- Timestamp of creation
        DEFAULT GETDATE()                -- Auto-filled by SQL Server
);
GO


-- ============================================================
-- Insert sample task records
-- These 10 rows populate the table with realistic test data.
-- ============================================================
INSERT INTO Tasks(Title, Description, Status, Priority, DueDate, CreatedDate)
VALUES
('Fix Login Bug', 'Resolve issue preventing user login', 'Open', 'High', '2026-06-01', GETDATE()),
('Add Dark Mode', 'Implement UI theme toggle', 'In Progress', 'Medium', '2026-06-10', GETDATE()),
('Write Unit Tests', 'Add tests for API endpoints', 'Open', 'Low', '2026-06-15', GETDATE()),
('Optimize Database', 'Improve query performance', 'Open', 'High', '2026-06-05', GETDATE()),
('Create Landing Page', 'Design homepage layout', 'Completed', 'Medium', '2026-05-20', GETDATE()),
('Email Notifications', 'Add email alerts for tasks', 'In Progress', 'High', '2026-06-12', GETDATE()),
('Refactor API', 'Clean up controller logic', 'Open', 'Low', '2026-06-18', GETDATE()),
('Add Filtering', 'Filter tasks by status/priority', 'Open', 'Medium', '2026-06-08', GETDATE()),
('Fix CSS Issues', 'Resolve layout inconsistencies', 'Completed', 'Low', '2026-05-22', GETDATE()),
('Deploy to Server', 'Push app to production environment', 'Open', 'High', '2026-06-20', GETDATE());
GO