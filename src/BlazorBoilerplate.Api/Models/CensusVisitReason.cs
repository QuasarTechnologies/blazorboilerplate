﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("CENSUS_VISIT_REASONS")]
    public partial class CensusVisitReason
    {
        [Key]
        [Column("REVISION_GUID")]
        public Guid RevisionGuid { get; set; }
        [Column("REASON_GUID")]
        public Guid ReasonGuid { get; set; }
        [Required]
        [Column("VISIT_REASON_CODE")]
        [StringLength(30)]
        [Unicode(false)]
        public string VisitReasonCode { get; set; }
        [Column("DELETE_GUID")]
        public Guid DeleteGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Required]
        [Column("REASON")]
        [StringLength(250)]
        [Unicode(false)]
        public string Reason { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}