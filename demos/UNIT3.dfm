�
 TFORM3 0�  TPF0TForm3Form3Left� ToplCaptionForm3ClientHeight� ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PixelsPerInch`
TextHeight 	TfrReport	frReport1TitleListaValues.Data
         CustomerData.CustomersAddr1Address    CustomerData.CustomersCompanyCompany    CustomerData.CustomersContactContact    CustomerData.CustomersFAXFax    CustomerData.CustomersPhonePhone    Count(CustomersData.Customers)Total      ��������DisableDataSetControls
OnBeginDocfrReport1BeginDocOnEndDocfrReport1EndDocLeftTopData
K      ��� ���������� Company Address Contact Phone Fax Total	 ��������PixelsPerInch`  	TfrReport	frReport3TitleLista con dettagli (3 livelli)Values.Data
�         CustomerData.CustomersAddr1Address    CustomerData.CustomersCompanyCompany    CustomerData.CustomersContactContact    #Sum(CustomerData.Orders.ItemsTotal)Customer total    CustomerData.CustomersFAXFax   CustomerData.OrdersSaleDate
Order date    CustomerData.OrdersOrderNoOrder no   CustomerData.LineItems!Sum(CustomerData.LineItems.Total)Order total    CustomerData.LineItemsPartNamePart description    CustomerData.LineItemsPartNoPart no   CustomerData.LineItemsPrice
Part price    CustomerData.LineItemsQtyPart qty    CustomerData.LineItemsTotal
Part total    CustomerData.CustomersPhonePhone      ��������DisableDataSetControls
OnBeginDocfrReport3BeginDocOnEndDocfrReport3EndDocLeft� TopData
�      Customer Company Address Contact Phone Fax Customer totalOrder	 Order no Order date Order totalPart Part no Part description Part price	 Part qty Part total��������� ����������	 ��������PixelsPerInch`  	TfrReport	frReport2Title   Lista a più colonneDisableDataSetControls
OnBeginDocfrReport2BeginDocOnEndDocfrReport2EndDocLeft`TopPixelsPerInch`  	TfrReport	frReport4TitleSottoreportValues.Data
�         CustomerData.CustomersAddr1Address    CustomerData.CustomersCompanyCompany    CustomerData.CustomersContactContact    #Sum(CustomerData.Orders.ItemsTotal)Customer total    CustomerData.CustomersFAXFax   CustomerData.OrdersSaleDate
Order date    CustomerData.OrdersOrderNoOrder no   CustomerData.LineItems!Sum(CustomerData.LineItems.Total)Order total    CustomerData.LineItemsPartNamePart description    CustomerData.LineItemsPartNoPart no   CustomerData.LineItemsPrice
Part price    CustomerData.LineItemsQtyPart qty    CustomerData.LineItemsTotal
Part total    CustomerData.CustomersPhonePhone      ��������DisableDataSetControlsLeft� TopData
�      Customer Company Address Contact Phone Fax Customer totalOrder	 Order no Order date Order totalPart Part no Part description Part price	 Part qty Part total��������� ����������	 ��������PixelsPerInch`  	TfrReport	frReport5TitleReport a pagine multipleValues.Data
         CustomerData.CustomersAddr1Address    CustomerData.CustomersCompanyCompany    CustomerData.CustomersContactContact    CustomerData.CustomersFAXFax    CustomerData.CustomersPhonePhone    Count(CustomersData.Customers)Total      ��������DisableDataSetControlsLeft&TopData
K      ��� ���������� Company Address Contact Phone Fax Total	 ��������PixelsPerInch`  	TfrReport	frReport6TitleGruppiDisableDataSetControlsLeftToptPixelsPerInch`  	TfrReport	frReport7TitleRichText adattatoLeftbToptPixelsPerInch`  	TfrReport	frReport8TitleCodici a barreLeft� ToptPixelsPerInch`  	TfrReport	frReport9TitleGraficiLeft� ToptPixelsPerInch`  	TfrReport
frReport10TitleOggetti OLELeft*ToptPixelsPerInch`  	TfrReport
frReport11TitleForme geometricheLeftjToptPixelsPerInch`  	TfrReport
frReport12TitleRettangoli bordatiLeft�ToptPixelsPerInch`   