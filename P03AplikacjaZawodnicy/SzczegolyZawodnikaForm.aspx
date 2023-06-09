﻿<%@ Page Language="C#" MasterPageFile="~/Glowny.Master" AutoEventWireup="true" CodeBehind="SzczegolyZawodnikaForm.aspx.cs" Inherits="P03AplikacjaZawodnicy.SzczegolyZawodnikaForm" %>



<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h5 class="title">
                        <%= TrybOperacji == P03AplikacjaZawodnicy.TrybOperacji.Edycja? "Edycja": "Tworzenie" %>
                    </h5>
                </div>
                <div class="card-body">
                    <form>
                        <div class="row">
                            <div class="col-md-2 pr-1">
                                <div class="form-group">
                                    <label>Id</label>
                                     <asp:TextBox CssClass="form-control" ID="txtId" Enabled="false" runat="server"></asp:TextBox>
                                   
                                </div>
                            </div>
                            <div class="col-md-5 px-1">
                                <div class="form-group">
                                    <label>Imie</label>
                                    <asp:TextBox CssClass="form-control" ID="txtImie" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator  ControlToValidate="txtImie" runat="server" ErrorMessage="Uzupełnij imie"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-5 pl-1">
                                <div class="form-group">
                                    <label>Nazwisko</label>
                                    <asp:TextBox CssClass="form-control" ID="txtNazwisko" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 pr-1">
                                <div class="form-group">
                                    <label>Kraj</label>
                                    <asp:TextBox ID="txtKraj" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6 pl-1">
                                <div class="form-group">
                                    <label>Data urodzenia</label>
                                     <asp:TextBox ID="txtDataUr" CssClass="form-control" runat="server"></asp:TextBox>
                                             
                             </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-6 pr-1">
                                <div class="form-group">
                                    <label>Wzrost</label>
                                    <asp:TextBox ID="txtWzrost" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6 pl-1">
                                <div class="form-group">
                                    <label>Waga</label>
                                     <asp:TextBox ID="txtWaga" CssClass="form-control" runat="server"></asp:TextBox>
                             </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>About Me</label>
                                    <textarea rows="4" cols="80" class="form-control" placeholder="Here can be your description" value="Mike">Lamborghini Mercy, Your chick she so thirsty, I'm in that two seat Lambo.</textarea>
                                </div>
                            </div>
                        </div>

                        <asp:Button ID="btnZapisz" CssClass="btn btn-primary" OnClick="btnZapisz_Click" runat="server" Text="Zapisz" />
                        <asp:Button ID="btnUsun" CssClass="btn btn-primary" OnClick="btnUsun_Click" runat="server" Text="Usuń" />

                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card card-user">
                <div class="image">
                    <img src="../assets/img/bg5.jpg" alt="...">
                </div>
                <div class="card-body">
                    <div class="author">
                        <a href="#">
                            <img class="avatar border-gray" src="../assets/img/mike.jpg" alt="...">
                            <h5 class="title">Mike Andrew</h5>
                        </a>
                        <p class="description">
                            michael24
                 
                        </p>
                    </div>
                    <p class="description text-center">
                        "Lamborghini Mercy
                        <br>
                        Your chick she so thirsty
                        <br>
                        I'm in that two seat Lambo"
               
                    </p>
                </div>
                <hr>
                <div class="button-container">
                    <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                        <i class="fab fa-facebook-f"></i>
                    </button>
                    <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                        <i class="fab fa-twitter"></i>
                    </button>
                    <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                        <i class="fab fa-google-plus-g"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>

    <script src="DodanieKalendarza.js"></script>
</asp:Content>








