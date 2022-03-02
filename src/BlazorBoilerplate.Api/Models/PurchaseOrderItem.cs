﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PURCHASE_ORDER_ITEMS")]
    public partial class PurchaseOrderItem
    {
        [Key]
        [Column("PO_ITEM_GUID")]
        public Guid PoItemGuid { get; set; }
        [Column("PO_GUID")]
        public Guid PoGuid { get; set; }
        [Column("INVM_GUID")]
        public Guid InvmGuid { get; set; }
        [Column("INV_GUID")]
        public Guid InvGuid { get; set; }
        [Column("PACKAGE_QTY_ORDERED", TypeName = "money")]
        public decimal PackageQtyOrdered { get; set; }
        [Column("PACKAGE_QTY_RECEIVED", TypeName = "money")]
        public decimal PackageQtyReceived { get; set; }
        [Column("UNIT_QTY_ORDERED", TypeName = "money")]
        public decimal UnitQtyOrdered { get; set; }
        [Column("UNIT_QTY_RECEIVED", TypeName = "money")]
        public decimal UnitQtyReceived { get; set; }
        [Column("SINGLE_PACKAGE_COST", TypeName = "money")]
        public decimal SinglePackageCost { get; set; }
        [Column("TOTAL_PACKAGE_COST", TypeName = "money")]
        public decimal TotalPackageCost { get; set; }
        [Column("QTY_PER_PACKAGE", TypeName = "money")]
        public decimal QtyPerPackage { get; set; }
        [Column("UNIT_COST", TypeName = "money")]
        public decimal UnitCost { get; set; }
        [Column("SHIPPING_COST", TypeName = "money")]
        public decimal ShippingCost { get; set; }
        [Column("TAX_COST", TypeName = "money")]
        public decimal TaxCost { get; set; }
        [Column("PRORATED_UNIT_COST", TypeName = "money")]
        public decimal ProratedUnitCost { get; set; }
        
        [Required]
        [Column("NDC_NUMBER")]
        [StringLength(13)]
        [Unicode(false)]
        public string NdcNumber { get; set; }
        [Required]
        [Column("VENDOR_PRODUCT_NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string VendorProductName { get; set; }
        [Required]
        [Column("CATALOG_NUMBER")]
        [StringLength(50)]
        [Unicode(false)]
        public string CatalogNumber { get; set; }
        [Column("EXPIRATION_DATE", TypeName = "datetime")]
        public DateTime ExpirationDate { get; set; }
        [Required]
        [Column("MANUFACTURER_LOT_NUM")]
        [StringLength(50)]
        [Unicode(false)]
        public string ManufacturerLotNum { get; set; }
        [Required]
        [Column("NOTES")]
        [StringLength(1000)]
        [Unicode(false)]
        public string Notes { get; set; }
        [Required]
        [Column("BARCODE")]
        [StringLength(30)]
        [Unicode(false)]
        public string Barcode { get; set; }
        [Required]
        [Column("MANUFACTURER_CODE")]
        [StringLength(50)]
        [Unicode(false)]
        public string ManufacturerCode { get; set; }
        [Column("ORDER_OF_ENTRY")]
        public int OrderOfEntry { get; set; }
    }
}