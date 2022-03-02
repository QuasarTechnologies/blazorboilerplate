﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("TRANS_CREDIT_BALANCES_BUS")]
    [Index(nameof(TcbRevGuid), Name = "IX_TRANS_CREDIT_BALANCES_BUS")]
    public partial class TransCreditBalancesBu
    {
        [Key]
        [Column("REVISION_GUID")]
        public Guid RevisionGuid { get; set; }
        [Column("TCB_REV_GUID")]
        public Guid TcbRevGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("AMOUNT", TypeName = "money")]
        public decimal Amount { get; set; }
    }
}