<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Leave.aspx.cs" Inherits="Leave_form.Leave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Form</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
          <style>
              body {
                   font-family: Arial, sans-serif;
                   background-color: #08f89c;
                   margin: 0;
                   padding: 0;
               }

              .container {
                   max-width: 500px;
                   margin: 50px auto;
                   padding: 35px;
                   background: #12bfdd;
                   border-radius: 5px;
                   box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
               }

               h2 {
                  text-align: center;
                  color: #140b0b;
                }
               label {
                        margin-bottom: 5px; 
                 }

              label {
                  display: block;
                  margin-bottom: 5px;
                  color: #000000;
              }

              input[type="text"],
              input[type="date"],
              textarea {
                  width: 100%;
                  padding: 10px;
                  margin-bottom: 20px;
                  border: 1px solid #ddd;
                  border-radius: 4px;
               }

              .custom-button{
                     width: 100%;
                     padding: 10px;
                     background-color: #0aeb30;
                     border: none;
                     color: white;
                     font-size: 16px;
                     border-radius: 4px;
                     cursor: pointer;
              }

              button:hover {
                     background-color: #218838;
               }

          </style>
</head>
         <body>
            <form id="form1" runat="server">
         <div class="container">
        <h2>Leave Application Form</h2>
            <div>
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName" runat="server" required="true" />

                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="TextEmail" runat="server" required="true" />
              
                <label for="txtStartDate">Start Date:</label>
                <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date" required="true" />

                <label for="txtEndDate">End Date:</label>
                <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date" required="true" />

                <label for="txtReason">Reason:</label><br />
                <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" Rows="4" required="true" />

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="custom-button" />
            </div>
       
            </div>
     
    </form>
</body>
</html>
