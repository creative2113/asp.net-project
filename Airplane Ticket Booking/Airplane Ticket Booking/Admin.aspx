<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs"
Inherits="Airplane_Ticket_Booking.YoneticiPaneli" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title></title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css" />
    <style>
      .tableContainer {
        border-radius: 10px;
        box-shadow: 10px 10px 10px 10px rgba(0, 0.3, 0.3, 0.3);
        width: auto;
        margin: auto;
        padding: 30px;
        margin-top: 10px;
      }
      .gridView {
        width: 100%;
        text-align: center;
        margin: 0 auto;
      }
    </style>
  </head>
  <body>
    <form id="form1" autocomplete="off" runat="server">
      <div>
        <nav>
          <div class="container d-flex align-items-center">
            <a href="MainPage.aspx">Main Page</a>
            <a id="MyTicketsHR" runat="server" href="MyTickets.aspx">My
              Tickets</a>
            <a href="Info.aspx">Info</a>
            <a href="ContactUs.aspx">Contact Us</a>
            <a id="signInHR" runat="server" href="LogIn.aspx">SignIn</a>
            <a id="signUpHR" runat="server" href="SignUp.aspx">SignUp</a>
            <asp:linkbutton
              ID="logOutBtn"
              runat="server"
              OnClick="logOutBtn_Click">LogOut</asp:linkbutton>
            <asp:label
              ID="welcomeLBL"
              CssClass="baslabel fas fa-bus"
              Style="margin-left: 300px;"
              runat="server"
              Text="Welcome"></asp:label>
          </div>
        </nav>
        <div class="tableContainer">
          <h1 style="color: white">Reservations</h1>
          <asp:gridview
            ID="InfoGridView"
            runat="server"
            CellPadding="2"
            ForeColor="Blue"
            GridLines="None"
            CssClass="gridView"
            BackColor="#666666"
            BorderColor="Tan"
            BorderWidth="1px"
            AutoGenerateColumns="False">
            <columns>
              <asp:boundfield DataField="BookingID" HeaderText="BookingID" />
              <asp:boundfield
                DataField="PassengerID"
                HeaderText="PassengerID" />
              <asp:boundfield
                DataField="PassenderSeatNum"
                HeaderText="Seat Number" />
              <asp:boundfield
                DataField="AirplaneCapacity"
                HeaderText="Capacity" />
              <asp:boundfield
                DataField="PassengerName"
                HeaderText="Passenger Name" />
              <asp:boundfield
                DataField="PassengerSurname"
                HeaderText="Passenger Surname" />
              <asp:boundfield DataField="PassengerPhone" HeaderText="Phone" />
              <asp:boundfield
                DataField="DeparturePoint"
                HeaderText="DeparturePoint" />
              <asp:boundfield
                DataField="Destination"
                HeaderText="Destination" />
              <asp:boundfield DataField="Date" HeaderText="Date" />
              <asp:boundfield DataField="Price" HeaderText="Price" />
            </columns>
            <alternatingrowstyle BackColor="#333333" />
            <footerstyle BackColor="Tan" />
            <headerstyle BackColor="Tan" Font-Bold="True" />
            <pagerstyle
              BackColor="PaleGoldenrod"
              ForeColor="Black"
              HorizontalAlign="Center" />
            <selectedrowstyle BackColor="DarkSlateBlue" ForeColor="Black" />
            <sortedascendingcellstyle BackColor="#FAFAE7" />
            <sortedascendingheaderstyle BackColor="#DAC09E" />
            <sorteddescendingcellstyle BackColor="#E1DB9C" />
            <sorteddescendingheaderstyle BackColor="#C2A47B" />
          </asp:gridview>
          <div class="text-center m-5">
            <asp:button
              ID="PDFButton"
              CssClass="btn btn-success"
              runat="server"
              Text="Download as PDF"
              OnClick="PDFButton_Click" />
          </div>
        </div>
        <div class="tableContainer">
          <h1 style="color: white">Users</h1>
          <asp:gridview
            ID="UserGridView"
            runat="server"
            CellPadding="2"
            ForeColor="Blue"
            GridLines="None"
            CssClass="gridView"
            BackColor="#666666"
            BorderColor="Tan"
            BorderWidth="1px">
            <alternatingrowstyle BackColor="#333333" />
            <footerstyle BackColor="Tan" />
            <headerstyle BackColor="Tan" Font-Bold="True" />
            <pagerstyle
              BackColor="PaleGoldenrod"
              ForeColor="Black"
              HorizontalAlign="Center" />
            <selectedrowstyle BackColor="DarkSlateBlue" ForeColor="Black" />
            <sortedascendingcellstyle BackColor="#FAFAE7" />
            <sortedascendingheaderstyle BackColor="#DAC09E" />
            <sorteddescendingcellstyle BackColor="#E1DB9C" />
            <sorteddescendingheaderstyle BackColor="#C2A47B" />
          </asp:gridview>
        </div>
      </div>
    </form>
  </body>
</html>
