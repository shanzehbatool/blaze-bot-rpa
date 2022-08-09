<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListModifyTable.aspx.cs" Inherits="Sample.ModifyTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Modify Table</title>
    <link rel="stylesheet" type="text/css" href="CSS\Bgstyle.css"/>
      <link rel="stylesheet" type="text/css" href="CSS\btn.css"/>
      <link rel="stylesheet" type="text/css" href="CSS\secondpageCSS.css"/>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
      <link rel="stylesheet" href="fontawesome-free-6.1.1-web\css\all.min.css"/>
      <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

    <script>
        $(document).ready(function () {
            $('input[id*=txtContact]').datepicker({
                dateFormat: "yy/mm/dd"
                            })
        })
    </script>

    <style type="text/css">
    /* Google Font Link */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins" , sans-serif;
}
body{
    background-image: url('indeximgf.jpg')
}
.sidebar{
  position: fixed;
  right: 0;
  top: 0;
  height: 100%;
  width: 78px;
  background: rgba(255, 255, 255, 0.03);
  padding: 6px 14px;
  z-index: 99;
  transition: all 0.5s ease;
}
.sidebar.open{
  width: 200px;
}
.sidebar .logo-details{
  height: 60px;
  display: flex;
  align-items: center;
  position: relative;
}
.sidebar .logo-details .icon{
  opacity: 0;
  transition: all 0.5s ease;
}
.sidebar .logo-details .logo_name{
  color: #fff;
  font-size: 20px;
  font-weight: 600;
  opacity: 0;
  transition: all 0.5s ease;
}
.sidebar.open .logo-details .icon,
.sidebar.open .logo-details .logo_name{
  opacity: 1;
}
.sidebar .logo-details #btn{
  position: absolute;
  top: 50%;
  right: 0;
  transform: translateY(-50%);
  font-size: 22px;
  transition: all 0.4s ease;
  font-size: 23px;
  text-align: center;
  cursor: pointer;
  transition: all 0.5s ease;
}
.sidebar.open .logo-details #btn{
  text-align: right;
}
.sidebar i{
  color: #fff;
  height: 60px;
  min-width: 50px;
  font-size: 28px;
  text-align: center;
  line-height: 60px;
}
.sidebar .nav-list{
  margin-top: 20px;
  height: 100%;
}
.sidebar li{
  position: relative;
  margin: 8px 0;
  list-style: none;
}
.sidebar li .tooltip{
  position: absolute;
  top: -20px;
  right: calc(100% + 15px);
  z-index: 3;
  background: #fff;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3);
  padding: 6px 12px;
  border-radius: 4px;
  font-size: 15px;
  font-weight: 400;
  opacity: 0;
  white-space: nowrap;
  pointer-events: none;
  transition: 0s;
}
.sidebar li:hover .tooltip{
  opacity: 1;
  pointer-events: auto;
  transition: all 0.4s ease;
  top: 50%;
  transform: translateY(-50%);
}

.sidebar.open li .tooltip {
                display: none;
            }

.sidebar input{
  font-size: 15px;
  color: #FFF;
  font-weight: 400;
  outline: none;
  height: 50px;
  width: 100%;
  width: 50px;
  border: none;
  border-radius: 12px;
  transition: all 0.5s ease;
  background: #1d1b31;
}
.sidebar.open input{
  padding: 0 20px 0 50px;
  width: 100%;
}
.sidebar .bx-search{
  position: absolute;
  top: 50%;
  right: 0;
  transform: translateY(-50%);
  font-size: 22px;
  background: #1d1b31;
  color: #FFF;
}
.sidebar.open .bx-search:hover{
  background: #1d1b31;
  color: #FFF;
}
.sidebar .bx-search:hover{
  background: #FFF;
  color: #11101d;
}
.sidebar li a{
  display: flex;
  height: 100%;
  width: 100%;
  border-radius: 12px;
  align-items: center;
  text-decoration: none;
  transition: all 0.4s ease;
  /*background: #11101D;*/
}
.sidebar li a:hover{
  background: #FFF;
}
.sidebar li a .links_name{
  color: #fff;
  font-size: 15px;
  font-weight: 400;
  white-space: nowrap;
  opacity: 0;
  pointer-events: none;
  transition: 0.4s;
}
.sidebar.open li a .links_name{
  opacity: 1;
  pointer-events: auto;
}
.sidebar li a:hover .links_name,
.sidebar li a:hover i{
  transition: all 0.5s ease;
  color: #11101D;
}
.sidebar li i{
  height: 50px;
  line-height: 50px;
  font-size: 18px;
  border-radius: 12px;
}
.sidebar li img{
  height: 45px;
  width: 45px;
  object-fit: cover;
  border-radius: 6px;
  margin-right: 10px;
}
.home-section{
  position: relative;
  min-height: 100vh;
  top: 0;
  left: 78px;
  width: calc(100% - 78px);
  transition: all 0.5s ease;
  z-index: 2;
}
.sidebar.open ~ .home-section{
  right: 250px;
  width: calc(100% - 250px);
}
.home-section .text{
  display: inline-block;
  color: #FFF;
  font-size: 15px;
  font-weight: 500;
  margin: 18px;
  text-align:center
}
@media (max-width: 420px) {
  .sidebar li .tooltip{
    display: none;
  }
}
</style>

