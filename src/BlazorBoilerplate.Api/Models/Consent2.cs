﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("CONSENT2")]
    public partial class Consent2
    {
        [Key]
        [Column("CONSENT_GUID")]
        public Guid ConsentGuid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string Name { get; set; }
        [Column("DELETED_GUID")]
        public Guid DeletedGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("CONSENT_TYPE")]
        public int ConsentType { get; set; }
        [Column("NUM_MSGS")]
        public int NumMsgs { get; set; }
        [Column("REQ_INITIALS")]
        public bool ReqInitials { get; set; }
        [Column("SORT_ORDER")]
        public int SortOrder { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("KEY_ROW_GUID")]
        public Guid KeyRowGuid { get; set; }
    }
}