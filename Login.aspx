<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="BlazeRPA.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="CSS/Loginstyle.css"/>
    <link rel="stylesheet" type="text/css" href="CSS/Bgstyle.css"/>
    <style type="text/css">

        .auto-style8 {
            background: #fff;
    cursor: pointer;
    margin-bottom: 5px;
    font-weight: 400;
    width: 100%;
    background: rgba(255,255,255,0.2);
    border: none;
    outline: none;
    padding: 10px 20px;
    border-radius: 35px;
    border: 1px solid rgba(255,255,255,0.5);
    border-right: 1px solid rgba(255,255,255,0.2);
    border-bottom: 1px solid rgba(255,255,255,0.2);
    font-size: 16px;
    letter-spacing: 1px;
    color: white;
    box-shadow: 0 5px 15px rgba(0,0,0,0.05);
        }

      @import url('https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@300&display=swap');

*
{
    margin: 0;
    padding: 0;
    box-sizing:border-box;
    font-family: 'Cormorant Garamond', serif;
 
}



body
{
    /*overflow:hidden;*/
}

        .box{
    position: relative;
}
.container{
    position: relative;
    width:400px;
    min-height: 200px;
    background:rgba(228, 223, 223, 0.1);
    border-radius: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    backdrop-filter: blur(5px);
    box-shadow: 0 25px 45px rgba(0,0,0,0.1);
    border:1px solid rgba(255,255,255,0.5);
    border-right:1px solid rgba(255,255,255,0.2);
    border-bottom:1px solid rgba(255,255,255,0.2);
    margin-bottom:77px;

}
.form{
    position: relative;
    width:100%;
    height:100%;
    padding:40px;
}
.form h2
{
   position:relative;
   color:#fff;
   font-size:24px;
   font-weight: 600;
   letter-spacing: 1px;
   margin-bottom:40px;
}

section{
    display:flex;
    justify-content: center;
    align-items: center;
    min-height: 80vh;
}
section .color
{
    position:absolute;
    filter:blur(150px);
}

.form h2::before
{
    content: '';
    position:absolute;
    left:0;
    bottom: -10px;
    width: 80px;
    height: 4px;
    background: #fff;
}
.form .inputBox
{
    width:100%;
    margin-top:20px;
}

.form .inputBox ::placeholder
{
    color: #fff;
    
}

.auto-style9
{
     background: #fff;
    cursor: pointer;
    margin-top:20px;
    margin-bottom: 5px;
    font-weight: 400;
    width: 30%;
    background: rgba(255,255,255,0.6);
    border: none;
    outline: none;
    padding: 10px 20px;
    border-radius: 35px;
    border: 1px solid rgba(255,255,255,0.5);
    border-right: 1px solid rgba(255,255,255,0.2);
    border-bottom: 1px solid rgba(255,255,255,0.2);
    font-size: 16px;
    letter-spacing: 1px;
    color: black;
    box-shadow: 0 5px 15px rgba(0,0,0,0.05);
    margin-left:105px;
    
}
       
        </style>
</head>
<body style="background-image:url('blue.jpg')">
    <form id="form1" runat="server">

        <div class="sidebysidediv">

       
            <div style="margin-top:40px">
                <img src="BBOTw.png" alt="Alternate Text"  class="user" style="margin-top:70px; margin-left:5px; height:80px; width:80px; border-radius:10px" />
            </div>
                          
    </div>

        <%--<div class="loginBox">--%>
        <section>
        <div class="box">

        <div class="container">
                    <div class="form">

            
            <h2>
                Login
                </h2>
            

             <div class="inputBox" >
            <asp:TextBox ID="txtUser" runat="server" placeholder="Username" CssClass="auto-style8" ></asp:TextBox>
               </div>   
                <div class="inputBox">
            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" placeholder="Password" CssClass="auto-style8"></asp:TextBox>
              </div>
                <div class="inputBox">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="Button1_Click" CssClass="auto-style9" />
                   </div>
                <div class="inputBox">
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
            
                </div>
                </div>
            </div>
            </section>
    </form>
</body>
</html>
