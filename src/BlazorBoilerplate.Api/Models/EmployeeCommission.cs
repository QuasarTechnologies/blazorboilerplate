﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("EMPLOYEE_COMMISSION")]
    public partial class EmployeeCommission
    {
        [Key]
        [Column("EMP_COM_GUID")]
        public Guid EmpComGuid { get; set; }
        [Column("EMPLOYEE_GUID")]
        public Guid EmployeeGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("PRODM_GUID")]
        public Guid ProdmGuid { get; set; }
        [Column("PROD_GUID")]
        public Guid ProdGuid { get; set; }
        [Column("PERCENTAGE", TypeName = "money")]
        public decimal Percentage { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("LMOD_DATE_TIME", TypeName = "datetime")]
        public DateTime LmodDateTime { get; set; }
        [Column("LMOD_USER_GUID")]
        public Guid LmodUserGuid { get; set; }
        [Column("LMOD_WORKSTATION_GUID")]
        public Guid LmodWorkstationGuid { get; set; }
    }
}