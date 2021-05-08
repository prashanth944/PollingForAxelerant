<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="Polling.Results" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:cyan">
    <form id="form1" runat="server">
        <div style="text-align:center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblbck" runat="server" Font-Bold="true" ForeColor="Red" Text="Please click on Back button for Main Page"></asp:Label>
            <br />
            <asp:Chart ID="Chart1" runat="server" Height="473px" Width="645px" BackColor="Gray" BackGradientStyle="LeftRight" BackHatchStyle="DottedDiamond" BackImageTransparentColor="255, 128, 128" BorderlineColor="DimGray" Palette="Bright" PaletteCustomColors="192, 64, 0; Lime; Black; Purple">
                <Series>
                    <asp:Series Name="Series1" Font="Trebuchet MS, 15pt, style=Bold"  IsVisibleInLegend="true" YValuesPerPoint="10" IsValueShownAsLabel="true" ChartType="Pie"></asp:Series>
                </Series>
                <Titles>
                    <asp:Title Name="DefaultTitle" Font="Trebuchet MS, 15pt, style=Bold" Text="Overall Polling Results"></asp:Title>
                </Titles>
                <Legends>
                    <asp:Legend Alignment="Far" Docking="Right" IsTextAutoFit="true" Name="Default" LegendStyle="Column"></asp:Legend>
                </Legends>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"  >
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart><br /><br />
            <asp:Button ID="btnback" BackColor="Red" BorderColor="Red" Font-Bold="true" BorderStyle="Dotted" runat="server" Text="Back" OnClick="btnback_Click" />
        </div>
    </form>
</body>
</html>
