SELECT Employee.EmployeeID, Degree, CV, FirstName, LastName, SalaryScale,
HolidayeAllowance, HourlyRate, OfficeCertificate, Height, [FF or BE]
FROM Employee
LEFT JOIN FullTime 
ON (Employee.EmployeeID = FullTime.EmployeeID)
LEFT JOIN PartTime
ON (Employee.EmployeeID = PartTime.EmployeeID)
LEFT JOIN Secretary
ON (Employee.EmployeeID = Secretary.EmployeeID)
LEFT JOIN Security
ON (Employee.EmployeeID = Security.EmployeeID)
LEFT JOIN Developer
ON (Employee.EmployeeID = Developer.EmployeeID)