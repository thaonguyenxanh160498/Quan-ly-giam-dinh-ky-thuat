using EIMS.MODEL;
using EIMS.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EIMS.UI.Controllers
{
    [RouteArea("QuanTri", AreaPrefix = "admin")]
    [Route("{action}")]
    public class PhanCongGiamDinhController : Controller
    {
        public EIMSEntities db = new EIMSEntities();
        [Route("dich-vu/main-page")]
        public ActionResult MainPage()
        {
            //UserInfo nd_dv = (UserInfo)Session["NguoiDung"];
            //if (nd_dv == null || (nd_dv.User.LoaiNguoiDung != EnumUserType.ADMIN && nd_dv.User.LoaiNguoiDung != EnumUserType.SUB_ADMIN))
            //    return RedirectToAction("Index", "Home", new { area = "" });
            return View();
        }
        [Route("dich-vu/list")]
        public ActionResult List(string keyword = "", int? status = EnumTrangThaiGiamDinh.CHUA_PHAN_CONG, int sotrang = 1, int tongsodong = 5)
        {
            //UserInfo nd_dv = (UserInfo)Session["NguoiDung"];
            //if (nd_dv == null || (nd_dv.User.LoaiNguoiDung != EnumUserType.ADMIN && nd_dv.User.LoaiNguoiDung != EnumUserType.SUB_ADMIN))
            //    return RedirectToAction("Index", "Home", new { area = "" });

            //if (keyword != "")
            //    keyword = keyword.BoDauTiengViet().ToLower();

            //var list = (from a in db.DichVus.ToList()
            //            where (keyword == "" || (keyword != "" && (a.Ten.BoDauTiengViet().ToLower().Contains(keyword))
            //            && (a.MaDichVu.BoDauTiengViet().ToLower().Contains(keyword))
            //            )
            //            )
            //            && (status == null ? true : a.TrangThaiID == status)
            //            select a).OrderBy(x => x.Id);

            //int tongso = list.Count();

            //sotrang = sotrang <= 0 ? 1 : sotrang;
            //tongsodong = tongsodong <= 0 ? 10 : tongsodong;
            //int tongsotrang = tongso % tongsodong > 0 ? tongso / tongsodong + 1 : tongso / tongsodong;
            //tongsotrang = tongsotrang <= 0 ? 1 : tongsotrang;
            //sotrang = sotrang > tongsotrang ? tongsotrang - 1 : sotrang - 1;
            //ViewBag.sotrang = sotrang + 1;
            //ViewBag.tongsotrang = tongsotrang;
            //ViewBag.tongso = tongso;
            //return PartialView(list == null ? list : list.Skip(sotrang * tongsodong).Take(tongsodong));
            return PartialView();
        }
        [Route("dich-vu/update")]
        public ActionResult Update(int? id = null)
        {
            //UserInfo nd_dv = (UserInfo)Session["NguoiDung"];
            //if (nd_dv == null || (nd_dv.User.LoaiNguoiDung != EnumUserType.ADMIN && nd_dv.User.LoaiNguoiDung != EnumUserType.SUB_ADMIN))
            //    return RedirectToAction("Index", "Home", new { area = "" });
            //var dichVu = db.DichVus.FirstOrDefault(x => x.Id == id);

            //string cbxLoaiDichVu = "<option value=\"\">Chọn loại dịch vụ...</option>";
            //var loaiDichVu = db.LoaiDichVus.Where(x => x.TrangThaiID == EnumStatus.ACTIVE).ToList();
            //foreach (var item in loaiDichVu)
            //{
            //    cbxLoaiDichVu += string.Format("<option value=\"{0}\" {2}>{1}</option>", item.Id, item.Ten, dichVu != null && dichVu.LoaiDichVuID == item.Id ? "selected" : "");
            //}
            //ViewBag.cbxLoaiDichVu = cbxLoaiDichVu;
            //return PartialView(dichVu);
            return PartialView();
        }
        [Route("dich-vu/update")]
        [HttpPost, ValidateInput(false)]
        public ActionResult Update()
        {
            //UserInfo nd_dv = (UserInfo)Session["NguoiDung"];
            //if (nd_dv == null || (nd_dv.User.LoaiNguoiDung != EnumUserType.ADMIN && nd_dv.User.LoaiNguoiDung != EnumUserType.SUB_ADMIN))
            //    return RedirectToAction("Index", "Home", new { area = "" });
            //if (dichVu.Id == 0)
            //{
            //    dichVu.MaDichVu = Functions.CreateCode();

            //    db.DichVus.Add(dichVu);
            //    db.SaveChanges();
            //    return Json(new { kq = "ok", msg = "Success!" }, JsonRequestBehavior.AllowGet);
            //}
            //else
            //{
            //    // up date
            //    var old = db.DichVus.FirstOrDefault(x => x.Id == dichVu.Id);
            //    if (old == null)
            //        return Json(new { kq = "err", msg = "Thông tin không xác định!" }, JsonRequestBehavior.AllowGet);
            //    old.Ten = dichVu.Ten;
            //    old.Gia = dichVu.Gia;
            //    old.ApDungBHYT = dichVu.ApDungBHYT;
            //    old.LoaiDichVuID = dichVu.LoaiDichVuID;
            //    old.TrangThaiID = dichVu.TrangThaiID;
            //    db.SaveChanges();
            //    return Json(new { kq = "ok", msg = "Success!" }, JsonRequestBehavior.AllowGet);
            //}
            return Json(new { kq = "ok", msg = "Success!" }, JsonRequestBehavior.AllowGet);
        }


        [Route("dich-vu/delete")]
        public ActionResult Delete(int? id = null)
        {
            //UserInfo nd_dv = (UserInfo)Session["NguoiDung"];
            //if (nd_dv == null || (nd_dv.User.LoaiNguoiDung != EnumUserType.ADMIN && nd_dv.User.LoaiNguoiDung != EnumUserType.SUB_ADMIN))
            //    return RedirectToAction("Index", "Home", new { area = "" });

            //var dichVu = db.DichVus.FirstOrDefault(x => x.Id == id);
            //if (dichVu == null)
            //    return Json(new { kq = "err", msg = "Không xác định!" }, JsonRequestBehavior.AllowGet);

            //db.DichVus.Remove(dichVu);
            //db.SaveChanges();
            return Json(new { kq = "ok", msg = "Thành công!" }, JsonRequestBehavior.AllowGet);
        }

        [Route("dich-vu/change-status")]
        public ActionResult Change_Status(int? id = null)
        {
            UserInfo nd_dv = (UserInfo)Session["NguoiDung"];
            //if (nd_dv == null || (nd_dv.User.LoaiNguoiDung != EnumUserType.ADMIN && nd_dv.User.LoaiNguoiDung != EnumUserType.SUB_ADMIN))
            //    return RedirectToAction("Index", "Home", new { area = "" });

            //var dichVu = db.DichVus.FirstOrDefault(x => x.Id == id);
            //if (dichVu == null)
            //    return Json(new { kq = "err", msg = "Không xác định!" }, JsonRequestBehavior.AllowGet);

            //if (dichVu.TrangThaiID == EnumStatus.ACTIVE)
            //    dichVu.TrangThaiID = EnumStatus.INACTIVE;
            //else
            //    dichVu.TrangThaiID = EnumStatus.ACTIVE;
            //db.SaveChanges();
            return Json(new { kq = "ok", data = EnumStatus.ACTIVE, msg = "Success!" }, JsonRequestBehavior.AllowGet);
        }
    }
}