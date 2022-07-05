using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Helper
/// </summary>
public static class Helper
{
    public static String[] getArrayWithAddedString(String[] eles, String newele)
    {
        String[] neweles = new String[eles.Length + 1];
        int i = 0;
        foreach (String ele in eles)
        {
            neweles[i++] = ele;
        }
        neweles[i] = newele;
        return neweles;
    }
    public static void setAmsg(String amsg)
    {
        if (HttpContext.Current.Session["amsg"] == null)
        {
            String[] s = new String[] { amsg };
            HttpContext.Current.Session["amsg"] = s;
        }
        else
        {
            HttpContext.Current.Session["amsg"] = getArrayWithAddedString((String[])HttpContext.Current.Session["amsg"], amsg);
        }
    }

    public static void setSmsg(String smsg)
    {
        if (HttpContext.Current.Session["smsg"] == null)
        {
            String[] s = new String[] { smsg };
            HttpContext.Current.Session["smsg"] = s;
        }
        else
        {
            HttpContext.Current.Session["smsg"] = getArrayWithAddedString((String[])HttpContext.Current.Session["smsg"], smsg);
        }
    }


    public static void END(params Object[] os)
    {
        foreach (Object o in os)
        {
            HttpContext.Current.Response.Write(o.ToString() + "<br>");
        }
        HttpContext.Current.Response.End();
    }
}