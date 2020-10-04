CREATE TABLE [dbo].[Assignment]
(
	[DateAssigned] DATE NOT NULL, 
    [LocCode] INT NOT NULL, 
    [StaffID] INT NOT NULL,
    PRIMARY KEY (DateAssigned, LocCode, StaffID),
    FOREIGN KEY (LocCode) REFERENCES Office,
    CONSTRAINT FK_FROM_EMPLOYEE FOREIGN KEY (StaffID) REFERENCES Employee
)
