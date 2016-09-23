using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TTN_QuanLyKhachSan
{
    public partial class frmMain : Form
    {
        public static string _taikhoan = "";
        public frmMain()
        {
            InitializeComponent();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            Form frmDN = new frmDangNhap();
            DialogResult tl;
            tl = frmDN.ShowDialog();
            if (tl != DialogResult.OK)
            {
                Application.Exit();
            }
        }

        private void btnNguoiDung_Click(object sender, EventArgs e)
        {
            Form frm = new frmQuanLyNguoiDung();
            frm.ShowDialog();
        }
    }
}
