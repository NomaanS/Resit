using System;
using System.Windows.Forms;
using DAL;
using System.Data;


namespace OOPCA1
{
    public partial class Form1 : Form
    {
        private Datagrid datagrid;
        private DataTable dataTable;

        public Form1()
        {
            InitializeComponent();

            // Create an instance of the DAO class
            var dao = new DAO();

            // Get the connection string from the DAO's OpenCon() method
            string connectionString = dao.GetConnectionString();

            var db = new Database(connectionString);

            // Rest of the code remains the same
            datagrid = new Datagrid(db);
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            ShowStudentData();
        }

        private void ShowStudentData()
        {
            dataTable = datagrid.GetStudents();

            dataGridView.DataSource = dataTable;
        }

        private void ShowLecturerData()
        {
            dataTable = datagrid.GetLecturers();

            dataGridView.DataSource = dataTable;
        }

        private void showstudenttbtn_Click(object sender, EventArgs e)
        {
            ShowStudentData();
        }

        private void showlecturertbtn_Click(object sender, EventArgs e)
        {
            ShowLecturerData();
        }
    }
}
