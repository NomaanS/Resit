using System;
using System.Windows.Forms;
using DAL;
using System.Data;
using System.Drawing;


namespace OOPCA1
{
    public partial class Form1 : Form
    {
        private bool InfoButtonClicked = false;
        private bool HasStudentTag = false;
        private Datagrid datagrid;
        private DataTable dataTable;

        public Form1()
        {
            InitializeComponent();

            var dao = new DAO();

            string connectionString = dao.GetConnectionString();

            var db = new Database(connectionString);

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

        private void ShowLecturersMale()
        {
            dataTable = datagrid.GetMaleLecturers();

            dataGridView.DataSource = dataTable;
        }


        private void ShowStudentsAbove25() 
        {
            dataTable = datagrid.GetStudentsAboveAge25();

            dataGridView.DataSource = dataTable;
        }

        private void ShowStudentCorkCounty() 
        {
            dataTable = datagrid.GetStudentsfromCork();

            dataGridView.DataSource = dataTable;
        }

        private void ShowLecturersPayMore6K() 
        {
            dataTable = datagrid.GetLecturersMorethan6k();

            dataGridView.DataSource = dataTable;
        }

        private void showstudenttbtn_Click(object sender, EventArgs e)
        {
            ShowStudentData();
            HidePicture(false);
            HomeButtonVisibilty();
        }

        private void showlecturertbtn_Click(object sender, EventArgs e)
        {
            ShowLecturerData();
            HidePicture(false);
            HomeButtonVisibilty();
        }

<<<<<<< HEAD
        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
=======
        private void MaleLecturers_Click(object sender, EventArgs e)
        {
            ShowLecturersMale();
            HidePicture(false);
            HomeButtonVisibilty();

        }

        private void Students25age_Click(object sender, EventArgs e)
        {
            ShowStudentsAbove25();
            HidePicture(false);
            HomeButtonVisibilty();
        }

        private void Studfromcork_Click(object sender, EventArgs e)
        {
            ShowStudentCorkCounty();
            HidePicture(false);
            HomeButtonVisibilty();
        }

        private void Lectur6kbtn_Click(object sender, EventArgs e)
        {
            ShowLecturersPayMore6K();
            HidePicture(false);
            HomeButtonVisibilty();

        }

        private void StudentInfobtn_Click(object sender, EventArgs e)
        {
            HasStudentTag = true;
            InfoButtonClicked = true;
            HomeButtonVisibilty();

        }

        private void LectureInfobtn_Click(object sender, EventArgs e)
        {
            HasStudentTag = false;
            InfoButtonClicked = true;
            HomeButtonVisibilty();
        }

        private void backbtn_Click(object sender, EventArgs e)
        {
            InfoButtonClicked = false;
            HomeButtonVisibilty();
        }

        public void HomeButtonVisibilty()
        {
            if (InfoButtonClicked == true && HasStudentTag == true)
            {
                backbtn.Visible = true;

                //Student options
                showstudenttbtn.Visible = true;
                showstudenttbtn.Location = new Point(0, 10);

                students25age.Visible = true;
                students25age.Location= new Point(0, 60);

                studfromcork.Visible = true;
                studfromcork.Location= new Point(0,110);

                studentinf.Visible = false;
                lectureinf.Visible = false;
            }

            else if(InfoButtonClicked == true && HasStudentTag == false)
            {
                backbtn.Visible = true;

                //Lecture Options
                showlecturebtn.Visible = true;
                showlecturebtn.Location = new Point(0, 10);

                maleLecturers.Visible = true;
                maleLecturers.Location = new Point(0, 60);

                lectur6kbtn.Visible = true;
                lectur6kbtn.Location = new Point(0, 110);


                studentinf.Visible = false;
                lectureinf.Visible = false;
            }
            else
            {
                backbtn.Visible = false;

                showstudenttbtn.Visible = false;
                showlecturebtn.Visible = false;

                students25age.Visible = false;
                maleLecturers.Visible = false;

                studfromcork.Visible= false;
                lectur6kbtn.Visible= false;

                studentinf.Visible = true;
                lectureinf.Visible = true;

                HidePicture(true);
            }
        }

        private void HidePicture(bool flag) { if (flag == false) { pictureBox1.Visible = false; dataGridView.Visible = true; }
            else { pictureBox1.Visible = true; ; dataGridView.Visible = false; }
        }

       
>>>>>>> raunaqbranch
    }
}
