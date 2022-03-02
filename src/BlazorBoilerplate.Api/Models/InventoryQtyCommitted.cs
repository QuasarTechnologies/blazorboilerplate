﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("INVENTORY_QTY_COMMITTED")]
    public partial class InventoryQtyCommitted
    {
        [Key]
        [Column("IQC_GUID")]
        public Guid IqcGuid { get; set; }
        [Column("LOT_GUID")]
        public Guid LotGuid { get; set; }
        [Column("CLIENT_GUID")]
        public Guid ClientGuid { get; set; }
        [Column("PATIENT_GUID")]
        public Guid PatientGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("INVM_GUID")]
        public Guid InvmGuid { get; set; }
        [Column("INV_GUID")]
        public Guid InvGuid { get; set; }
        [Column("STORAGE_GUID")]
        public Guid StorageGuid { get; set; }
        [Column("QUANTITY", TypeName = "money")]
        public decimal Quantity { get; set; }
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