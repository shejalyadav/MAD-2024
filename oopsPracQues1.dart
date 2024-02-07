// 1. Create a class employee with the properties: EmpId, EmpName, EmpDept and EmpSalary. Provide
// setter and getter methods for these properties. Calculate the salary as per the dept of the
// employee. All employee are entitled for basic salary 50000 with Allowances as per the dept. The
// percentage of allowances are given in the following map: {admin: 20%, teamlead:70%, technical:
// 60%, officestaff:10%}.

class Employee {
  int _empId;
  String _empName;
  String _empDept;
  double _empSalary;

  get empId => this._empId;

  set empId(value) => this._empId = value;

  get empName => this._empName;

  set empName(value) => this._empName = value;

  get empDept => this._empDept;

  set empDept(value) => this._empDept = value;

  get empSalary => this._empSalary;

  set empSalary(value) => this._empSalary = value;

  Employee(this._empId, this._empName, this._empDept) {}

  final Map<String, double> deptAllowances = {
    'admin': 0.2,
    'teamlead': 0.7,
    'technical': 0.6,
    'officestaff': 0.1,
  };

  double calculateSalary() {
    double basicSalary = 50000;
    double allowance = basicSalary * deptAllowances[_empDept]!;
    return basicSalary + allowance;
  }
}

void main() {
  var emp1 = Employee(10, 'shejal', 'admin');
  print('Employee ID: ${emp1.empId}');
  print('Employee Name: ${emp1.empName}');
  print('Employee Department: ${emp1.empDept}');
  print('Employee Salary: ${emp1.empSalary}');
}
