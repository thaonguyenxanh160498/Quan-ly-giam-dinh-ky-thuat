using BASICAUTHORIZE.AGRICH;
using EIMS.MODEL;
using EIMS.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EIMS.UI.Controllers
{
    public class HomeController : Controller
    {
        public EIMSEntities db = new EIMSEntities();
        public ActionResult Index()
        {
            return RedirectToAction("Login");
        }

        [Route("login")]
        public ActionResult Login()
        {
            UserInfo nd = (UserInfo)Session["NguoiDung"];
            if (nd != null)
                return RedirectToAction("Mainpage", "Dashboard", new { area = "QuanTri" });
            var config = db.AppConfigs.FirstOrDefault();
            ViewBag.Config = config;
            return View();
        }

        [HttpPost]
        [Route("login")]
        public ActionResult Login(string u = "", string p = "")
        {
            p = p.Encode();
            var nd_dv = (from a in db.staffs.ToList()
                         where (a.username == u) && a.userpassword == p
                         select new UserInfo()
                         {
                             User = a,
                         }).FirstOrDefault();
            if (nd_dv == null)
                return Json(new { kq = "err", msg = "Đăng nhập thất bại!" }, JsonRequestBehavior.AllowGet);

            Session["NguoiDung"] = nd_dv;
            return Json(new { kq = "ok", msg = "Success!" }, JsonRequestBehavior.AllowGet);
        }


        [Route("logout")]
        public ActionResult Logout()
        {
            Session["NguoiDung"] = null;
            Session["User_Member"] = null;
            return RedirectToAction("Index", "Home", new { area = "" });
        }
        [Route("change-password")]
        public ActionResult Change_Password()
        {
            return PartialView();
        }

        [HttpPost]
        [Route("change-password")]
        public ActionResult Change_Password(string OldPassword = "", string NewPassword = "")
        {
            UserInfo nd_dv = (UserInfo)Session["NguoiDung"];
            if (nd_dv == null)
                return RedirectToAction("MainPage", "Home", new { });

            var user = (from a in db.staffs.ToList()
                        where nd_dv.User.code == a.code
                        select new UserInfo()
                        {
                            User = a,
                        }).FirstOrDefault();

            OldPassword = OldPassword.Encode();

            if (user.User.userpassword != OldPassword)
                return Json(new { kq = "err", msg = "Mật khẩu cũ không đúng!" }, JsonRequestBehavior.AllowGet);

            NewPassword = NewPassword.Encode();
            user.User.userpassword = NewPassword;
            db.SaveChanges();
            Session["NguoiDung"] = user;
            return Json(new { kq = "ok", data = EnumUserType.ADMIN, msg = "Success!" }, JsonRequestBehavior.AllowGet);
        }

        [Route("config")]
        public ActionResult Config()
        {
            return PartialView();
        }

        [HttpPost]
        [Route("config")]
        public ActionResult Config(AppConfig config, HttpPostedFileBase _imageLogin = null, HttpPostedFileBase _imagePanelLogin = null)
        {
            UserInfo nd_dv = (UserInfo)Session["NguoiDung"];
            if (nd_dv == null)
                return RedirectToAction("MainPage", "Home", new { });

            var appConfig = db.AppConfigs.FirstOrDefault();
            if (_imageLogin != null)
            {
                string rootPathImage = string.Format("~/Files/image/provider/{0}", DateTime.Now.ToString("ddMMyyyy"));
                string filePathImage = System.IO.Path.Combine(Request.MapPath(rootPathImage));
                string[] fileImage = _imageLogin.uploadFile(rootPathImage, filePathImage);
                appConfig.ImageLogin = fileImage[1];
            }
            if (_imagePanelLogin != null)
            {
                string rootPathImage = string.Format("~/Files/image/provider/{0}", DateTime.Now.ToString("ddMMyyyy"));
                string filePathImage = System.IO.Path.Combine(Request.MapPath(rootPathImage));
                string[] fileImage = _imagePanelLogin.uploadFile(rootPathImage, filePathImage);
                appConfig.ImagePanelLogin = fileImage[1];
            }
            db.SaveChanges();
            return Json(new { kq = "ok", data = EnumUserType.ADMIN, msg = "Success!" }, JsonRequestBehavior.AllowGet);
        }
    }
}