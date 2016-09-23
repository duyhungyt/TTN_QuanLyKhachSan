using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DAL;
using Entity;

namespace TTN_QuanLyKhachSan
{
    public partial class frmQuanLyNguoiDung : Form
    {
        private EC_TaiKhoan EC_TK = new EC_TaiKhoan();
        private DAL_TaiKhoan DAL_TK = new DAL_TaiKhoan();
        public frmQuanLyNguoiDung()
        {
            InitializeComponent();
        }

        private void frmQuanLyNguoiDung_Load(object sender, EventArgs e)
        {
            lstDanhSachNV.Items.Add(frmMain._taikhoan);
            string _loaiTK = DAL_TK.LayLoatTK(frmMain._taikhoan);
            if (_loaiTK == "1")
            {
                //load danh sach tai khoan
                DataTable tbl = DAL_TK.LayDanhSachTK("MaNV != 'ADMIN'");
                for (int i = 0; i<tbl.Rows.Count; i++)
                {
                    lstDanhSachNV.Items.Add(tbl.Rows[i]["MaNV"].ToString());
                }
            }
        }
    }
}
