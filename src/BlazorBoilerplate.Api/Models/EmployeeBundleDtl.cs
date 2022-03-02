﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("EMPLOYEE_BUNDLE_DTLS")]
    public partial class EmployeeBundleDtl
    {
        [Key]
        [Column("EBUN_DTL_GUID")]
        public Guid EbunDtlGuid { get; set; }
        [Column("EBUN_GUID")]
        public Guid EbunGuid { get; set; }
        [Column("EMPLOYEE_GUID")]
        public Guid EmployeeGuid { get; set; }
        [Column("PERCENTAGE")]
        public int Percentage { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("DEFAULT_EMPLOYEE")]
        public bool DefaultEmployee { get; set; }
        [Required]
        [Column("PRINT_ON_INVOICE")]
        public bool? PrintOnInvoice { get; set; }
    }
}