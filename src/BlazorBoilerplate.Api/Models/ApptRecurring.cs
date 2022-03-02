﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("Appt_Recurring")]
    public partial class ApptRecurring
    {
        [Key]
        [Column("RECURRING_GUID")]
        public Guid RecurringGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("SEQ_TYPE")]
        public short SeqType { get; set; }
        [Column("HOW_OFTEN")]
        public short HowOften { get; set; }
        [Column("START_DATE", TypeName = "datetime")]
        public DateTime StartDate { get; set; }
        [Column("END_DATE", TypeName = "datetime")]
        public DateTime EndDate { get; set; }
        [Required]
        [Column("COMMENTS")]
        [StringLength(2000)]
        [Unicode(false)]
        public string Comments { get; set; }
        [Column("CREATE_PRACTICE_VID")]
        public short CreatePracticeVid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}