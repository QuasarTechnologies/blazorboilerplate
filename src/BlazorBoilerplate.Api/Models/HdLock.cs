﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("HD_LOCKS")]
    [Index(nameof(HdOitemGuid), Name = "IX_HD_LOCKS_OITEM")]
    [Index(nameof(SessionGuid), Name = "IX_HD_LOCKS_SESSION")]
    public partial class HdLock
    {
        [Key]
        [Column("HD_LOCK_GUID")]
        public Guid HdLockGuid { get; set; }
        [Column("HD_OITEM_GUID")]
        public Guid HdOitemGuid { get; set; }
        [Column("SESSION_GUID")]
        public Guid SessionGuid { get; set; }
        [Required]
        [Column("LOCK_MSG")]
        [StringLength(250)]
        [Unicode(false)]
        public string LockMsg { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}