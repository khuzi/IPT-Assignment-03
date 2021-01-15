using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IPT.assigmnt.HelperClasses
{
    public class Titlehelper
    {
        public void AddTitle(int employee_no,string employee_title)
        {
            title t = new title();
            t.emp_no = employee_no;
            t.title1 = employee_title;

            var db = new newdataEntities();
            db.titles.Add(t);
            db.SaveChanges();
            db.Dispose();
        }
    }
}
