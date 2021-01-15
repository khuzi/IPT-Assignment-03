using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IPT.assigmnt.HelperClasses
{
    public class SaleriesHelper
    {
      
        public void AddSalary(int employee_no,int employee_salary,string from_date,string to_date)
        {
            salary sal = new salary();
            sal.emp_no = employee_no;
            sal.salary1 = employee_salary;
            sal.from_date = from_date;
            sal.to_date = to_date;

            var db = new newdataEntities();
            db.salaries.Add(sal);
            db.SaveChanges();
            db.Dispose();

        }
    }
}
