using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class station : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {

        
    }   
   
    protected void CreateUserWizard2_CreatingUser(object sender, LoginCancelEventArgs e)
    {
        Page.Validate();        

        if (Page.IsValid)
        {
            string qry = @"insert into Time_list(Station_name,Rate_per_seat,Time,Reach_time,[Bus_number]) values ('{0}','{1}','{2}','{3}','{4}')";
            qry = String.Format(qry, CreateUserWizard2.Stationname,
                CreateUserWizard2.RatePerSeat,
                CreateUserWizard2.Time,
                CreateUserWizard2.ReachTime,
                CreateUserWizard2.Number);
                
                
            try
            {
                DB.ExecuteNonQuery(qry);
                
            }
            catch (Exception)
            {

            }           
        } 
        e.Cancel = true;
    }
    protected void StationName_TextChanged(object sender, EventArgs e)
    {
        
    }
}
