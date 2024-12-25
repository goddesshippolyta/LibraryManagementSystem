using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace LibraryManagementSystem
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();
            Server.ClearError();

            if (ex != null)
            {
                string errorMessage = (ex.InnerException != null) ? ex.InnerException.Message : ex.Message;

                // Hata burada günlüklenirse

                // Kullanıcıya genel bir hata mesajı ile error sayfasına yönlendirme
                Response.Redirect("../ErrorPage.aspx?ErrorMessage=Bir hata oluştu.");
            }

        }
    }
}