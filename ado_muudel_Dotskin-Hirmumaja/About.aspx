<%@ Page Title="Hirmumaja külastused" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ado_muudel_Dotskin_Hirmumaja.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <h2><%: Title %></h2>
     <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="kasutajaId" DataSourceID="SqlDataSource1">
         <Columns>
             <asp:BoundField DataField="kylastusId" HeaderText="kylastusId" InsertVisible="False" ReadOnly="True" SortExpression="kylastusId" />
             <asp:BoundField DataField="sisenes" HeaderText="sisenes" SortExpression="sisenes" />
             <asp:BoundField DataField="lahkus" HeaderText="lahkus" SortExpression="lahkus" />
             <asp:BoundField DataField="kasutajaId" HeaderText="kasutajaId" ReadOnly="True" SortExpression="kasutajaId" />
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hirmumajaConnectionString %>" DeleteCommand="DELETE FROM [KasutajaSet_Kylastus] WHERE [kasutajaId] = @kasutajaId" InsertCommand="INSERT INTO [KasutajaSet_Kylastus] ([sisenes], [lahkus], [kasutajaId]) VALUES (@sisenes, @lahkus, @kasutajaId)" SelectCommand="SELECT * FROM [KasutajaSet_Kylastus]" UpdateCommand="UPDATE [KasutajaSet_Kylastus] SET [kylastusId] = @kylastusId, [sisenes] = @sisenes, [lahkus] = @lahkus WHERE [kasutajaId] = @kasutajaId">
         <DeleteParameters>
             <asp:Parameter Name="kasutajaId" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter DbType="Time" Name="sisenes" />
             <asp:Parameter DbType="Time" Name="lahkus" />
             <asp:Parameter Name="kasutajaId" Type="Int32" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="kylastusId" Type="Int32" />
             <asp:Parameter DbType="Time" Name="sisenes" />
             <asp:Parameter DbType="Time" Name="lahkus" />
             <asp:Parameter Name="kasutajaId" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
</asp:Content>
