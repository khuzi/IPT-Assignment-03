using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IPT.assigmnt.HelperClasses
{
    public class departmentHelper
    {
        public void AddDepartment(string department_name,int employee_no,int employe_experience)
        {
            department dep = new department();
            dep.department_name = department_name;
            dep.emp_no = employee_no;
            dep.employe_experience = employe_experience;

            var db = new newdataEntities();
            db.departments.Add(dep);
            db.SaveChanges();
            db.Dispose();

        }
    }
}
