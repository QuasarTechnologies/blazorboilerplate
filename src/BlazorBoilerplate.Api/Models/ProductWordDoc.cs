﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PRODUCT_WORD_DOCS")]
    public partial class ProductWordDoc
    {
        [Key]
        [Column("WORD_GUID")]
        public Guid WordGuid { get; set; }
        [Column("PRODM_GUID")]
        public Guid ProdmGuid { get; set; }
        [Column("PROD_GUID")]
        public Guid ProdGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("NUM_COPIES")]
        public short NumCopies { get; set; }
        [Required]
        [Column("DOCPATH")]
        [StringLength(260)]
        [Unicode(false)]
        public string Docpath { get; set; }
        [Column("WHEN_CODE")]
        public short WhenCode { get; set; }
        [Column("PREVIEW_DOC")]
        public bool PreviewDoc { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}