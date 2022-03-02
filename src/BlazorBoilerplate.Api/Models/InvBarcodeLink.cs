﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("INV_BARCODE_LINKS")]
    public partial class InvBarcodeLink
    {
        [Key]
        [Column("INV_BARCODE_LINK_GUID")]
        public Guid InvBarcodeLinkGuid { get; set; }
        [Column("BARCODE_LINK_GUID")]
        public Guid BarcodeLinkGuid { get; set; }
        [Column("LINK_REV_COUNT")]
        public int LinkRevCount { get; set; }
        [Column("INV_BARCODE_GUID")]
        public Guid InvBarcodeGuid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
    }
}