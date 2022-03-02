﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("INVOICE_HEALTH_PLAN_PRODUCTS")]
    public partial class InvoiceHealthPlanProduct
    {
        [Key]
        [Column("IHP_PROD_GUID")]
        public Guid IhpProdGuid { get; set; }
        [Column("IHP_GUID")]
        public Guid IhpGuid { get; set; }
        [Column("HEALTH_PLAN_GUID")]
        public Guid HealthPlanGuid { get; set; }
        [Column("CLIENT_GUID")]
        public Guid ClientGuid { get; set; }
        [Column("PATIENT_GUID")]
        public Guid PatientGuid { get; set; }
        [Column("PRODM_GUID")]
        public Guid ProdmGuid { get; set; }
        [Column("INVOICE_PROD_GUID")]
        public Guid InvoiceProdGuid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}