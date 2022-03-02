﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("EMPLOYEES")]
    public partial class Employee
    {
        [Key]
        [Column("P_EMP_GUID")]
        public Guid PEmpGuid { get; set; }
        [Column("EMPLOYEE_GUID")]
        public Guid EmployeeGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("AVAILABLE")]
        public bool Available { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("DELETED")]
        public bool Deleted { get; set; }
        [Required]
        [Column("DEA_NUMBER")]
        [StringLength(30)]
        [Unicode(false)]
        public string DeaNumber { get; set; }
        [Required]
        [Column("LICENSE_NUMBER")]
        [StringLength(30)]
        [Unicode(false)]
        public string LicenseNumber { get; set; }
        [Column("DEA_EXPIRES", TypeName = "datetime")]
        public DateTime? DeaExpires { get; set; }
        [Column("LICENSE_EXPIRES", TypeName = "datetime")]
        public DateTime? LicenseExpires { get; set; }
        [Required]
        [Column("LICENSE_STATE")]
        [StringLength(2)]
        [Unicode(false)]
        public string LicenseState { get; set; }
    }
}