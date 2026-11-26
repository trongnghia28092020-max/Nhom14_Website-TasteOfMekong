using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TasteOfMekong
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMonAnMoi();
                LoadMonAnYeuThich();
            }
        }

        private void LoadMonAnMoi()
        {
            // Sau này thay bằng: rptMonMoi.DataSource = MonAnBLL.LayTopMonMoi(4);
            DataTable dt = new DataTable();
            dt.Columns.Add("MaMonAn");
            dt.Columns.Add("TenMonAn");
            dt.Columns.Add("MoTa");
            dt.Columns.Add("ThoiGianNau");
            dt.Columns.Add("TenDanhMuc");
            dt.Columns.Add("TenDiaPhuong");
            dt.Columns.Add("HinhAnh");

            dt.Rows.Add(1, "Cá Lóc Nướng Trui Cuốn Bánh Tráng", "Cá lóc đồng tươi nướng rơm thơm lừng, cuốn bánh tráng rau sống chấm mắm nêm đậm đà.", 45, "Đặc sản quê", "Đồng Tháp", "");
            dt.Rows.Add(2, "Hủ Tiếu Mỹ Tho Sợi Dai Nước Dùng Ngọt Thanh", "Nước dùng ninh từ xương ống và mực khô, ăn kèm tôm tươi, thịt bằm và gan heo.", 90, "Món nước", "Tiền Giang", "");
            dt.Rows.Add(3, "Bánh Cống Sóc Trăng Giòn Rụm", "Bánh chiên giòn với nhân đậu xanh bùi béo, thịt bằm và tôm đất nguyên con.", 40, "Món ăn vặt", "Sóc Trăng", "");
            dt.Rows.Add(4, "Chè Bưởi Cốt Dừa An Giang", "Cùi bưởi giòn sần sật không đắng hòa quyện cùng đậu xanh bùi và nước cốt dừa béo ngậy.", 60, "Tráng miệng", "An Giang", "");

            rptMonMoi.DataSource = dt;
            rptMonMoi.DataBind();
        }

        private void LoadMonAnYeuThich()
        {
            // Sau này thay bằng: rptMonYeuThich.DataSource = MonAnBLL.LayTopMonYeuThich(4);
            DataTable dt = new DataTable();
            dt.Columns.Add("MaMonAn");
            dt.Columns.Add("TenMonAn");
            dt.Columns.Add("MoTa");
            dt.Columns.Add("ThoiGianNau");
            dt.Columns.Add("TenDiaPhuong");
            dt.Columns.Add("LuotThich");
            dt.Columns.Add("DiemDanhGia");
            dt.Columns.Add("HinhAnh");

            dt.Rows.Add(5, "Cá Kho Tộ Nước Dừa Bến Tre", "Cá bông lau kho tộ kẹo lại với nước dừa xiêm, tiêu sọ cay nồng hao cơm.", 50, "Bến Tre", 412, "4.9", "");
            dt.Rows.Add(6, "Bún Mắm Miền Tây Thập Cẩm", "Hương vị đặc trưng từ mắm cá linh hòa cùng heo quay giòn bì, tôm mực tươi rói.", 75, "Cần Thơ", 389, "4.8", "");
            dt.Rows.Add(7, "Bánh Bò Thốt Nốt Nướng Rễ Tre", "Bánh mềm xốp nhiều rễ tre, thơm lừng mùi đường thốt nốt và nước cốt dừa.", 65, "An Giang", 356, "4.9", "");
            dt.Rows.Add(8, "Lẩu Cá Linh Bông Điên Điển", "Món ngon trứ danh mùa nước nổi với vị chua thanh của me non và cá linh béo ngậy.", 40, "Đồng Tháp", 320, "4.7", "");

            rptMonYeuThich.DataSource = dt;
            rptMonYeuThich.DataBind();
        }

        protected void btnTimKiemNhanh_Click(object sender, EventArgs e)
        {
            string tuKhoa = txtTimKiemNhanh.Text.Trim();
            if (!string.IsNullOrEmpty(tuKhoa))
            {
                Response.Redirect("MonAn.aspx?search=" + Server.UrlEncode(tuKhoa));
            }
            else
            {
                Response.Redirect("MonAn.aspx");
            }
        }
    }
}