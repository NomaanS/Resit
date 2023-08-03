
namespace OOPCA1
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.sqlDataAdapter1 = new Microsoft.Data.SqlClient.SqlDataAdapter();
            this.showstudenttbtn = new System.Windows.Forms.Button();
            this.showlecturebtn = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.studfromcork = new System.Windows.Forms.Button();
            this.lectur6kbtn = new System.Windows.Forms.Button();
            this.maleLecturers = new System.Windows.Forms.Button();
            this.students25age = new System.Windows.Forms.Button();
            this.lectureinf = new System.Windows.Forms.Button();
            this.studentinf = new System.Windows.Forms.Button();
            this.backbtn = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView
            // 
            this.dataGridView.AllowUserToOrderColumns = true;
            this.dataGridView.BackgroundColor = System.Drawing.Color.LightCyan;
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Dock = System.Windows.Forms.DockStyle.Right;
            this.dataGridView.GridColor = System.Drawing.Color.Black;
            this.dataGridView.Location = new System.Drawing.Point(177, 0);
            this.dataGridView.Margin = new System.Windows.Forms.Padding(2);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.RowHeadersWidth = 51;
            this.dataGridView.RowTemplate.Height = 24;
            this.dataGridView.Size = new System.Drawing.Size(883, 567);
            this.dataGridView.TabIndex = 0;
            // 
            // showstudenttbtn
            // 
            this.showstudenttbtn.BackColor = System.Drawing.Color.LightSlateGray;
            this.showstudenttbtn.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.showstudenttbtn.Font = new System.Drawing.Font("Comic Sans MS", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.showstudenttbtn.Location = new System.Drawing.Point(0, 165);
            this.showstudenttbtn.Margin = new System.Windows.Forms.Padding(2);
            this.showstudenttbtn.Name = "showstudenttbtn";
            this.showstudenttbtn.Size = new System.Drawing.Size(173, 40);
            this.showstudenttbtn.TabIndex = 1;
            this.showstudenttbtn.Text = "Students Directory";
            this.showstudenttbtn.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.showstudenttbtn.UseVisualStyleBackColor = false;
            this.showstudenttbtn.Visible = false;
            this.showstudenttbtn.Click += new System.EventHandler(this.showstudenttbtn_Click);
            // 
            // showlecturebtn
            // 
            this.showlecturebtn.AllowDrop = true;
            this.showlecturebtn.AutoEllipsis = true;
            this.showlecturebtn.BackColor = System.Drawing.Color.LightSlateGray;
            this.showlecturebtn.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.showlecturebtn.Font = new System.Drawing.Font("Comic Sans MS", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.showlecturebtn.Location = new System.Drawing.Point(-1, 121);
            this.showlecturebtn.Margin = new System.Windows.Forms.Padding(2);
            this.showlecturebtn.Name = "showlecturebtn";
            this.showlecturebtn.Size = new System.Drawing.Size(175, 40);
            this.showlecturebtn.TabIndex = 2;
            this.showlecturebtn.Text = "Lecturers Directory";
            this.showlecturebtn.UseVisualStyleBackColor = false;
            this.showlecturebtn.Visible = false;
            this.showlecturebtn.Click += new System.EventHandler(this.showlecturertbtn_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.LightSteelBlue;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.studfromcork);
            this.panel1.Controls.Add(this.lectur6kbtn);
            this.panel1.Controls.Add(this.maleLecturers);
            this.panel1.Controls.Add(this.students25age);
            this.panel1.Controls.Add(this.lectureinf);
            this.panel1.Controls.Add(this.studentinf);
            this.panel1.Controls.Add(this.backbtn);
            this.panel1.Controls.Add(this.showlecturebtn);
            this.panel1.Controls.Add(this.showstudenttbtn);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(174, 567);
            this.panel1.TabIndex = 4;
            // 
            // studfromcork
            // 
            this.studfromcork.BackColor = System.Drawing.Color.LightSlateGray;
            this.studfromcork.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.studfromcork.Font = new System.Drawing.Font("Comic Sans MS", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.studfromcork.Location = new System.Drawing.Point(1, 376);
            this.studfromcork.Margin = new System.Windows.Forms.Padding(2);
            this.studfromcork.Name = "studfromcork";
            this.studfromcork.Size = new System.Drawing.Size(173, 40);
            this.studfromcork.TabIndex = 9;
            this.studfromcork.Text = "Students from Cork";
            this.studfromcork.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.studfromcork.UseVisualStyleBackColor = false;
            this.studfromcork.Visible = false;
            this.studfromcork.Click += new System.EventHandler(this.Studfromcork_Click);
            // 
            // lectur6kbtn
            // 
            this.lectur6kbtn.BackColor = System.Drawing.Color.LightSlateGray;
            this.lectur6kbtn.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.lectur6kbtn.Font = new System.Drawing.Font("Comic Sans MS", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lectur6kbtn.Location = new System.Drawing.Point(0, 420);
            this.lectur6kbtn.Margin = new System.Windows.Forms.Padding(2);
            this.lectur6kbtn.Name = "lectur6kbtn";
            this.lectur6kbtn.Size = new System.Drawing.Size(173, 45);
            this.lectur6kbtn.TabIndex = 8;
            this.lectur6kbtn.Text = "Lecturers with Pay more than 6K";
            this.lectur6kbtn.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.lectur6kbtn.UseVisualStyleBackColor = false;
            this.lectur6kbtn.Visible = false;
            this.lectur6kbtn.Click += new System.EventHandler(this.Lectur6kbtn_Click);
            // 
            // maleLecturers
            // 
            this.maleLecturers.BackColor = System.Drawing.Color.LightSlateGray;
            this.maleLecturers.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.maleLecturers.Font = new System.Drawing.Font("Comic Sans MS", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.maleLecturers.Location = new System.Drawing.Point(0, 306);
            this.maleLecturers.Margin = new System.Windows.Forms.Padding(2);
            this.maleLecturers.Name = "maleLecturers";
            this.maleLecturers.Size = new System.Drawing.Size(173, 43);
            this.maleLecturers.TabIndex = 7;
            this.maleLecturers.Text = "Male Lecturers ";
            this.maleLecturers.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.maleLecturers.UseVisualStyleBackColor = false;
            this.maleLecturers.Visible = false;
            this.maleLecturers.Click += new System.EventHandler(this.MaleLecturers_Click);
            // 
            // students25age
            // 
            this.students25age.BackColor = System.Drawing.Color.LightSlateGray;
            this.students25age.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.students25age.Font = new System.Drawing.Font("Comic Sans MS", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.students25age.Location = new System.Drawing.Point(0, 247);
            this.students25age.Margin = new System.Windows.Forms.Padding(2);
            this.students25age.Name = "students25age";
            this.students25age.Size = new System.Drawing.Size(173, 46);
            this.students25age.TabIndex = 6;
            this.students25age.Text = "Students Above the age 25";
            this.students25age.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.students25age.UseVisualStyleBackColor = false;
            this.students25age.Visible = false;
            this.students25age.Click += new System.EventHandler(this.Students25age_Click);
            // 
            // lectureinf
            // 
            this.lectureinf.BackColor = System.Drawing.Color.LightSlateGray;
            this.lectureinf.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.lectureinf.Font = new System.Drawing.Font("Comic Sans MS", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lectureinf.Location = new System.Drawing.Point(0, 60);
            this.lectureinf.Margin = new System.Windows.Forms.Padding(2);
            this.lectureinf.Name = "lectureinf";
            this.lectureinf.Size = new System.Drawing.Size(174, 40);
            this.lectureinf.TabIndex = 5;
            this.lectureinf.Text = "Lecturer Information";
            this.lectureinf.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.lectureinf.UseVisualStyleBackColor = false;
            this.lectureinf.Click += new System.EventHandler(this.LectureInfobtn_Click);
            // 
            // studentinf
            // 
            this.studentinf.BackColor = System.Drawing.Color.LightSlateGray;
            this.studentinf.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.studentinf.Font = new System.Drawing.Font("Comic Sans MS", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.studentinf.Location = new System.Drawing.Point(0, 10);
            this.studentinf.Margin = new System.Windows.Forms.Padding(2);
            this.studentinf.Name = "studentinf";
            this.studentinf.Size = new System.Drawing.Size(173, 40);
            this.studentinf.TabIndex = 4;
            this.studentinf.Text = "Student Information";
            this.studentinf.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.studentinf.UseVisualStyleBackColor = false;
            this.studentinf.Click += new System.EventHandler(this.StudentInfobtn_Click);
            // 
            // backbtn
            // 
            this.backbtn.Font = new System.Drawing.Font("Rockwell Nova Extra Bold", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.backbtn.Location = new System.Drawing.Point(34, 525);
            this.backbtn.Name = "backbtn";
            this.backbtn.Size = new System.Drawing.Size(98, 29);
            this.backbtn.TabIndex = 3;
            this.backbtn.Text = "Back";
            this.backbtn.UseVisualStyleBackColor = true;
            this.backbtn.Visible = false;
            this.backbtn.Click += new System.EventHandler(this.backbtn_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.BackgroundImage = global::OOPCA1.Properties.Resources.download;
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pictureBox1.Location = new System.Drawing.Point(319, 92);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(562, 325);
            this.pictureBox1.TabIndex = 3;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LightCyan;
            this.ClientSize = new System.Drawing.Size(1060, 567);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.dataGridView);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView;
        private Microsoft.Data.SqlClient.SqlDataAdapter sqlDataAdapter1;
        private System.Windows.Forms.Button showstudenttbtn;
        private System.Windows.Forms.Button showlecturebtn;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button backbtn;
        private System.Windows.Forms.Button lectureinf;
        private System.Windows.Forms.Button studentinf;
        private System.Windows.Forms.Button maleLecturers;
        private System.Windows.Forms.Button students25age;
        private System.Windows.Forms.Button studfromcork;
        private System.Windows.Forms.Button lectur6kbtn;
        public System.Windows.Forms.PictureBox pictureBox1;
    }
}

