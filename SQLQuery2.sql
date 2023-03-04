SELECT 
    ISNULL(
      (SELECT DISTINCT salary 
      FROM Employee
      ORDER BY salary DESC
      OFFSET 1 ROW
      FETCH NEXT 1 ROW ONLY) , NULL
)as SecondHighestSalary;