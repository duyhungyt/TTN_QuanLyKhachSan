namespace TTN_QuanLyKhachSan
{
    partial class frmQuanLyNguoiDung
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
            this.lstDanhSachNV = new System.Windows.Forms.ListBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.SuspendLayout();
            // 
            // lstDanhSachNV
            // 
            this.lstDanhSachNV.Dock = System.Windows.Forms.DockStyle.Left;
            this.lstDanhSachNV.FormattingEnabled = true;
            this.lstDanhSachNV.ItemHeight = 19;
            this.lstDanhSachNV.Location = new System.Drawing.Point(0, 0);
            this.lstDanhSachNV.Margin = new System.Windows.Forms.Padding(4);
            this.lstDanhSachNV.Name = "lstDanhSachNV";
            this.lstDanhSachNV.Size = new System.Drawing.Size(161, 426);
            this.lstDanhSachNV.TabIndex = 0;
            // 
            // panel1
            // 
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(161, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(633, 426);
            this.panel1.TabIndex = 1;
            // 
            // frmQuanLyNguoiDung
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(794, 426);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.lstDanhSachNV);
            this.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "frmQuanLyNguoiDung";
            this.Text = "Quản lý người dùng";
            this.Load += new System.EventHandler(this.frmQuanLyNguoiDung_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListBox lstDanhSachNV;
        private System.Windows.Forms.Panel panel1;
    }
}