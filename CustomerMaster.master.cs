using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton_Ch_Pass_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
    protected void Feedback_Click(object sender, EventArgs e)
    {
        Response.Redirect("FeedBack.aspx");
    }
    protected void Promotions_Click(object sender, EventArgs e)
    {
        Response.Redirect("PromotionStatus.aspx");
    }
    protected void Incentives_Click(object sender, EventArgs e)
    {
        Response.Redirect("IncentiveStatus.aspx");
    }
    protected void Services_Click(object sender, EventArgs e)
    {
        Response.Redirect("DoorStepRequest.aspx");
    }
    protected void Status_Click1(object sender, EventArgs e)
    {
        Response.Redirect("DoorStepStatus.aspx");
    }
}
