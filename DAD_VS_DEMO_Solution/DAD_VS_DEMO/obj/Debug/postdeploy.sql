/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/



IF ('$(DeployTestData)' = 'true' )

BEGIN


delete from Employee;


insert into Employee (StaffID, GivenName, Surname) VALUES
(1, 'Johns', 'Hancock'),
(2, 'Joasn', 'Hancock'),
(3, 'Jilsl', 'Hancock'),
(4, 'Jasosn', 'Hancock')


END
GO
