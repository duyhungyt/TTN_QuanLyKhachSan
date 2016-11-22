using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entity;
namespace DAL
{
    public class DAL_KhachHang
    {
        KetNoiData cn = new KetNoiData();
        public DataTable getAllKhachHang()
        {
            return cn.GetDataTable(@"SELECT * FROM tblKhachHang");
        }
        public bool Them(EC_KhachHang et)
        {
            try
            {
                cn.ThucHienLenh(@"INSERT INTO tblKhachHang (MaKH,TenKH,NgaySinh,GT,SoDT,CMND,DiaChi) VALUES ('" + et.MaKH + "',N'" + et.TenKH + "','" + et.NgaySinh + "',N'" + et.GT + "','" + et.SoDT + "','" + et.CMND + "',N'" + et.DiaChi + "')");
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool Sua(EC_KhachHang et)
        {
            try
            {
                cn.ThucHienLenh(@"UPDATE tblKhachHang SET TenKH = N'" + et.TenKH + "',NgaySinh = '" + et.NgaySinh + "',GT = N'" + et.GT + "', SoDT = '" + et.SoDT + "',CMND = '" + et.CMND + "',DiaChi = N'" + et.DiaChi + "' where MaKH = '" + et.MaKH + "'");
                return true;
            }
            catch
            {
                return false;
            }
        }
        public void Xoa(EC_KhachHang et)
        {
            cn.ThucHienLenh(@"DELETE FROM tblKhachHang where MaKH = '" + et.MaKH + "'");
        }
        public DataTable getGioiTinh()
        {
            return cn.GetDataTable(@"SELECT DISTINCT GT FROM tblKhachHang");
        }
    }
}
