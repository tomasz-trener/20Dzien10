<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wyszukiwarka.aspx.cs" Inherits="P03AplikacjaZawodnicy.Wyszukiwarka" %>


   <div class="card">
            <div class="card-header">
                <h4 class="card-title">Simple Table</h4>
            </div>

            <div style="margin-left:15px">
                 <a href="SzczegolyZawodnikaForm.aspx" >Stwórz nowy rekord</a>
            </div>
           

            <div class="card-body">
                <div id="dvKontenerTabelki" class="table-responsive">
                    <table class="table">
                        <thead class=" text-primary">
                            <th>Nazwa
                      </th>
                            <th>Kraj
                      </th>
                            <th>Data urodzenia
                      </th>
                            <th>Wzrost
                      </th>
                            <th>Waga
                            </th>
                        </thead>
                        <tbody>

                            <%

                                foreach (var z in Zawodnicy)
                                {%>

                            <tr>
                                <td><a href="SzczegolyZawodnikaForm.aspx?id=<%= z.Id_zawodnika %>"> <%= z.Imie + " " + z.Nazwisko %> </a></td>
                                <td><%= z.Kraj %></td>
                                <td><%= z.DataSformatowana %></td>
                                <td><%= z.Wzrost %></td>
                                <td><%= z.Waga %></td>
                            </tr>

                            <%}

                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>