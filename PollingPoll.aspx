<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PollingPoll.aspx.cs" Inherits="Polling.PollingPoll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:cyan">
    <form id="form1" runat="server">
        <div style="text-align:center;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">
            <asp:Label ID="header" runat="server" Font-Bold="true" Font-Underline="true" Font-Size="XX-Large" ForeColor="#0000ff" Text="WELCOME TO EASY POLLING SYSTEM. STAY HOME STAY SAFE....!"></asp:Label><br /><br />
                   <asp:Label ID="lblhd" ForeColor="Red" runat="server" Text="Who is Your favorite author?"></asp:Label><br/><br/>
            
                    <asp:RadioButton ID="rdnmdc" runat="server" Text="Miguel de Cervantes" GroupName="polling"  />
                    <br /><br />
                    <asp:RadioButton ID="rdncd" runat="server" Text="Charles Dickens" GroupName="polling" />
                    <br /><br />
                    <asp:RadioButton ID="rdnjrrrt" runat="server" Text="J.R.R. Tolkien" GroupName="polling" />
                   <br /><br />
                    <asp:RadioButton ID="rdnads" runat="server" Text="Antoine de Saint-Exuper" GroupName="polling" />
                    <br /><br />
                     <asp:Button ID="btnsaved" ToolTip="Please click here to submit your Poll" style="font-weight:700" BackColor="Green" BorderColor="#009933" Height="40px" runat="server" Text="Submit Poll" OnClick="btnsaved_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="brnrslts" runat="server" BackColor="Green" BorderColor="#009933" Height="40px" onclick="brnrslts_Click" 
                        style="font-weight: 700" ToolTip="Click here to show Results." Text="Show Results" />
              <br /><br />
                    <asp:Label ID="Label1" ForeColor="Green" runat="server"></asp:Label><br /><br /><br />
            <p>This Project is developed in .NET,SQL SERVER and Front end Scripting Languages..! By using this application you can select anyone from the above list and click on Submit Poll., The records will be saved in our DATABASE. For Results click on the Show Results. It will show the results, Developed this project Based on Requirement only. </p>
                

        </div>
    </form>
</body>
</html>

