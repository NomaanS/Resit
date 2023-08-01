using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Datagrid
    {
        private Database database;

        public Datagrid(Database database)
        {
            this.database = database;
        }

        public DataTable GetStudents()
        {
            string queryStudents = "SELECT * FROM Students";
            return database.ExecuteQuery(queryStudents);
        }

        public DataTable GetLecturers()
        {
            string queryLecturers = "SELECT * FROM Lecturers";
            return database.ExecuteQuery(queryLecturers);
        }

        public DataTable GetMaleLecturers()
        {
            string queryMaleLecturers = "SELECT * FROM Lecturers WHERE Gender = 'Male'";
            return database.ExecuteQuery(queryMaleLecturers);
        }

        public DataTable GetStudentsAboveAge25()
        {
            string queryStudentsAboveAge = "SELECT * FROM Students WHERE Age > 25";
            return database.ExecuteQuery(queryStudentsAboveAge);
        }
    }
}

