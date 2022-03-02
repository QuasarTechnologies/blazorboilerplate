﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("INVOICE_TEMPLATES")]
    public partial class InvoiceTemplate
    {
        [Key]
        [Column("REVISION_GUID")]
        public Guid RevisionGuid { get; set; }
        [Column("TEMPLATE_GUID")]
        public Guid TemplateGuid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string Name { get; set; }
        [Column("DELETE_GUID")]
        public Guid DeleteGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("IMAGES_GUID")]
        public Guid ImagesGuid { get; set; }
        [Column("FIRST_PAGE_STYLE")]
        public short FirstPageStyle { get; set; }
        [Column("FIRST_PAGE_TOP_OFFSET", TypeName = "money")]
        public decimal FirstPageTopOffset { get; set; }
        [Column("FIRST_PAGE_BOTTOM_OFFSET", TypeName = "money")]
        public decimal FirstPageBottomOffset { get; set; }
        [Column("OTHER_PAGE_STYLE")]
        public short OtherPageStyle { get; set; }
        [Column("OTHER_PAGE_TOP_OFFSET", TypeName = "money")]
        public decimal OtherPageTopOffset { get; set; }
        [Column("OTHER_PAGE_BOTTOM_OFFSET", TypeName = "money")]
        public decimal OtherPageBottomOffset { get; set; }
        [Column("PRINT_HEADER")]
        public bool PrintHeader { get; set; }
        [Column("HEADER_IMAGE_OPTION")]
        public short HeaderImageOption { get; set; }
        [Column("HEADER_IMAGE_SIZE")]
        public short HeaderImageSize { get; set; }
        [Column("HEADER_IMAGE", TypeName = "image")]
        public byte[] HeaderImage { get; set; }
        [Required]
        [Column("HEADER_TITLE")]
        [StringLength(100)]
        [Unicode(false)]
        public string HeaderTitle { get; set; }
        [Required]
        [Column("HEADER_TITLE_FONT")]
        [StringLength(50)]
        [Unicode(false)]
        public string HeaderTitleFont { get; set; }
        [Column("HEADER_TITLE_SIZE")]
        public short HeaderTitleSize { get; set; }
        [Column("HEADER_TITLE_BOLD")]
        public bool HeaderTitleBold { get; set; }
        [Column("HEADER_TITLE_ITALICS")]
        public bool HeaderTitleItalics { get; set; }
        [Column("HEADER_TITLE_ALIGN")]
        public short HeaderTitleAlign { get; set; }
        [Column("HEADER_TITLE_COLOR")]
        public int HeaderTitleColor { get; set; }
        [Required]
        [Column("HEADER_MSG", TypeName = "text")]
        public string HeaderMsg { get; set; }
        [Required]
        [Column("HEADER_MSG_FONT")]
        [StringLength(50)]
        [Unicode(false)]
        public string HeaderMsgFont { get; set; }
        [Column("HEADER_MSG_SIZE")]
        public short HeaderMsgSize { get; set; }
        [Column("HEADER_MSG_BOLD")]
        public bool HeaderMsgBold { get; set; }
        [Column("HEADER_MSG_ITALICS")]
        public bool HeaderMsgItalics { get; set; }
        [Column("HEADER_MSG_ALIGN")]
        public short HeaderMsgAlign { get; set; }
        [Column("HEADER_MSG_COLOR")]
        public int HeaderMsgColor { get; set; }
        [Required]
        [Column("HEADER_MSG2", TypeName = "text")]
        public string HeaderMsg2 { get; set; }
        [Required]
        [Column("HEADER_MSG2_FONT")]
        [StringLength(50)]
        [Unicode(false)]
        public string HeaderMsg2Font { get; set; }
        [Column("HEADER_MSG2_SIZE")]
        public short HeaderMsg2Size { get; set; }
        [Column("HEADER_MSG2_BOLD")]
        public bool HeaderMsg2Bold { get; set; }
        [Column("HEADER_MSG2_ITALICS")]
        public bool HeaderMsg2Italics { get; set; }
        [Column("HEADER_MSG2_ALIGN")]
        public short HeaderMsg2Align { get; set; }
        [Column("HEADER_MSG2_COLOR")]
        public int HeaderMsg2Color { get; set; }
        [Column("PRINT_FOOTER")]
        public bool PrintFooter { get; set; }
        [Required]
        [Column("FOOTER1_MSG", TypeName = "text")]
        public string Footer1Msg { get; set; }
        [Required]
        [Column("FOOTER1_MSG_FONT")]
        [StringLength(50)]
        [Unicode(false)]
        public string Footer1MsgFont { get; set; }
        [Column("FOOTER1_MSG_SIZE")]
        public short Footer1MsgSize { get; set; }
        [Column("FOOTER1_MSG_BOLD")]
        public bool Footer1MsgBold { get; set; }
        [Column("FOOTER1_MSG_ITALICS")]
        public bool Footer1MsgItalics { get; set; }
        [Column("FOOTER1_MSG_ALIGN")]
        public short Footer1MsgAlign { get; set; }
        [Column("FOOTER1_MSG_COLOR")]
        public int Footer1MsgColor { get; set; }
        [Required]
        [Column("FOOTER2_MSG", TypeName = "text")]
        public string Footer2Msg { get; set; }
        [Required]
        [Column("FOOTER2_MSG_FONT")]
        [StringLength(50)]
        [Unicode(false)]
        public string Footer2MsgFont { get; set; }
        [Column("FOOTER2_MSG_SIZE")]
        public short Footer2MsgSize { get; set; }
        [Column("FOOTER2_MSG_BOLD")]
        public bool Footer2MsgBold { get; set; }
        [Column("FOOTER2_MSG_ITALICS")]
        public bool Footer2MsgItalics { get; set; }
        [Column("FOOTER2_MSG_ALIGN")]
        public short Footer2MsgAlign { get; set; }
        [Column("FOOTER2_MSG_COLOR")]
        public int Footer2MsgColor { get; set; }
        [Required]
        [Column("FOOTER3_MSG", TypeName = "text")]
        public string Footer3Msg { get; set; }
        [Required]
        [Column("FOOTER3_MSG_FONT")]
        [StringLength(50)]
        [Unicode(false)]
        public string Footer3MsgFont { get; set; }
        [Column("FOOTER3_MSG_SIZE")]
        public short Footer3MsgSize { get; set; }
        [Column("FOOTER3_MSG_BOLD")]
        public bool Footer3MsgBold { get; set; }
        [Column("FOOTER3_MSG_ITALICS")]
        public bool Footer3MsgItalics { get; set; }
        [Column("FOOTER3_MSG_ALIGN")]
        public short Footer3MsgAlign { get; set; }
        [Column("FOOTER3_MSG_COLOR")]
        public int Footer3MsgColor { get; set; }
        [Column("PRINT_RECHECKS")]
        public bool PrintRechecks { get; set; }
        [Required]
        [Column("RECHECKS_TITLE")]
        [StringLength(100)]
        [Unicode(false)]
        public string RechecksTitle { get; set; }
        [Required]
        [Column("RECHECKS_TITLE_FONT")]
        [StringLength(50)]
        [Unicode(false)]
        public string RechecksTitleFont { get; set; }
        [Column("RECHECKS_TITLE_SIZE")]
        public short RechecksTitleSize { get; set; }
        [Column("RECHECKS_TITLE_BOLD")]
        public bool RechecksTitleBold { get; set; }
        [Column("RECHECKS_TITLE_ITALICS")]
        public bool RechecksTitleItalics { get; set; }
        [Column("RECHECKS_TITLE_ALIGN")]
        public short RechecksTitleAlign { get; set; }
        [Column("RECHECKS_TITLE_COLOR")]
        public int RechecksTitleColor { get; set; }
        [Required]
        [Column("RECHECKS_DATE_FONT")]
        [StringLength(50)]
        [Unicode(false)]
        public string RechecksDateFont { get; set; }
        [Column("RECHECKS_DATE_SIZE")]
        public short RechecksDateSize { get; set; }
        [Column("RECHECKS_DATE_BOLD")]
        public bool RechecksDateBold { get; set; }
        [Column("RECHECKS_DATE_ITALICS")]
        public bool RechecksDateItalics { get; set; }
        [Column("RECHECKS_DATE_COLOR")]
        public int RechecksDateColor { get; set; }
        [Required]
        [Column("RECHECKS_MSG_FONT")]
        [StringLength(50)]
        [Unicode(false)]
        public string RechecksMsgFont { get; set; }
        [Column("RECHECKS_MSG_SIZE")]
        public short RechecksMsgSize { get; set; }
        [Column("RECHECKS_MSG_BOLD")]
        public bool RechecksMsgBold { get; set; }
        [Column("RECHECKS_MSG_ITALICS")]
        public bool RechecksMsgItalics { get; set; }
        [Column("RECHECKS_MSG_COLOR")]
        public int RechecksMsgColor { get; set; }
        [Column("PRINT_PNOTES")]
        public bool PrintPnotes { get; set; }
        [Required]
        [Column("PNOTES_TITLE")]
        [StringLength(100)]
        [Unicode(false)]
        public string PnotesTitle { get; set; }
        [Required]
        [Column("PNOTES_TITLE_FONT")]
        [StringLength(50)]
        [Unicode(false)]
        public string PnotesTitleFont { get; set; }
        [Column("PNOTES_TITLE_SIZE")]
        public short PnotesTitleSize { get; set; }
        [Column("PNOTES_TITLE_BOLD")]
        public bool PnotesTitleBold { get; set; }
        [Column("PNOTES_TITLE_ITALICS")]
        public bool PnotesTitleItalics { get; set; }
        [Column("PNOTES_TITLE_ALIGN")]
        public short PnotesTitleAlign { get; set; }
        [Column("PNOTES_TITLE_COLOR")]
        public int PnotesTitleColor { get; set; }
        [Required]
        [Column("PNOTES_MSG_FONT")]
        [StringLength(50)]
        [Unicode(false)]
        public string PnotesMsgFont { get; set; }
        [Column("PNOTES_MSG_SIZE")]
        public short PnotesMsgSize { get; set; }
        [Column("PNOTES_MSG_BOLD")]
        public bool PnotesMsgBold { get; set; }
        [Column("PNOTES_MSG_ITALICS")]
        public bool PnotesMsgItalics { get; set; }
        [Column("PNOTES_MSG_COLOR")]
        public int PnotesMsgColor { get; set; }
        [Required]
        [Column("DISCOUNT_NAME_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string DiscountNameLabel { get; set; }
        [Column("DISCOUNT_NAME_COLOR")]
        public int DiscountNameColor { get; set; }
        [Required]
        [Column("TOTAL_PRODUCTS_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string TotalProductsLabel { get; set; }
        [Required]
        [Column("INVOICE_DISCOUNT_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string InvoiceDiscountLabel { get; set; }
        [Required]
        [Column("INVOICE_SUBTOTAL_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string InvoiceSubtotalLabel { get; set; }
        [Required]
        [Column("TOTAL_INVOICE_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string TotalInvoiceLabel { get; set; }
        [Required]
        [Column("TOTAL_PMTS_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string TotalPmtsLabel { get; set; }
        [Required]
        [Column("TOTAL_DUE_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string TotalDueLabel { get; set; }
        [Column("AR_DISPLAY_OPTION")]
        public short ArDisplayOption { get; set; }
        [Column("AR_TITLE_COLOR")]
        public int ArTitleColor { get; set; }
        [Required]
        [Column("AR_TITLE")]
        [StringLength(100)]
        [Unicode(false)]
        public string ArTitle { get; set; }
        [Column("AR_LABELS_COLOR")]
        public int ArLabelsColor { get; set; }
        [Required]
        [Column("AR_INVOICE_LABEL")]
        [StringLength(20)]
        [Unicode(false)]
        public string ArInvoiceLabel { get; set; }
        [Required]
        [Column("AR_0_30_LABEL")]
        [StringLength(20)]
        [Unicode(false)]
        public string Ar030Label { get; set; }
        [Required]
        [Column("AR_31_60_LABEL")]
        [StringLength(20)]
        [Unicode(false)]
        public string Ar3160Label { get; set; }
        [Required]
        [Column("AR_61_90_LABEL")]
        [StringLength(20)]
        [Unicode(false)]
        public string Ar6190Label { get; set; }
        [Required]
        [Column("AR_OVER90_LABEL")]
        [StringLength(20)]
        [Unicode(false)]
        public string ArOver90Label { get; set; }
        [Required]
        [Column("AR_TOTAL_LABEL")]
        [StringLength(20)]
        [Unicode(false)]
        public string ArTotalLabel { get; set; }
        [Column("PRODUCT_CAT_OPTION")]
        public short ProductCatOption { get; set; }
        [Column("PRODUCT_CAT_COLOR")]
        public int ProductCatColor { get; set; }
        [Column("PRODUCT_SORT_OPTION")]
        public short ProductSortOption { get; set; }
        [Column("PRINT_PRODUCT_CODE")]
        public bool PrintProductCode { get; set; }
        [Column("PRODUCT_NAME_COLOR")]
        public int ProductNameColor { get; set; }
        [Column("PRODUCT_DETAILS_COLOR")]
        public int ProductDetailsColor { get; set; }
        [Column("DATE_PERFORMED_COLOR")]
        public int DatePerformedColor { get; set; }
        [Column("CLIENT_DISPLAY_OPTION")]
        public short ClientDisplayOption { get; set; }
        [Column("CLIENT_NAME_COLOR")]
        public int ClientNameColor { get; set; }
        [Column("CLIENT_DETAILS_COLOR")]
        public int ClientDetailsColor { get; set; }
        [Column("PATIENT_DISPLAY_OPTION")]
        public short PatientDisplayOption { get; set; }
        [Column("PATIENT_NAME_COLOR")]
        public int PatientNameColor { get; set; }
        [Column("PATIENT_DETAILS_COLOR")]
        public int PatientDetailsColor { get; set; }
        [Column("VACC_NAME_COLOR")]
        public int VaccNameColor { get; set; }
        [Column("VACC_DATE_COLOR")]
        public int VaccDateColor { get; set; }
        [Column("PRINT_VACC_FLAGS")]
        public bool PrintVaccFlags { get; set; }
        [Column("PRINT_PATIENT_IMAGE")]
        public bool PrintPatientImage { get; set; }
        [Column("PRINT_TAX_DETAILS")]
        public bool PrintTaxDetails { get; set; }
        [Column("PROVIDER_NAME_COLOR")]
        public int ProviderNameColor { get; set; }
        [Column("TOTAL_SECTION_COLOR")]
        public int TotalSectionColor { get; set; }
        [Column("TOTAL_UNPAID_COLOR")]
        public int TotalUnpaidColor { get; set; }
        [Column("POS_PRICE_COLOR")]
        public int PosPriceColor { get; set; }
        [Column("NEG_PRICE_COLOR")]
        public int NegPriceColor { get; set; }
        [Column("INVOICE_NUMBER_OPTION")]
        public short InvoiceNumberOption { get; set; }
        [Column("INVOICE_DATE_COLOR")]
        public int InvoiceDateColor { get; set; }
        [Column("INVOICE_NUMBER_COLOR")]
        public int InvoiceNumberColor { get; set; }
        [Column("COPIES")]
        public short Copies { get; set; }
        [Required]
        [Column("MALE_CODE")]
        [StringLength(2)]
        [Unicode(false)]
        public string MaleCode { get; set; }
        [Required]
        [Column("MALE_NEUTERED_CODE")]
        [StringLength(2)]
        [Unicode(false)]
        public string MaleNeuteredCode { get; set; }
        [Required]
        [Column("FEMALE_CODE")]
        [StringLength(2)]
        [Unicode(false)]
        public string FemaleCode { get; set; }
        [Required]
        [Column("FEMALE_SPAYED_CODE")]
        [StringLength(2)]
        [Unicode(false)]
        public string FemaleSpayedCode { get; set; }
        [Required]
        [Column("MALE_LABEL")]
        [StringLength(20)]
        [Unicode(false)]
        public string MaleLabel { get; set; }
        [Required]
        [Column("MALE_NEUTERED_LABEL")]
        [StringLength(20)]
        [Unicode(false)]
        public string MaleNeuteredLabel { get; set; }
        [Required]
        [Column("FEMALE_LABEL")]
        [StringLength(20)]
        [Unicode(false)]
        public string FemaleLabel { get; set; }
        [Required]
        [Column("FEMALE_SPAYED_LABEL")]
        [StringLength(20)]
        [Unicode(false)]
        public string FemaleSpayedLabel { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Required]
        [Column("CASHIER_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string CashierLabel { get; set; }
        [Required]
        [Column("PRICE_TITLE_LABEL")]
        [StringLength(15)]
        [Unicode(false)]
        public string PriceTitleLabel { get; set; }
        [Column("PROVIDER_DISPLAY_OPTION")]
        public short ProviderDisplayOption { get; set; }
        [Column("PRINT_CHECK_NUMBERS")]
        public bool PrintCheckNumbers { get; set; }
        [Required]
        [Column("TOTAL_CHANGE_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string TotalChangeLabel { get; set; }
        [Required]
        [Column("SPLIT_BILL_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string SplitBillLabel { get; set; }
        [Required]
        [Column("AR_REDUCED_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string ArReducedLabel { get; set; }
        [Required]
        [Column("ZERO_PRICE_LABEL")]
        [StringLength(15)]
        [Unicode(false)]
        public string ZeroPriceLabel { get; set; }
        [Column("AR_PRINT_WTOTALS")]
        public bool ArPrintWtotals { get; set; }
        [Required]
        [Column("AR_PREVBAL_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string ArPrevbalLabel { get; set; }
        [Required]
        [Column("AR_TOTDUE_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string ArTotdueLabel { get; set; }
        [Required]
        [Column("AR_NEWBAL_LABEL")]
        [StringLength(30)]
        [Unicode(false)]
        public string ArNewbalLabel { get; set; }
        [Required]
        [Column("ZERO_PRICE_LBL_COM")]
        [StringLength(15)]
        [Unicode(false)]
        public string ZeroPriceLblCom { get; set; }
        [Required]
        [Column("COM_BULLET")]
        [StringLength(1)]
        [Unicode(false)]
        public string ComBullet { get; set; }
    }
}