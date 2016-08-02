import UIKit

var employee1Salary = 45000.0
var employee2Salary = 54000.0
var employee3Salary = 100000.0
var employee4Salary = 20000.0

var employeeSalaries = [45000.0, 54000.0, 100000.0, 20000.0]
// var employeeSalaries: [Double] = [45000.0, 54000.0, 100000.0, 20000.0] (alternate declaration)

print(employeeSalaries.count)

employeeSalaries.append(39000.34)

print(employeeSalaries.count)

employeeSalaries.remove(at: 1)

print(employeeSalaries.count)



var students = [String]()

print(students.count)

students.append("Jay")
students.append("Batman")
students.append("Jack Bauer")

students.remove(at: 0)

print(students)
