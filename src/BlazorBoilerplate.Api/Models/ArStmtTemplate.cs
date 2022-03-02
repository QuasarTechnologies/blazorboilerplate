﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("AR_STMT_TEMPLATES")]
    public partial class ArStmtTemplate
    {
        [Key]
        [Column("TEMPLATE_REV_GUID")]
        public Guid TemplateRevGuid { get; set; }
        [Column("TEMPLATE_GUID")]
        public Guid TemplateGuid { get; set; }
        [Column("DELETED")]
        public bool Deleted { get; set; }
        [Column("DELETED_GUID")]
        public Guid DeletedGuid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(40)]
        [Unicode(false)]
        public string Name { get; set; }
        [Column("PRINT_PRODUCT_CODE_ATT")]
        public bool PrintProductCodeAtt { get; set; }
        [Column("PRINT_PRODUCT_CODE")]
        public bool PrintProductCode { get; set; }
        [Column("PRINT_GRIDLINES")]
        public bool PrintGridlines { get; set; }
        [Column("PRINT_BARCODE")]
        public bool PrintBarcode { get; set; }
        [Column("COPIES")]
        public short Copies { get; set; }
        [Column("DETAIL_GRID_FORECOLOR")]
        public int DetailGridForecolor { get; set; }
        [Column("DETAIL_GRID_BACKCOLOR")]
        public int DetailGridBackcolor { get; set; }
        [Column("INVOICE_DETAILS")]
        public bool InvoiceDetails { get; set; }
        [Column("INCLUDE_PAYMENT_DETAILS")]
        public bool IncludePaymentDetails { get; set; }
        [Column("INCLUDE_TAX_DETAILS")]
        public bool IncludeTaxDetails { get; set; }
        [Column("INCLUDE_INVOICE_DETAILS")]
        public bool IncludeInvoiceDetails { get; set; }
        [Column("ATTACHMENT_SORT_ORDER")]
        public short AttachmentSortOrder { get; set; }
        [Column("HEADER1_IMAGE", TypeName = "image")]
        public byte[] Header1Image { get; set; }
        [Required]
        [Column("HEADER1_TEXT", TypeName = "text")]
        public string Header1Text { get; set; }
        [Required]
        [Column("HEADER1_FONT")]
        [StringLength(40)]
        [Unicode(false)]
        public string Header1Font { get; set; }
        [Column("HEADER1_SIZE")]
        public short Header1Size { get; set; }
        [Column("HEADER1_BOLD")]
        public bool Header1Bold { get; set; }
        [Column("HEADER1_ITALIC")]
        public bool Header1Italic { get; set; }
        [Column("HEADER1_JUST")]
        public short Header1Just { get; set; }
        [Column("HEADER1_COLOR")]
        public int Header1Color { get; set; }
        [Required]
        [Column("FOOTER1_TEXT", TypeName = "text")]
        public string Footer1Text { get; set; }
        [Required]
        [Column("FOOTER1_FONT")]
        [StringLength(40)]
        [Unicode(false)]
        public string Footer1Font { get; set; }
        [Column("FOOTER1_SIZE")]
        public short Footer1Size { get; set; }
        [Column("FOOTER1_BOLD")]
        public bool Footer1Bold { get; set; }
        [Column("FOOTER1_ITALIC")]
        public bool Footer1Italic { get; set; }
        [Column("FOOTER1_JUST")]
        public short Footer1Just { get; set; }
        [Column("FOOTER1_COLOR")]
        public int Footer1Color { get; set; }
        [Required]
        [Column("SUBHEADER_TEXT", TypeName = "text")]
        public string SubheaderText { get; set; }
        [Required]
        [Column("SUBHEADER_FONT")]
        [StringLength(40)]
        [Unicode(false)]
        public string SubheaderFont { get; set; }
        [Column("SUBHEADER_SIZE")]
        public short SubheaderSize { get; set; }
        [Column("SUBHEADER_BOLD")]
        public bool SubheaderBold { get; set; }
        [Column("SUBHEADER_ITALIC")]
        public bool SubheaderItalic { get; set; }
        [Column("SUBHEADER_COLOR")]
        public int SubheaderColor { get; set; }
        [Required]
        [Column("AC_0_30_TEXT", TypeName = "text")]
        public string Ac030Text { get; set; }
        [Required]
        [Column("AC_0_30_FONT")]
        [StringLength(40)]
        [Unicode(false)]
        public string Ac030Font { get; set; }
        [Column("AC_0_30_SIZE")]
        public short Ac030Size { get; set; }
        [Column("AC_0_30_BOLD")]
        public bool Ac030Bold { get; set; }
        [Column("AC_0_30_ITALIC")]
        public bool Ac030Italic { get; set; }
        [Column("AC_0_30_JUST")]
        public short Ac030Just { get; set; }
        [Column("AC_0_30_COLOR")]
        public int Ac030Color { get; set; }
        [Required]
        [Column("AC_31_60_TEXT", TypeName = "text")]
        public string Ac3160Text { get; set; }
        [Required]
        [Column("AC_31_60_FONT")]
        [StringLength(40)]
        [Unicode(false)]
        public string Ac3160Font { get; set; }
        [Column("AC_31_60_SIZE")]
        public short Ac3160Size { get; set; }
        [Column("AC_31_60_BOLD")]
        public bool Ac3160Bold { get; set; }
        [Column("AC_31_60_ITALIC")]
        public bool Ac3160Italic { get; set; }
        [Column("AC_31_60_JUST")]
        public short Ac3160Just { get; set; }
        [Column("AC_31_60_COLOR")]
        public int Ac3160Color { get; set; }
        [Required]
        [Column("AC_61_90_TEXT", TypeName = "text")]
        public string Ac6190Text { get; set; }
        [Required]
        [Column("AC_61_90_FONT")]
        [StringLength(40)]
        [Unicode(false)]
        public string Ac6190Font { get; set; }
        [Column("AC_61_90_SIZE")]
        public short Ac6190Size { get; set; }
        [Column("AC_61_90_BOLD")]
        public bool Ac6190Bold { get; set; }
        [Column("AC_61_90_ITALIC")]
        public bool Ac6190Italic { get; set; }
        [Column("AC_61_90_JUST")]
        public short Ac6190Just { get; set; }
        [Column("AC_61_90_COLOR")]
        public int Ac6190Color { get; set; }
        [Required]
        [Column("AC_OVER_90_TEXT", TypeName = "text")]
        public string AcOver90Text { get; set; }
        [Required]
        [Column("AC_OVER_90_FONT")]
        [StringLength(40)]
        [Unicode(false)]
        public string AcOver90Font { get; set; }
        [Column("AC_OVER_90_SIZE")]
        public short AcOver90Size { get; set; }
        [Column("AC_OVER_90_BOLD")]
        public bool AcOver90Bold { get; set; }
        [Column("AC_OVER_90_ITALIC")]
        public bool AcOver90Italic { get; set; }
        [Column("AC_OVER_90_JUST")]
        public short AcOver90Just { get; set; }
        [Column("AC_OVER_90_COLOR")]
        public int AcOver90Color { get; set; }
        [Required]
        [Column("BILLING_DATE_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string BillingDateLabel { get; set; }
        [Required]
        [Column("ACCT_NUM_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string AcctNumLabel { get; set; }
        [Required]
        [Column("AMT_ENCLOSED_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string AmtEnclosedLabel { get; set; }
        [Required]
        [Column("INVOICE_DATE_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string InvoiceDateLabel { get; set; }
        [Required]
        [Column("INVOICE_NO_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string InvoiceNoLabel { get; set; }
        [Required]
        [Column("DESCRIPTION_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string DescriptionLabel { get; set; }
        [Required]
        [Column("CHARGES_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string ChargesLabel { get; set; }
        [Required]
        [Column("CREDITS_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string CreditsLabel { get; set; }
        [Required]
        [Column("BALANCE_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string BalanceLabel { get; set; }
        [Required]
        [Column("AC_0_30_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string Ac030Label { get; set; }
        [Required]
        [Column("AC_31_60_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string Ac3160Label { get; set; }
        [Required]
        [Column("AC_61_90_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string Ac6190Label { get; set; }
        [Required]
        [Column("AC_OVER_90_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string AcOver90Label { get; set; }
        [Required]
        [Column("BEGINNING_BALANCE_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string BeginningBalanceLabel { get; set; }
        [Required]
        [Column("CURRENT_CHARGES_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string CurrentChargesLabel { get; set; }
        [Required]
        [Column("TOTAL_CREDITS_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string TotalCreditsLabel { get; set; }
        [Required]
        [Column("TOTAL_DUE_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string TotalDueLabel { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("LETTER_1_GUID")]
        public Guid Letter1Guid { get; set; }
        [Column("LETTER_2_GUID")]
        public Guid Letter2Guid { get; set; }
        [Column("LETTER_3_GUID")]
        public Guid Letter3Guid { get; set; }
        [Column("LETTER_4_GUID")]
        public Guid Letter4Guid { get; set; }
        [Column("COLOR_CHARGES_COL")]
        public int ColorChargesCol { get; set; }
        [Column("COLOR_CREDITS_COL")]
        public int ColorCreditsCol { get; set; }
        [Column("COLOR_BALANCE_COL")]
        public int ColorBalanceCol { get; set; }
        [Column("COLOR_INVOICE_NO_COL")]
        public int ColorInvoiceNoCol { get; set; }
        [Column("COLOR_DATE_COL")]
        public int ColorDateCol { get; set; }
        [Column("COLOR_DESC_COL")]
        public int ColorDescCol { get; set; }
        [Column("COLOR_CORRECTION")]
        public int ColorCorrection { get; set; }
        [Column("COLOR_TOTAL_LINE")]
        public int ColorTotalLine { get; set; }
        [Column("COLOR_PREV_BAL_MSG")]
        public int ColorPrevBalMsg { get; set; }
        [Column("COLOR_TAX_MSG")]
        public int ColorTaxMsg { get; set; }
        [Column("COLOR_PROD_MSG")]
        public int ColorProdMsg { get; set; }
        [Column("COLOR_DISCOUNTS")]
        public int ColorDiscounts { get; set; }
        [Column("COLOR_ADDRESS_SECTION")]
        public int ColorAddressSection { get; set; }
        [Column("COLOR_BILLING_SECTION")]
        public int ColorBillingSection { get; set; }
        [Column("COLOR_PAGE_NUMBERS")]
        public int ColorPageNumbers { get; set; }
        [Required]
        [Column("MSG_PREV_BAL")]
        [StringLength(50)]
        [Unicode(false)]
        public string MsgPrevBal { get; set; }
        [Required]
        [Column("MSG_INVOICE_DISCOUNT")]
        [StringLength(50)]
        [Unicode(false)]
        public string MsgInvoiceDiscount { get; set; }
        [Required]
        [Column("MSG_0")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg0 { get; set; }
        [Required]
        [Column("MSG_1")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg1 { get; set; }
        [Required]
        [Column("MSG_2")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg2 { get; set; }
        [Required]
        [Column("MSG_3")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg3 { get; set; }
        [Required]
        [Column("MSG_10")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg10 { get; set; }
        [Required]
        [Column("MSG_200")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg200 { get; set; }
        [Required]
        [Column("MSG_300")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg300 { get; set; }
        [Required]
        [Column("MSG_301")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg301 { get; set; }
        [Required]
        [Column("MSG_302")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg302 { get; set; }
        [Required]
        [Column("MSG_305")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg305 { get; set; }
        [Required]
        [Column("MSG_307")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg307 { get; set; }
        [Required]
        [Column("MSG_309")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg309 { get; set; }
        [Required]
        [Column("MSG_CHANGE_DISPENCED")]
        [StringLength(50)]
        [Unicode(false)]
        public string MsgChangeDispenced { get; set; }
        [Column("COLOR_CHANGE_DISPENCED")]
        public int ColorChangeDispenced { get; set; }
        [Required]
        [Column("STATEMENT_NUMBER_LABEL")]
        [StringLength(25)]
        [Unicode(false)]
        public string StatementNumberLabel { get; set; }
        [Required]
        [Column("MSG_REFUND")]
        [StringLength(50)]
        [Unicode(false)]
        public string MsgRefund { get; set; }
        [Column("ADDRESS_LABEL_SIZE")]
        public short AddressLabelSize { get; set; }
        [Column("PRINT_DATE_PERF")]
        public bool PrintDatePerf { get; set; }
        [Column("NEW_LINE_ZIPCODE")]
        public bool NewLineZipcode { get; set; }
        [Column("TAX_DETAILS")]
        public bool TaxDetails { get; set; }
        [Required]
        [Column("MSG_305100")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg305100 { get; set; }
        [Column("LETTER_PMT")]
        public bool LetterPmt { get; set; }
        [Column("LETTER_PMT_DAYS")]
        public int LetterPmtDays { get; set; }
        [Column("ADDRESSX")]
        public double Addressx { get; set; }
        [Column("ADDRESSY")]
        public double Addressy { get; set; }
        [Column("INCLUDE_SPLIT_DETAILS")]
        public bool IncludeSplitDetails { get; set; }
        [Column("PRODUCT_DETAIL_SORT")]
        public int ProductDetailSort { get; set; }
        [Required]
        [Column("MSG_311")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg311 { get; set; }
        [Required]
        [Column("MSG_313")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg313 { get; set; }
        [Required]
        [Column("MSG_314")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg314 { get; set; }
        [Required]
        [Column("MSG_315")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg315 { get; set; }
        [Required]
        [Column("MSG_317")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg317 { get; set; }
        [Required]
        [Column("MSG_320")]
        [StringLength(50)]
        [Unicode(false)]
        public string Msg320 { get; set; }
        [Column("TRANS_SORT")]
        public short TransSort { get; set; }
        [Required]
        [Column("SHOW_QTY")]
        public bool? ShowQty { get; set; }
        [Column("EMPLOYEE_LIST")]
        public short EmployeeList { get; set; }
        [Required]
        [Column("EMP_LABEL")]
        [StringLength(15)]
        [Unicode(false)]
        public string EmpLabel { get; set; }
        [Column("HIDE_SPLIT_CLIENTS")]
        public bool? HideSplitClients { get; set; }
        [Column("PRINT_SPOUSENAME")]
        public bool PrintSpousename { get; set; }
    }
}