</head>
<body style="background-image: url('indeximgf1.jpg')">


     <div class="sidebar">
       <div class="logo-details">
        <i class='bx bxs-bot'></i>
           <div class="logo_name">BlazeBot
           </div>
           <i class='bx bx-menu' id="btn" ></i>
       </div>
       <ul class="nav-list">
        <li>
           <a href="home.html">
            <i class='bx bxs-home'></i>
            <span class="links_name">Home</span>
        </a>
            <span class="tooltip">Home</span>
            </li>
         <!-- 
             <i class='bx bx-grid-alt'></i>
             <span class="links_name">Dashboard</span>
           
            <span class="tooltip">Dashboard</span>
         </li> -->
         <li>
          <a href="index.html">
            <i class='bx bx-play-circle' ></i>
            <span class="links_name">Onboard</span>
          </a>
          <span class="tooltip">Onboard</span>
        </li>
        <li>
            <a href="ModifyTable.aspx">
              <i class='bx bxs-edit-alt'></i>
              <span class="links_name">Modify Table</span>
            </a>
            <span class="tooltip">Modify Table</span>
          </li>
        <li>
          <a href="ListModifyTable.aspx">
            <i class='bx bxs-report' ></i>
            <span class="links_name">Progress Report</span>
          </a>
          <span class="tooltip">Progress Report</span>
        </li>
        <!--<li>
          <a href="#">
            <i class='bx bxs-time'></i>
            <span class="links_name">Status</span>
          </a>
          <span class="tooltip">Status</span>
        </li>-->
        <li>
          <a href="HRWebAlerts.html">
            <i class='bx bxs-bell' ></i>
            <span class="links_name">Alerts</span>
          </a>
          <span class="tooltip">Alerts</span>
        </li>
        <li>
          <a href="https://outlook.office.com.mcas.ms/mail/" target="_blank">
            <i class='bx bxs-envelope'></i>
            <span class="links_name">Outlook</span>
          </a>
          <span class="tooltip">Outlook</span>
        </li>
        <%--<li>
          <a href="#">
            <i class='bx bx-cog' ></i>
            <span class="links_name">Settings</span>
          </a>
          <span class="tooltip">Settings</span>
        </li>--%>
        <li style="margin-top: 80px;">
            <!-- <div class="profile-details">
            <img src="profile.jpg" alt="profileImg">
              <div class="name_job">
                <div class="name">Log Out</div>
                <div class="job">Web designer</div> 
              </div>
            </div> -->
            <a href="Login.aspx">
            <i class='bx bx-log-out' id="log_out" ></i>
            <span class="links_name">Log Out</span>
        </a>
        <span class="tooltip">Log Out</span>
        </li>
       </ul>
     </div>

    <form id="form1" runat="server">
        <div>
            <div>
                <img src="BBOTb.png" alt="Alternate Text"  class="user" style="margin-top:15px; margin-left:5px;margin-bottom:5px; height:80px; width:80px; border-radius:10px" />
            </div>

            <h2 style="width: auto; text-align:center; font-weight:bold; font-size:30px; color:paleturquoise; margin-top:-65px; margin-bottom:30px; margin-left:-850px;">
               
                Progress Report</h2>        
    

        
            <asp:GridView ID="gvEmp" runat="server" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="MailID"
                ShowHeaderWhenEmpty="True"

                OnRowCommand="gvEmp_RowCommand" OnRowEditing="gvEmp_RowEditing" OnRowCancelingEdit="gvEmp_RowCancelingEdit"
                OnRowUpdating="gvEmp_RowUpdating" OnRowDeleting="gvEmp_RowDeleting"

                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="gvEmp_SelectedIndexChanged" Width="1100px" HorizontalAlign="Center" 
                style="margin-top:80px; margin-left:70px; height:250px" ForeColor="Black" GridLines="Vertical">
                <%-- Theme Properties --%>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                
                <AlternatingRowStyle BackColor="#CCCCCC" />
                
                <Columns>
                    
                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("FirstName") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("FirstName") %>' runat="server" />
                        </EditItemTemplate>
                       <%-- <FooterTemplate>
                            <asp:TextBox ID="txtFirstNameFooter" runat="server" />
                        </FooterTemplate>--%>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("LastName") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtLastName" Text='<%# Eval("LastName") %>' runat="server" />
                        </EditItemTemplate>
                        <%--<FooterTemplate>
                            <asp:TextBox ID="txtLastNameFooter" runat="server" />
                        </FooterTemplate>--%>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Joining Date">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("JoiningDate","{0:dd/MM/yy}") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtContact" Text='<%# Eval("JoiningDate") %>' runat="server" />
                        </EditItemTemplate>
                       <%-- <FooterTemplate>
                            <asp:TextBox ID="txtContactFooter" runat="server" />
                        </FooterTemplate>--%>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Mail ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("MailID") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" Text='<%# Eval("MailID") %>' runat="server" />
                        </EditItemTemplate>
                        <%--<FooterTemplate>
                            <asp:TextBox ID="txtEmailFooter" runat="server" />
                        </FooterTemplate>--%>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="BGV">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("BGV") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtBGV" Text='<%# Eval("BGV") %>' runat="server" />
                        </EditItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="IT">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("IT") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtIT" Text='<%# Eval("IT") %>' runat="server" />
                        </EditItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Security">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Security") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSecurity" Text='<%# Eval("Security") %>' runat="server" />
                        </EditItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Finance">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Finance") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFinance" Text='<%# Eval("Finance") %>' runat="server" />
                        </EditItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="CorporateTraining">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CorporateTraining") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCorporateTraining" Text='<%# Eval("CorporateTraining") %>' runat="server" />
                        </EditItemTemplate>
                        </asp:TemplateField>

                     <asp:TemplateField HeaderText="OnboardStatus">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("OnboardStatus") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtOnboardStatus" Text='<%# Eval("OnboardStatus") %>' runat="server" />
                        </EditItemTemplate>
                        </asp:TemplateField>

                    
                    

                    <%--<asp:TemplateField>
                        <ItemTemplate>
                                                  
                            <asp:ImageButton runat="server" ImageUrl="edit.png" CommandName="Edit" ToolTip="Edit" Width="25px" Height="25px" Text="Edit" />
                             <asp:ImageButton runat="server" ImageUrl="delete.png" CommandName="Delete" ToolTip="Delete" Width="30px" Height="30px" Text="Delete" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton runat="server" ImageUrl="save.png" CommandName="Update" ToolTip="Update" Width="25px" Height="25px" Text="Update" />

                            <asp:ImageButton runat="server" ImageUrl="cancel.png" CommandName="Cancel" ToolTip="Cancel" Width="27px" Height="27px" Text="Cancel" />
                         </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton runat="server" ImageUrl="addnew.png" CommandName="AddNew" ToolTip="Add New" Width="30px" Height="30px" Text="Add New" />


                           <!-- <asp:Button  runat="server" CommandName="AddNew" ToolTip="Add New" Width="100px" Height="25px" Text="Add New"/>-->
                        </FooterTemplate>
                    </asp:TemplateField>--%>
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />


        </div>
    </form>

    <script>
        let sidebar = document.querySelector(".sidebar");
        let closeBtn = document.querySelector("#btn");
        let searchBtn = document.querySelector(".bx-search");

        closeBtn.addEventListener("click", () => {
            sidebar.classList.toggle("open");
            menuBtnChange();//calling the function(optional)
        });

        searchBtn.addEventListener("click", () => { // Sidebar open when you click on the search iocn
            sidebar.classList.toggle("open");
            menuBtnChange(); //calling the function(optional)
        });

        // following are the code to change sidebar button(optional)
        function menuBtnChange() {
            if (sidebar.classList.contains("open")) {
                closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
            } else {
                closeBtn.classList.replace("bx-menu-alt-right", "bx-menu");//replacing the iocns class
            }
        }
    </script>
   

</body>
</html>
