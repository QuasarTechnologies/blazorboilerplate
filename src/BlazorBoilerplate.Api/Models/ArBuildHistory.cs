﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("AR_BUILD_HISTORY")]
    public partial class ArBuildHistory
    {
        [Key]
        [Column("TRANS_GUID")]
        public Guid TransGuid { get; set; }
        [Column("AVG_STMT_TOTAL", TypeName = "money")]
        public decimal AvgStmtTotal { get; set; }
        [Column("STMT_COUNT")]
        public int StmtCount { get; set; }
        [Column("BAL_0_30", TypeName = "money")]
        public decimal Bal030 { get; set; }
        [Column("BAL_31_60", TypeName = "money")]
        public decimal Bal3160 { get; set; }
        [Column("BAL_61_90", TypeName = "money")]
        public decimal Bal6190 { get; set; }
        [Column("BAL_OVER90", TypeName = "money")]
        public decimal BalOver90 { get; set; }
        [Column("INT_BAL_0_30", TypeName = "money")]
        public decimal IntBal030 { get; set; }
        [Column("INT_BAL_31_60", TypeName = "money")]
        public decimal IntBal3160 { get; set; }
        [Column("INT_BAL_61_90", TypeName = "money")]
        public decimal IntBal6190 { get; set; }
        [Column("INT_BAL_OVER90", TypeName = "money")]
        public decimal IntBalOver90 { get; set; }
        [Column("NSF_BAL_0_30", TypeName = "money")]
        public decimal NsfBal030 { get; set; }
        [Column("NSF_BAL_31_60", TypeName = "money")]
        public decimal NsfBal3160 { get; set; }
        [Column("NSF_BAL_61_90", TypeName = "money")]
        public decimal NsfBal6190 { get; set; }
        [Column("NSF_BAL_OVER90", TypeName = "money")]
        public decimal NsfBalOver90 { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}