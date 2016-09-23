using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Entity;

namespace DAL
{
    public class DAL_TaiKhoan
    {
        private KetNoiData connect = new KetNoiData();
        public string LayPass(string us)
        {
            return connect.GetValue("select MatKhau from tblTaiKhoan where MaNV = '" + us + "'");
        }

        public string LayLoatTK(string us)
        {
            return connect.GetValue("select LoaiTK from tblTaiKhoan where MaNV = '" + us + "'");
        }
        public DataTable LayDanhSachTK()
        {
            return connect.GetDataTable("select MaNV from tblTaiKhoan");
        }
        public DataTable LayDanhSachTK(string dk)
        {
            return connect.GetDataTable("select MaNV from tblTaiKhoan where " + dk);
        }
        public void DoiMatKhau(string mk)
        {

        }
    }
}
