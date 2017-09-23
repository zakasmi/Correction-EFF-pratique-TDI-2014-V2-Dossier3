﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace GestChequePharmacie_ASP
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["UserCount"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application["UserCount"] = (int)Application["UserCount"] + 1;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application["UserCount"] = (int)Application["UserCount"] - 1;

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}