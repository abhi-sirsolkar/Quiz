<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateQuestionBank.aspx.cs" Inherits="Quiz_Intech.CreateQuestionBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">   
    <div>
       
        </div>
    <div class="container">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>ADD Subject</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" <img src="images/light-books-school-207636.jpg"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <label>Add Subject</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Subject Name"  ></asp:TextBox><br>
                             
                     <asp:Button class="btn btn-success" ID="addsub" runat="server" Text="Add" OnClick="Button1_Click"/>

                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Select Subject</h4>
                               <asp:DropDownList ID="SubjectDropDown" runat="server"  DataSourceID="SqlDataSource1" DataTextField="SubjectName" DataValueField="SubjectName" ></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Survey_portalConnectionString %>" SelectCommand="SELECT [SubjectName] FROM [Subject]"></asp:SqlDataSource>
                        </center>
                     </div>
                  </div>
                   
             </div>
         </div>
             <!-- Creating Questions -->  
             <div>
                 <center>
                   
                     <asp:TextBox CssClass="form-control" ID="SubjectQuestion"  runat="server" placeholder="Add Question" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="SubjectQuestionRF" runat="server" ErrorMessage="Please Enter Question" ControlToValidate="SubjectQuestion" Display="Dynamic" ForeColor="#33CC33"></asp:RequiredFieldValidator>
                     
                     <asp:TextBox CssClass="form-control" ID="Option1" runat="server" placeholder="Enter Option1" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="Option1RF" runat="server" ErrorMessage="Please Enter Option1" ControlToValidate="Option1" Display="Dynamic" ForeColor="#33CC33"></asp:RequiredFieldValidator>
                    
                     <asp:TextBox CssClass="form-control" ID="Option2" runat="server" placeholder="Enter Option2" ></asp:TextBox>
                     <asp:RequiredFieldValidator  ID="Option2RF" runat="server" ErrorMessage="Please Enter Option2" ControlToValidate="Option2" Display="Dynamic" ForeColor="#33CC33"></asp:RequiredFieldValidator>
                     
                     <asp:TextBox CssClass="form-control" ID="Option3" runat="server" placeholder="Enter Option3" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="Option3RF" runat="server" ErrorMessage="Please Enter Option3" ControlToValidate="Option3" Display="Dynamic" ForeColor="#33CC33"></asp:RequiredFieldValidator>
                     
                     <asp:TextBox CssClass="form-control" ID="Option4" runat="server" placeholder="Enter Option4"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="Option4RF" runat="server" ErrorMessage="Please Enter Option4" ControlToValidate="Option4" Display="Dynamic" ForeColor="#33CC33"></asp:RequiredFieldValidator>
                     
                     <asp:TextBox CssClass="form-control" ID="Answer" runat="server" placeholder="Enter Correct Answer" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="AnswerRF" runat="server" ErrorMessage="Please Enter Answer" ControlToValidate="Answer" ForeColor="#009933"></asp:RequiredFieldValidator>
                     
                     <asp:Button class="btn btn-success" ID="QuestionButton" runat="server" Text="Submit" OnClick="SubmitButtonClick"/>

                 </center>
             </div>
      </div>
   </div>
</asp:Content>
