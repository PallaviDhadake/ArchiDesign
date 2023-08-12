<%@ Page Title="Archi Design | Contact Numbers" Language="C#" MasterPageFile="~/adminpanel/MasterAdmin.master" AutoEventWireup="true" CodeFile="add-contacts.aspx.cs" Inherits="adminpanel_add_contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script>
		$(document).ready(function () {
            $('[id$=gvProjects]').DataTable({
                columnDefs: [
                    { orderable: false, targets: [0, 1, 2]}
				],
				order: [[0, 'desc']]
			});
		});
     </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="pgTitle">Project Master</h2>
    <span class="space10"></span>
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"><%=pgTitle %></h3>
        </div>
        <%-- Card Body --%>
        <div class="card-body">
            <div class="colorLightBlue">
                <%--<span>Id</span>--%>
                <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
            </div>

            <div class="form-row">
                <div class="form-group col-md-6">

                    <label>Contact Number: *</label>
                    <asp:TextBox ID="txtConNum" runat="server" CssClass="form-control" MaxLength="10" Width="100%"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
    <span class="space20"></span>
       <%-- <span class="space10"></span>--%>
        <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-outline-dark" Text="Cancel" OnClick="btnCancel_Click" />

        <div class="float_clear"></div>

    <span class="space40"></span>

        <div class="formPanel table-responsive-md">

            <asp:GridView ID="gvContacts" runat="server" CssClass="table table-striped table-bordered table-hover" GridLines="None" 
				AutoGenerateColumns="false" OnRowDataBound="gvContacts_RowDataBound" OnRowCommand="gvContacts_RowCommand" >
				 <HeaderStyle CssClass="thead-dark" />
				<RowStyle CssClass="" />
				<AlternatingRowStyle CssClass="alt" />
				<Columns>
					 <asp:BoundField DataField="contId">
						<HeaderStyle CssClass="HideCol" />
						<ItemStyle  CssClass="HideCol"/>
					</asp:BoundField>
					
                     <asp:BoundField DataField="contNumber" HeaderText="Contact Number">
						<ItemStyle Width="20%" />
					</asp:BoundField>

					<asp:TemplateField>
						<ItemStyle Width="5%" />
						<ItemTemplate>
							<asp:Literal ID="litAnch" runat="server"></asp:Literal>
						</ItemTemplate>
					</asp:TemplateField>  
                    
                    <asp:TemplateField>
						<ItemStyle Width="5%" />
						<ItemTemplate>
							<asp:Button ID="btnDelete" runat="server" CssClass="gDel" CommandName="Update"/>
						</ItemTemplate>
					</asp:TemplateField> 

				</Columns>
				<EmptyDataTemplate>
					<span class="warning">Its Empty Here... :(</span>
				</EmptyDataTemplate>
				<PagerStyle CssClass="" />
			</asp:GridView>
        </div>
</asp:Content>

