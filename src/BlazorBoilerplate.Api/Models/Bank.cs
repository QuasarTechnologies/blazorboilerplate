﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("BANKS")]
    public partial class Bank
    {
        [Key]
        [Column("BANK_GUID")]
        public Guid BankGuid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string Name { get; set; }
        [Required]
        [Column("ACCOUNT_NUM")]
        [StringLength(30)]
        [Unicode(false)]
        public string AccountNum { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("CREATE_DATE", TypeName = "datetime")]
        public DateTime CreateDate { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}