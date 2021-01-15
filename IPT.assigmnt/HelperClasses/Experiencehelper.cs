using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IPT.assigmnt.HelperClasses
{
    public class Experiencehelper
    {
        public void AddExperience(int employe_experience,string employe_level)
        {
            experience exp = new experience();
            exp.employe_experience = employe_experience;
            exp.employe_level = employe_level;


            var db = new newdataEntities();
            db.experiences.Add(exp);
            db.SaveChanges();
            db.Dispose();

        }
    }
}
