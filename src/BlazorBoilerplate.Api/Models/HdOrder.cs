﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("HD_ORDERS")]
    [Index(nameof(Bill2AddressGuid), Name = "IX_HD_ORDERS_BILL2")]
    [Index(nameof(ClientGuid), Name = "IX_HD_ORDERS_CLIENT")]
    [Index(nameof(OrderDate), Name = "IX_HD_ORDERS_DATE")]
    [Index(nameof(OrderNumber), Name = "IX_HD_ORDERS_NUMBER")]
    [Index(nameof(Ship2AddressGuid), Name = "IX_HD_ORDERS_SHIP2")]
    public partial class HdOrder
    {
        [Key]
        [Column("HD_ORDER_GUID")]
        public Guid HdOrderGuid { get; set; }
        [Column("HD_ACCT_NUM")]
        public int HdAcctNum { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("CLOSED")]
        public bool Closed { get; set; }
        [Column("CLIENT_GUID")]
        public Guid ClientGuid { get; set; }
        [Column("ORDER_NUMBER", TypeName = "money")]
        public decimal OrderNumber { get; set; }
        [Column("ORDER_DATE", TypeName = "datetime")]
        public DateTime OrderDate { get; set; }
        [Required]
        [Column("SHIP2_NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string Ship2Name { get; set; }
        [Column("SHIP2_ADDRESS_GUID")]
        public Guid Ship2AddressGuid { get; set; }
        [Required]
        [Column("BILL2_NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string Bill2Name { get; set; }
        [Column("BILL2_ADDRESS_GUID")]
        public Guid Bill2AddressGuid { get; set; }
        [Required]
        [Column("CLIENT_FNAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string ClientFname { get; set; }
        [Required]
        [Column("CLIENT_LNAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string ClientLname { get; set; }
        [Required]
        [Column("CLIENT_EMAIL")]
        [StringLength(255)]
        [Unicode(false)]
        public string ClientEmail { get; set; }
        [Required]
        [Column("CLIENT_PHONE")]
        [StringLength(50)]
        [Unicode(false)]
        public string ClientPhone { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("INVOICE_GUID")]
        public Guid InvoiceGuid { get; set; }
    }
}