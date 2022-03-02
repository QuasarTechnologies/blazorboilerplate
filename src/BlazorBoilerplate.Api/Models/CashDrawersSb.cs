﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("CASH_DRAWERS_SB")]
    public partial class CashDrawersSb
    {
        [Key]
        [Column("CDSB_GUID")]
        public Guid CdsbGuid { get; set; }
        [Column("CD_GUID")]
        public Guid CdGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("CHANGE_DATE", TypeName = "datetime")]
        public DateTime ChangeDate { get; set; }
        [Column("STARTOFDAY_AMOUNT", TypeName = "money")]
        public decimal StartofdayAmount { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}