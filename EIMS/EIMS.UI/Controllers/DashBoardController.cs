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
    public class DashBoardController : Controller
    {
        private EIMSEntities db = new EIMSEntities();
        [Route("dashboard")]
        public ActionResult MainPage()
        {
            //UserInfo nd_dv = (UserInfo)Session["NguoiDung"];
            //if (nd_dv == null || (nd_dv.User.manager != EnumUserType.ADMIN && nd_dv.User.manager != EnumUserType.SUB_ADMIN))
            //    return RedirectToAction("Index", "Home", new { area = "" });
            return View();
        }
    }
}