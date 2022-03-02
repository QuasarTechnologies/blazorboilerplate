﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("AR_COMMON")]
    public partial class ArCommon
    {
        [Column("NEXT_STATEMENT_NUMBER", TypeName = "money")]
        public decimal NextStatementNumber { get; set; }
        [Column("NEXT_TRANS_NUMBER", TypeName = "money")]
        public decimal NextTransNumber { get; set; }
        [Key]
        [Column("arc_guid")]
        public Guid ArcGuid { get; set; }
    }
}