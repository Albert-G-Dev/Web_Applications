using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Leave_form
{
    public partial class Leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string startDate = txtStartDate.Text;
            string endDate = txtEndDate.Text;
            string reason = txtReason.Text;

            // Send email notification
            SendEmail(name, startDate, endDate, reason);
            string link = "https://localhost:44300/Leave.aspx";
            string password = "infinigent123";
            Response.Redirect("EmployeeHome.aspx");


            // Display confirmation
            string message = $"Leave Application Submitted:\nName: {name}\nStart Date: {startDate}\nEnd Date: {endDate}\nReason: {reason}";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
        }

        private void SendEmail(string name, string startDate, string endDate, string reason)
        {
            try
            {

                var fromAddress = new MailAddress("infinigentg@gmail.com", "Leave Application");
                var toAddress = new MailAddress("infinigentg@gmail.com", "leave");
                const string subject = "New Leave Application Submitted";
                string body = $"Name: {name}\nStart Date: {startDate}\nEnd Date: {endDate}\nReason: {reason}";

                var smtp = new SmtpClient
                {

                    Host = "smtp.gmail.com", // Your SMTP server
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential("infinigentg@gmail.com", "infinigent123") // Your email credentials
                };

               
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(message);
                }
            }
            catch (Exception ex)
            {
                // Handle the exception (logging, alerting user, etc.)
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error sending email: " + ex.Message + "');", true);
            }
        }
    }
}





