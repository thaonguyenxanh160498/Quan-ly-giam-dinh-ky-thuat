using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EIMS.UI.Models
{
    public static class EnumRefernalFile
    {
        public const int USERS = 1;
        public const int PRODUCT = 2;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case USERS:
                    return "Người dùng";
                case PRODUCT:
                    return "Sản phẩm";
                default:
                    return "";
            }
        }
    }
    public static class EnumUserType
    {
        public const int ADMIN = 0;
        public const int SUB_ADMIN = 1;
        public const int BENH_NHAN = 2;
        public const int BAC_SI = 3;
        public const int Y_TA = 4;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case SUB_ADMIN:
                    return "Quản trị hệ thống";
                case BENH_NHAN:
                    return "Bệnh nhân";
                case BAC_SI:
                    return "Bác sĩ";
                case ADMIN:
                    return "Admin";
                case Y_TA:
                    return "Y tá";
                default:
                    return "";
            }
        }
    }
    public class EnumNotificationType
    {
        public const int UP_LEVEL = 1; //add
        public const int ORDER = 2;
        public const int ALL_NOTI = 3; //add

        public static string ToString(int? value)
        {
            switch (value)
            {
                case UP_LEVEL:
                    return "Lên Levels";
                case ORDER:
                    return "Đơn hàng";
                case ALL_NOTI:
                    return "Thông báo hệ thống";

                default:
                    return "";
            }
        }
    }
    public static class EnumJsonStatus
    {
        public const int ERROR = 0;
        public const int OK = 1;
        public const int EXPIRE_TOKEN = 2;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case ERROR:
                    return "0";
                case OK:
                    return "1";
                case EXPIRE_TOKEN:
                    return "2";
                default:
                    return "";
            }
        }
    }
    public static class EnumPaymentMethod
    {

        public const int THANH_TOAN_KHI_NHAN_HANG = 1;
        public const int CHHUYEN_KHOAN = 2;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case THANH_TOAN_KHI_NHAN_HANG:
                    return "Thanh toán khi nhận hàng";
                case CHHUYEN_KHOAN:
                    return "Chuyển khoản";

                default:
                    return "";
            }
        }
    }
    public static class EnumStatusPayment
    {

        public const int CHUA_THANH_TOAN = 1;
        public const int DA_THANH_TOAN = 2;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case CHUA_THANH_TOAN:
                    return "Đã thanh toán";
                case DA_THANH_TOAN:
                    return "Chưa thanh toán";

                default:
                    return "";
            }
        }
    }
    public static class EnumOrderType
    {
        public const int DANG_KI = 3;
        public const int NHAP_HANG = 1;
        public const int CHUYEN_HANG = 2;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case NHAP_HANG:
                    return "Nhập hàng";
                case CHUYEN_HANG:
                    return "Chuyển hàng";

                default:
                    return "";
            }
        }
    }

    public static class EnumOrderStatus
    {

        public const int KHOI_TAO = 1;
        public const int TIEP_NHAN = 2;
        public const int DA_GIAO = 3;
        public const int HUY = 4;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case KHOI_TAO:
                    return "Khởi tạo";
                case TIEP_NHAN:
                    return "Đã tiếp nhận";
                case DA_GIAO:
                    return "Đã giao";
                case HUY:
                    return "Đã hủy";

                default:
                    return "";
            }
        }
    }

    public static class EnumOTPStatus
    {
        public const int INACTIVE = 2;
        public const int ACTIVE = 1;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case INACTIVE:
                    return "Không kích hoạt";
                case ACTIVE:
                    return "Kích hoạt";
                default:
                    return "";
            }
        }
    }
    public static class EnumKieuKhamBenh
    {
        public const int DUNG_TUYEN = 1;
        public const int TRAI_TUYEN = 2;
        public const int CAP_CUU = 3;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case DUNG_TUYEN:
                    return "Đúng tuyến";
                case TRAI_TUYEN:
                    return "Trái tuyến";
                case CAP_CUU:
                    return "Cấp cứu";
                default:
                    return "";
            }
        }
    }
    public static class EnumTrangThaiKhamBenh
    {
        public const int DANG_KY = 1;
        public const int DANG_KHAM = 2;
        public const int CHO_XET_NGHIEM = 3;
        public const int HOAN_THANH = 4;
        public const int CHUYEN_TUYEN = 5;
        public const int NOI_TRU = 6;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case DANG_KY:
                    return "Đăng ký";
                case DANG_KHAM:
                    return "Đang khám";
                case CHO_XET_NGHIEM:
                    return "Chờ kết quả xét nghiệm";
                case HOAN_THANH:
                    return "Hoàn thành";
                case CHUYEN_TUYEN:
                    return "Chuyển tuyến";
                case NOI_TRU:
                    return "Điều trị nội trú";
                default:
                    return "";
            }
        }
    }
    public static class EnumStatus
    {
        public const int INACTIVE = 2;
        public const int ACTIVE = 1;
        public const int FINISH = 3;
        public const int CANCEL = 4;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case INACTIVE:
                    return "Không kích hoạt";
                case ACTIVE:
                    return "Kích hoạt";
                case FINISH:
                    return "Hoàn thành";
                case CANCEL:
                    return "Hủy";
                default:
                    return "";
            }
        }
    }
    public static class EnumTrangThaiGiamDinh
    {
        public const int CHUA_PHAN_CONG = 1;
        public const int DANG_THUC_HIEN = 2;
        public const int DA_HOAN_THIEN = 3;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case CHUA_PHAN_CONG:
                    return "Chưa phân công";
                case DANG_THUC_HIEN:
                    return "Đang thực hiện";
                case DA_HOAN_THIEN:
                    return "Đã hoàn thiện";
                default:
                    return "";
            }
        }
    }
    public static class EnumStatusNews
    {
        public const int DISPLAY = 1;
        public const int NOT_DISPLAY = 2;
        public const int EXPIRED = 3;
        public const int CANCEL = 4;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case DISPLAY:
                    return "Hiển thị";
                case NOT_DISPLAY:
                    return "Không hiển thị";
                case EXPIRED:
                    return "Hết hạn";
                case CANCEL:
                    return "Hủy";
                default:
                    return "";
            }
        }
    }
    public static class EnumNewsType
    {
        public const int BINH_THUONG = 1;
        public const int CAM_NANG_KIEN_THUC = 2;
        public const int HUONG_DAN_TRONG_TROT = 3;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case BINH_THUONG:
                    return "Tin tức";
                case CAM_NANG_KIEN_THUC:
                    return "Cẩm nang kiến thức";
                case HUONG_DAN_TRONG_TROT:
                    return "Hướng dẫn trồng trọt";
                default:
                    return "";
            }
        }
    }
    public class EnumXacMinhKYC
    {
        public const int CHUA_XAC_MINH = 0;
        public const int CHO_DUYET = 1;
        public const int DA_DUYET = 2;

        public static string ToString(int? value)
        {
            switch (value)
            {
                case CHUA_XAC_MINH:
                    return "Chưa xác minh";
                case CHO_DUYET:
                    return "Chờ duyệt";
                case DA_DUYET:
                    return "Đã duyệt";
                default:
                    return "";
            }
        }
    }
    public static class EnumImageDefault
    {
        public const string AVATAR_EMPTY = "~/Files/images/default/user_empty.jpg";
        public const string PRODUCT_EMPTY = "~/Files/images/default/default_large.png";
        public const string NEWS_EMPTY = "~/Files/images/default/default_large.png";

    }
    public static class EnumLoginType
    {
        public const int PHONE = 1;
        public const int EMAIL = 2;
        public static string ToString(int? value)
        {
            switch (value)
            {
                case PHONE:
                    return "Dùng số điện thoại";
                case EMAIL:
                    return "Dùng Email";
                default:
                    return "";
            }
        }
    }
    public static class EnumActiveOTPType
    {
        public const int REGISTER = 1;
        public const int FORGOT_PASS = 2;
    }
    public static class EnumTokenType
    {
        public const int APP = 1;
        public const int WEB = 2;
    }
    public static class EnumKeySystemCompare
    {
        public const int PAGE_SIZE = 10;
        public const string UPDATE_EMAIL = "UPDATE_EMAIL";
        public const string UPDATE_FULL_NAME = "UPDATE_FULL_NAME";
        public const string UPDATE_FULL_REFERNAL = "UPDATE_FULL_REFERNAL";
        public const string UPDATE_AVATAR = "UPDATE_AVATAR";
        public const string STATUS_ORDER = "STATUS_ORDER";
        public const string USER_AGENT_LEVEL = "USER_AGENT_LEVEL";

    }
}