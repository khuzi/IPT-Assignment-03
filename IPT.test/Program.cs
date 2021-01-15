using IPT.assigmnt.HelperClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IPT.test
{
    public class Program
    {
        static void Main(string[] args)
        {
           /*  EmployeeHelper employeehelper = new EmployeeHelper();
             employeehelper.AddEmployee(106, "20/6/1996", "Aleeza", "Yusuf", 1, "19/6/2017", "03287895675");
             */

           /* 
               Titlehelper title = new Titlehelper();
               title.AddTitle(104, "Qualified Employee");  */


            /*  SaleriesHelper salary = new SaleriesHelper();
                salary.AddSalary(104, 60000, "11/3/2018", "12/5/2018"); */


            /*       
                Experiencehelper experience = new Experiencehelper();
                experience.AddExperience(5, "Qualified Level");  */

            
                departmentHelper depart = new departmentHelper();
                depart.AddDepartment("School of Law",106,3);
            
        }


    }
}
