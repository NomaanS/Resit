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

            // Pass the DAO's database connection to the Datagrid constructor
            datagrid = new Datagrid(dao.OpenCon());
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
