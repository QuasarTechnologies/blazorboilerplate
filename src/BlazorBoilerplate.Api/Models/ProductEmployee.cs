﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PRODUCT_EMPLOYEES")]
    public partial class ProductEmployee
    {
        [Key]
        [Column("PROD_EMP_GUID")]
        public Guid ProdEmpGuid { get; set; }
        [Column("PROD_GUID")]
        public Guid ProdGuid { get; set; }
        [Column("PRODM_GUID")]
        public Guid ProdmGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("EMPLOYEE_GUID")]
        public Guid EmployeeGuid { get; set; }
        [Column("EBUN_GUID")]
        public Guid EbunGuid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("DELETED")]
        public bool Deleted { get; set; }
    }
}