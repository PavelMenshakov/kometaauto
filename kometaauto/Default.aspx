<%@ Page Title="Главная" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="kometaauto._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
                <h2>Система контроя работ</h2>
            </hgroup>
            <p>
                Для получения доступа к функциям вам необходимо авторизоваться.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    

     <asp:LoginView ID="LoginView1" runat="server" ViewStateMode="Disabled">
                            <AnonymousTemplate>
    <h3>Начало работы:</h3>
    <ol class="round">
        <li class="one">
            <h5>Авторизуйтесь</h5>
            Для получения имени пользователя и пароля обратитесь к главе вашего отдела.
        </li>
        <li class="two">
            <h5>Добавте заказ</h5>
            Для добавления заказа используйте клавишу "Новая заявка".
        </li>
        <li class="three">
            <h5>Оформите заказ</h5>
            Для оформления заказа введите все необходимые данные и нажмите кнопку "Сохранить".
        </li>
    </ol>
                                                        </AnonymousTemplate>
                        <LoggedInTemplate>

    
                         </LoggedInTemplate>
                    </asp:LoginView>   
    <asp:GridView ID="GridView1" Visible="false" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:TemplateField >
                <ItemTemplate>
                    <a href='<%#"NewAuto.aspx?paramstoreq="+Eval("Id")%>'  >Изменить заявку</a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="idzamech" HeaderText="ИдЗамечания" SortExpression="idzamech" />
            <asp:BoundField DataField="Sost" HeaderText="Состояние" SortExpression="Sost"/>
            <asp:TemplateField >
                <ItemTemplate>
                    <a href='<%#"OpenAuto.aspx?paramstoreq="+Eval("Id")%>'  >Открыть заявку</a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Id" HeaderText="Номер Заказа" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Dataof" HeaderText="Дата оформления" SortExpression="Dataof" />
            <asp:BoundField DataField="Datapred" HeaderText="Дата обновления" SortExpression="Datapred" />

            <asp:BoundField DataField="Model" HeaderText="Модель" SortExpression="Model" />
            <asp:BoundField DataField="Numznak" HeaderText="Гос. номер" SortExpression="Numznak" />
            <asp:TemplateField HeaderText="Заказчик" SortExpression="Zakazchik">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Zakazchik") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Zakazchik") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Tel" HeaderText="Телефон" SortExpression="Tel" />
            <asp:BoundField DataField="God" HeaderText="Год выпуска" SortExpression="God" />
            <asp:BoundField DataField="Dvigat" HeaderText="Двигатель" SortExpression="Dvigat" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:autorepConnectionString %>" SelectCommand="SELECT * FROM [zakazi]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [zakazi] WHERE [Id] = @original_Id AND (([Idzayavlr] = @original_Idzayavlr) OR ([Idzayavlr] IS NULL AND @original_Idzayavlr IS NULL)) AND (([idzamech] = @original_idzamech) OR ([idzamech] IS NULL AND @original_idzamech IS NULL)) AND (([Idrabot] = @original_Idrabot) OR ([Idrabot] IS NULL AND @original_Idrabot IS NULL)) AND (([Idzapvl] = @original_Idzapvl) OR ([Idzapvl] IS NULL AND @original_Idzapvl IS NULL)) AND (([Idzapm] = @original_Idzapm) OR ([Idzapm] IS NULL AND @original_Idzapm IS NULL)) AND (([Zakazchik] = @original_Zakazchik) OR ([Zakazchik] IS NULL AND @original_Zakazchik IS NULL)) AND (([Adres] = @original_Adres) OR ([Adres] IS NULL AND @original_Adres IS NULL)) AND (([Tel] = @original_Tel) OR ([Tel] IS NULL AND @original_Tel IS NULL)) AND (([Model] = @original_Model) OR ([Model] IS NULL AND @original_Model IS NULL)) AND (([God] = @original_God) OR ([God] IS NULL AND @original_God IS NULL)) AND (([Dvigat] = @original_Dvigat) OR ([Dvigat] IS NULL AND @original_Dvigat IS NULL)) AND (([Probeg] = @original_Probeg) OR ([Probeg] IS NULL AND @original_Probeg IS NULL)) AND (([Numznak] = @original_Numznak) OR ([Numznak] IS NULL AND @original_Numznak IS NULL)) AND (([NumKuz] = @original_NumKuz) OR ([NumKuz] IS NULL AND @original_NumKuz IS NULL)) AND (([SrokIsp] = @original_SrokIsp) OR ([SrokIsp] IS NULL AND @original_SrokIsp IS NULL)) AND (([DataDob] = @original_DataDob) OR ([DataDob] IS NULL AND @original_DataDob IS NULL)) AND (([Dobavil] = @original_Dobavil) OR ([Dobavil] IS NULL AND @original_Dobavil IS NULL)) AND (([Dataof] = @original_Dataof) OR ([Dataof] IS NULL AND @original_Dataof IS NULL)) AND (([Datapred] = @original_Datapred) OR ([Datapred] IS NULL AND @original_Datapred IS NULL)) AND (([Datapodp] = @original_Datapodp) OR ([Datapodp] IS NULL AND @original_Datapodp IS NULL)) AND (([Zamech] = @original_Zamech) OR ([Zamech] IS NULL AND @original_Zamech IS NULL))" InsertCommand="INSERT INTO [zakazi] ([Idzayavlr], [Idrabot], [Idzapvl], [Idzapm], [Zakazchik], [Adres], [Tel], [Model], [God], [Dvigat], [Probeg], [Numznak], [NumKuz], [SrokIsp], [DataDob], [Dobavil], [Dataof], [Datapred], [Datapodp], [Zamech]) VALUES (@Idzayavlr, @Idrabot, @Idzapvl, @Idzapm, @Zakazchik, @Adres, @Tel, @Model, @God, @Dvigat, @Probeg, @Numznak, @NumKuz, @SrokIsp, @DataDob, @Dobavil, @Dataof, @Datapred, @Datapodp, @Zamech)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [zakazi] SET [Idzayavlr] = @Idzayavlr, [Idrabot] = @Idrabot, [Idzapvl] = @Idzapvl, [Idzapm] = @Idzapm, [Zakazchik] = @Zakazchik, [Adres] = @Adres, [Tel] = @Tel, [Model] = @Model, [God] = @God, [Dvigat] = @Dvigat, [Probeg] = @Probeg, [Numznak] = @Numznak, [NumKuz] = @NumKuz, [SrokIsp] = @SrokIsp, [DataDob] = @DataDob, [Dobavil] = @Dobavil, [Dataof] = @Dataof, [Datapred] = @Datapred, [Datapodp] = @Datapodp, [Zamech] = @Zamech WHERE [Id] = @original_Id AND (([Idzayavlr] = @original_Idzayavlr) OR ([Idzayavlr] IS NULL AND @original_Idzayavlr IS NULL)) AND (([Idrabot] = @original_Idrabot) OR ([Idrabot] IS NULL AND @original_Idrabot IS NULL)) AND (([Idzapvl] = @original_Idzapvl) OR ([Idzapvl] IS NULL AND @original_Idzapvl IS NULL)) AND (([Idzapm] = @original_Idzapm) OR ([Idzapm] IS NULL AND @original_Idzapm IS NULL)) AND (([Zakazchik] = @original_Zakazchik) OR ([Zakazchik] IS NULL AND @original_Zakazchik IS NULL)) AND (([Adres] = @original_Adres) OR ([Adres] IS NULL AND @original_Adres IS NULL)) AND (([Tel] = @original_Tel) OR ([Tel] IS NULL AND @original_Tel IS NULL)) AND (([Model] = @original_Model) OR ([Model] IS NULL AND @original_Model IS NULL)) AND (([God] = @original_God) OR ([God] IS NULL AND @original_God IS NULL)) AND (([Dvigat] = @original_Dvigat) OR ([Dvigat] IS NULL AND @original_Dvigat IS NULL)) AND (([Probeg] = @original_Probeg) OR ([Probeg] IS NULL AND @original_Probeg IS NULL)) AND (([Numznak] = @original_Numznak) OR ([Numznak] IS NULL AND @original_Numznak IS NULL)) AND (([NumKuz] = @original_NumKuz) OR ([NumKuz] IS NULL AND @original_NumKuz IS NULL)) AND (([SrokIsp] = @original_SrokIsp) OR ([SrokIsp] IS NULL AND @original_SrokIsp IS NULL)) AND (([DataDob] = @original_DataDob) OR ([DataDob] IS NULL AND @original_DataDob IS NULL)) AND (([Dobavil] = @original_Dobavil) OR ([Dobavil] IS NULL AND @original_Dobavil IS NULL)) AND (([Dataof] = @original_Dataof) OR ([Dataof] IS NULL AND @original_Dataof IS NULL)) AND (([Datapred] = @original_Datapred) OR ([Datapred] IS NULL AND @original_Datapred IS NULL)) AND (([Datapodp] = @original_Datapodp) OR ([Datapodp] IS NULL AND @original_Datapodp IS NULL)) AND (([Zamech] = @original_Zamech) OR ([Zamech] IS NULL AND @original_Zamech IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int64" />
            <asp:Parameter Name="original_idzamech" Type="Int64" />
            <asp:Parameter Name="original_Idzayavlr" Type="Int64" />
            <asp:Parameter Name="original_Idrabot" Type="Int64" />
            <asp:Parameter Name="original_Idzapvl" Type="Int64" />
            <asp:Parameter Name="original_Idzapm" Type="Int64" />
            <asp:Parameter Name="original_Zakazchik" Type="String" />
            <asp:Parameter Name="original_Adres" Type="String" />
            <asp:Parameter Name="original_Tel" Type="String" />
            <asp:Parameter Name="original_Model" Type="String" />
            <asp:Parameter Name="original_God" Type="String" />
            <asp:Parameter Name="original_Dvigat" Type="String" />
            <asp:Parameter Name="original_Probeg" Type="String" />
            <asp:Parameter Name="original_Numznak" Type="String" />
            <asp:Parameter Name="original_NumKuz" Type="String" />
            <asp:Parameter Name="original_SrokIsp" Type="Double" />
            <asp:Parameter Name="original_DataDob" Type="DateTime" />
            <asp:Parameter Name="original_Dobavil" Type="Int64" />
            <asp:Parameter Name="original_Dataof" Type="DateTime" />
            <asp:Parameter Name="original_Datapred" Type="DateTime" />
            <asp:Parameter Name="original_Datapodp" Type="DateTime" />
            <asp:Parameter Name="original_Zamech" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Idzayavlr" Type="Int64" />
            <asp:Parameter Name="idzamech" Type="Int64" />
            <asp:Parameter Name="Idrabot" Type="Int64" />
            <asp:Parameter Name="Idzapvl" Type="Int64" />
            <asp:Parameter Name="Idzapm" Type="Int64" />
            <asp:Parameter Name="Zakazchik" Type="String" />
            <asp:Parameter Name="Adres" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="God" Type="String" />
            <asp:Parameter Name="Dvigat" Type="String" />
            <asp:Parameter Name="Probeg" Type="String" />
            <asp:Parameter Name="Numznak" Type="String" />
            <asp:Parameter Name="NumKuz" Type="String" />
            <asp:Parameter Name="SrokIsp" Type="Double" />
            <asp:Parameter Name="DataDob" Type="DateTime" />
            <asp:Parameter Name="Dobavil" Type="Int64" />
            <asp:Parameter Name="Dataof" Type="DateTime" />
            <asp:Parameter Name="Datapred" Type="DateTime" />
            <asp:Parameter Name="Datapodp" Type="DateTime" />
            <asp:Parameter Name="Zamech" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="idzamech" Type="Int64" />
            <asp:Parameter Name="Idzayavlr" Type="Int64" />
            <asp:Parameter Name="Idrabot" Type="Int64" />
            <asp:Parameter Name="Idzapvl" Type="Int64" />
            <asp:Parameter Name="Idzapm" Type="Int64" />
            <asp:Parameter Name="Zakazchik" Type="String" />
            <asp:Parameter Name="Adres" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="God" Type="String" />
            <asp:Parameter Name="Dvigat" Type="String" />
            <asp:Parameter Name="Probeg" Type="String" />
            <asp:Parameter Name="Numznak" Type="String" />
            <asp:Parameter Name="NumKuz" Type="String" />
            <asp:Parameter Name="SrokIsp" Type="Double" />
            <asp:Parameter Name="DataDob" Type="DateTime" />
            <asp:Parameter Name="Dobavil" Type="Int64" />
            <asp:Parameter Name="Dataof" Type="DateTime" />
            <asp:Parameter Name="Datapred" Type="DateTime" />
            <asp:Parameter Name="Datapodp" Type="DateTime" />
            <asp:Parameter Name="Zamech" Type="String" />
            <asp:Parameter Name="original_idzamech" Type="Int64" />
            <asp:Parameter Name="original_Id" Type="Int64" />
            <asp:Parameter Name="original_Idzayavlr" Type="Int64" />
            <asp:Parameter Name="original_Idrabot" Type="Int64" />
            <asp:Parameter Name="original_Idzapvl" Type="Int64" />
            <asp:Parameter Name="original_Idzapm" Type="Int64" />
            <asp:Parameter Name="original_Zakazchik" Type="String" />
            <asp:Parameter Name="original_Adres" Type="String" />
            <asp:Parameter Name="original_Tel" Type="String" />
            <asp:Parameter Name="original_Model" Type="String" />
            <asp:Parameter Name="original_God" Type="String" />
            <asp:Parameter Name="original_Dvigat" Type="String" />
            <asp:Parameter Name="original_Probeg" Type="String" />
            <asp:Parameter Name="original_Numznak" Type="String" />
            <asp:Parameter Name="original_NumKuz" Type="String" />
            <asp:Parameter Name="original_SrokIsp" Type="Double" />
            <asp:Parameter Name="original_DataDob" Type="DateTime" />
            <asp:Parameter Name="original_Dobavil" Type="Int64" />
            <asp:Parameter Name="original_Dataof" Type="DateTime" />
            <asp:Parameter Name="original_Datapred" Type="DateTime" />
            <asp:Parameter Name="original_Datapodp" Type="DateTime" />
            <asp:Parameter Name="original_Zamech" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
   <script type="text/javascript">
            setInterval(function () { location.reload() }, 30000);
    </script>
</asp:Content>

