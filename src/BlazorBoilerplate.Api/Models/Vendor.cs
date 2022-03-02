﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("VENDORS")]
    public partial class Vendor
    {
        [Key]
        [Column("VENDOR_GUID")]
        public Guid VendorGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(40)]
        [Unicode(false)]
        public string Name { get; set; }
        [Column("DELETE_GUID")]
        public Guid DeleteGuid { get; set; }
        [Required]
        [Column("ADDRESS1")]
        [StringLength(50)]
        [Unicode(false)]
        public string Address1 { get; set; }
        [Required]
        [Column("ADDRESS2")]
        [StringLength(50)]
        [Unicode(false)]
        public string Address2 { get; set; }
        [Column("CITY_STATE_GUID")]
        public Guid CityStateGuid { get; set; }
        [Column("COUNTRY_GUID")]
        public Guid CountryGuid { get; set; }
        [Required]
        [Column("ZIPCODE")]
        [StringLength(10)]
        [Unicode(false)]
        public string Zipcode { get; set; }
        [Column("LAST_CONTACT_GUID")]
        public Guid LastContactGuid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("DELETED")]
        public bool Deleted { get; set; }
        [Required]
        [Column("PRACTICE_ACCT_NUM")]
        [StringLength(50)]
        [Unicode(false)]
        public string PracticeAcctNum { get; set; }
        [Required]
        [Column("WEBSITE_ADDRESS")]
        [StringLength(255)]
        [Unicode(false)]
        public string WebsiteAddress { get; set; }
        [Required]
        [Column("WEBSITE_USER")]
        [StringLength(50)]
        [Unicode(false)]
        public string WebsiteUser { get; set; }
        [Required]
        [Column("WEBSITE_PASSWORD")]
        [StringLength(50)]
        [Unicode(false)]
        public string WebsitePassword { get; set; }
        [Column("SEND_PO_INFO")]
        public short SendPoInfo { get; set; }
        [Column("ORDER_FROM_WEBSITE")]
        public bool OrderFromWebsite { get; set; }
        [Required]
        [Column("IMPORT_PATH")]
        [StringLength(200)]
        [Unicode(false)]
        public string ImportPath { get; set; }
        [Required]
        [Column("VA_USER")]
        [StringLength(50)]
        [Unicode(false)]
        public string VaUser { get; set; }
        [Required]
        [Column("VA_PASSWORD")]
        [StringLength(50)]
        [Unicode(false)]
        public string VaPassword { get; set; }
        [Column("II_ACCT_NUM")]
        public int IiAcctNum { get; set; }
        [Required]
        [Column("GATEWAY_DISTRIBUTOR_NUMBER")]
        [StringLength(20)]
        [Unicode(false)]
        public string GatewayDistributorNumber { get; set; }
    }
}