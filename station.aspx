<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="station.aspx.cs" Inherits="station" Title="Blue Bus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table align="center" style="text-align:center">
        <tr><td>&nbsp;</td></tr>
        <tr><td align="left">
          <asp:CreateUserWizard ID="CreateUserWizard2" runat="server" 
        LoginCreatedUser="False"  oncreatinguser="CreateUserWizard2_CreatingUser" BorderStyle="None" 
       >
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" >
                <ContentTemplate>
                    <table border="0" style="font-size: 100%" cellpadding="2">
                        <tbody>
                            
                            <tr>
                                <td align="right">
                                    <asp:Label ID="StationNameLabel" runat="server" AssociatedControlID="StationName">Station Name</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="StationName" runat="server" OnTextChanged="StationName_TextChanged"></asp:TextBox>
									<asp:RequiredFieldValidator runat="server" ControlToValidate="StationName" ValidationGroup="CreateUserWizard2">*</asp:RequiredFieldValidator>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="RatePerSeatLabel" runat="server" AssociatedControlID="RatePerSeat">Rate per seat</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="RatePerSeat" runat="server" ></asp:TextBox>
									<asp:RequiredFieldValidator runat="server" ControlToValidate="RatePerSeat" ValidationGroup="CreateUserWizard2">*</asp:RequiredFieldValidator>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="TimeLabel" runat="server" AssociatedControlID="Time">Time</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="Time" runat="server" ></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Time" ValidationGroup="CreateUserWizard2">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="ReachTimeLabel" runat="server" AssociatedControlID="ReachTime">Reach Time</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="ReachTime" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ReachTime" ValidationGroup="CreateUserWizard2">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="BusNumberLabel" runat="server" AssociatedControlID="BusNumber">Bus Number</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="BusNumber" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="BusNumber" ValidationGroup="CreateUserWizard2">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            
                        </tbody>
                    
					
					</table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
    <p style="width:100%;text-align:center"> <asp:Label ID="lblError" runat="server" Text="" style="color:Red;font-size:12px;font-weight:bold; text-align:center"></asp:Label></p>
   
        </td></tr>
        </table> 
    
   
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

