<table style="width: 1000px; height: 91px; margin: auto;">
    <tr>
        <td rowspan="2">
            <img src="Content/Admin/Images/gears.gif" style="margin-top: -32px;" />
        </td>
        <td rowspan="2">
            <div style="width: 472px; font-size: 17px; font-weight: bold; text-shadow: 0px 1px 1px rgb(235, 231, 231);">
                Hệ thống quản trị Website
            </div>
        </td>
            <td style="height: 35px">
                <div style="float: right;">
                    <ul class="cssMenu">
                        <li>
                            <a href="/Admin/Account">
                                <img src="@Session["Avatar_Admin"].ToString()" id="img_Avattar" class="Avatar" style="margin-top: -4px; vertical-align: top; height: 25px; width: 25px" />
                                <label id="lb_TenDN" style="color: #000; font-weight: bold"></label>
                            </a>
                            <ul>
                                <li><a href="/Admin/Account">Thông tin cá nhân</a></li>
                                <li><a href="/Admin/ChangePassword">Đổi mật khẩu</a></li>
                                <li>
                                    <a href="@Url.Action("Logout","Admin")">Đăng xuất</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </td>
        
    </tr>
    <tr>
        <td>
            <a href="/Home" target="_blank" style="font-size: 13px; color: black; float: right">Trang chủ</a>
            <div style="float: right; padding: 0px 10px; color: #FFF">|</div>
            <a href="/Admin" style="font-size: 13px; color: black; float: right">Trang Admin</a>
        </td>
    </tr>
</table>
