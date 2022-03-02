﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("EMPLOYEES_MR")]
    public partial class EmployeesMr
    {
        [Key]
        [Column("P_EMP_GUID")]
        public Guid PEmpGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("DELETED")]
        public bool Deleted { get; set; }
        [Column("PRO_NOTE")]
        public bool ProNote { get; set; }
        [Column("PRO_DX")]
        public bool ProDx { get; set; }
        [Column("PRO_IMAGE")]
        public bool ProImage { get; set; }
        [Column("PRO_CASE")]
        public bool ProCase { get; set; }
        [Column("PRO_PROB")]
        public bool ProProb { get; set; }
        [Column("PRO_LAB")]
        public bool ProLab { get; set; }
        [Column("PRO_SURG")]
        public bool ProSurg { get; set; }
        [Column("PRO_XRAY")]
        public bool ProXray { get; set; }
        [Column("PRO_AUDIO")]
        public bool ProAudio { get; set; }
        [Column("PRO_EFORM")]
        public bool ProEform { get; set; }
        [Required]
        [Column("PRO_SOAP")]
        public bool? ProSoap { get; set; }
    }
}