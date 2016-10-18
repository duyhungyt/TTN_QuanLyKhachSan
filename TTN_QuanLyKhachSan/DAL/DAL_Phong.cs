using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using DAL;
using System.Data;

namespace DAL
{
    public class DAL_Phong
    {
        private KetNoiData connect = new KetNoiData();
        public DataTable ThongTinPhong(string dk)
        {
            DataTable tb = connect.GetDataTable("select * from tblPhong "+ dk );
            return tb;
        }

        public void ThemThongTin(EC_Phong EC_Ph)
        {
            connect.ThucHienLenh("insert into tblPhong(MaPh,SoPhong,TrangThai) values(N'" + EC_Ph.MaPh + "', N'" + EC_Ph.SoPhong + "', N'" + EC_Ph.TrangThai + "'");
        }

        public void SuaThongTin(EC_Phong EC_Ph)
        {
            connect.ThucHienLenh("update tblPhong set SoPhong = N'" + EC_Ph.SoPhong + "', TrangThai = N'" + EC_Ph.TrangThai + "'  where MaPh = '" + EC_Ph.MaPh + "'");
        }

        public void XoaTTPhong(EC_Phong EC_Ph)
        {
            connect.ThucHienLenh("delete from tblPhong where MaPh = '" + EC_Ph.MaPh + "'");
        }
    }
}
