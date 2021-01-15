
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IPT.assigmnt.HelperClasses
{
    public class EmployeeHelper
    {
        private volatile Type _dependency;
        public void MyClass()
        {
            _dependency = typeof(System.Data.Entity.SqlServer.SqlProviderServices);
        }

        public void AddEmployee(int emp_no, string birth, string name, string last_name,int gender,string hire_date, string contact)
        {
            employee emp = new employee();
            emp.emp_no = emp_no;
            emp.birth_date = birth;
            emp.first_name = name;
            emp.last_name = last_name;
            emp.gender = gender;
            emp.hire_date = hire_date;
            emp.contact = contact;

            var db = new newdataEntities();
            db.employees.Add(emp);
            db.SaveChanges();
            db.Dispose();
        }



    }
}
