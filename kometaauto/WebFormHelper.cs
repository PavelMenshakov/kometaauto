using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;

namespace kometaauto
{
    public static class WebFormHelper
    {
        public static void DoPostBack(System.Web.UI.Page page)
        {
            page.RegisterStartupScript("AutoPostBackScript", GetPostBackScript(page).ToString());
        }
        public static StringBuilder GetPostBackScript(System.Web.UI.Page page)
        {
            StringBuilder sbScript = new StringBuilder();
            sbScript.Append("<script language='JavaScript' type='text/javascript'>\n");
            sbScript.Append("<!--\n");
            sbScript.Append(page.GetPostBackEventReference(page, "PBArg") + ";\n");
            sbScript.Append("// -->\n");
            sbScript.Append("</script>\n");
            return sbScript;
        }
        public static void DoAlert(System.Web.UI.Page page,string text)
        {
            //page.Response.Write("<script>alert('" + text + "');</script>");
            ScriptManager.RegisterStartupScript(page, typeof(Page), "", "alert('" + text + "');", true);
        }
        public static void DoNewWnd(System.Web.UI.Page page, string url)
        {
            //page.Response.Write(@"<script>window.open('"+url+ @"','_blank')</script>");
            ScriptManager.RegisterStartupScript(page, typeof(Page), "", "window.open('" + url + @"','_blank');",true);
        }
        public static void DoNewWndSelf(System.Web.UI.Page page, string url)
        {
            //page.Response.Write(@"<script>window.open('"+url+ @"','_blank')</script>");
            ScriptManager.RegisterStartupScript(page, typeof(Page), "", "window.open('" + url + @"','_self');", true);
        }

    }
}