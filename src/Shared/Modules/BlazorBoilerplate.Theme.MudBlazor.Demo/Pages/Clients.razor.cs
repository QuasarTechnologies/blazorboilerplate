using BlazorBoilerplate.Shared.Dto.Db;
using BlazorBoilerplate.Shared.Interfaces;
using BlazorBoilerplate.Shared.Models;
using BlazorBoilerplate.Theme.Material.Shared.Components;
using Breeze.Sharp;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Components;

using Syncfusion.Blazor.Navigations;
using MudBlazor;

namespace BlazorBoilerplate.Theme.Material.Demo.Pages
{
    public class Client
    {
        // Key Properties
        public Guid Client_Guid { get; set; }

        // Scalar Properties
        public short PracticevId { get; set; }
        public string ClientAccountId { get; set; }
        [MaxLength(15)]
        public string FirstName { get; set; }
        [MaxLength(15)]
        public string LastName { get; set; }
        public string SpouseFirstName { get; set; }
        public string SpouseLastName { get; set; }
        public string StreetAddress1 { get; set; }
        public string StreetAddress2 { get; set; }
        public Guid CityStateGuid { get; set; }
        [MaxLength(5)]
        public string ZipCode { get; set; }
        public string HomePhone { get; set; }
        public string WorkPhone { get; set; }
        public string EmailAddress { get; set; }
        public bool Active { get; set; }
        public DateTime? FirstVisit { get; set; }
        public DateTime? LatestVisit { get; set; }
        public decimal TotalSales { get; set; }
        public bool Deleted { get; set; }
        public string Salutation { get; set; }
        public DateTime CreateDateTime { get; set; }
        public Guid CreateUserGuid { get; set; }
        public Guid CreateWorkstationGuid { get; set; }
        public string MonetaryFlag { get; set; }
        public Guid DiscountGuid { get; set; }
        public string Comment { get; set; }
        public int Totalvisits { get; set; }
        public Guid ReferralSourceGuid { get; set; }
        public int TotalReferrals { get; set; }
        public Guid ClientTypeGuid { get; set; }
        public Guid? ImageGuid { get; set; }
        public string SocialSecurNum { get; set; }
        public string SpousesocialSecurNum { get; set; }
        public Guid PreferredCommMethodGuid { get; set; }
        public string FaxNumber { get; set; }
        public Guid DeletedUniqifyingGuid { get; set; }
        public bool TaxExempt { get; set; }
        public string DriverLicense { get; set; }
        public string SpouseDriverLicense { get; set; }
        public string PreviousAccountId { get; set; }
        public decimal YtdTotalSales { get; set; }
        public int YtdTotalReferrals { get; set; }
        public int YtdTotalVisits { get; set; }

    }


    public class ClientsBasePage : ItemsTableBase<Client>
    {

        protected override async Task OnInitializedAsync()
        {
          

            //queryParameters = todoFilter;

            //todoFilter.PropertyChanged += FilterPropertyChanged;
        }

       // protected IEnumerable<Client> GetClients()
        protected IEnumerable<Client> GetClients()
        {


            var clients = new List<Client>
            {
                new Client() { PracticevId = 12, ClientAccountId = "22", FirstName = "Joe", LastName = "Smith", SpouseFirstName = "Mary", SpouseLastName = "Smith", StreetAddress1 = "321 Somewhere Street Apt G", StreetAddress2 = "", CityStateGuid = new Guid(), ZipCode = "33435", HomePhone = "754-654-6545", WorkPhone = "951-369-5255", EmailAddress = "email@somewhere.com", Active = true, FirstVisit = DateTime.Now.AddDays(-23), LatestVisit = DateTime.Now.AddDays(-3), TotalSales = 321.55m, Deleted = false, Salutation = "Mr.", CreateDateTime = DateTime.Now.AddDays(-23), CreateUserGuid = new Guid(), CreateWorkstationGuid = new Guid(), MonetaryFlag = "$", DiscountGuid = new Guid(), Comment = "This person is a REAL piece of work.", Totalvisits = 23, ReferralSourceGuid = new Guid(), TotalReferrals = 65, ClientTypeGuid = new Guid(), ImageGuid = new Guid(), SocialSecurNum = "987-55-9878", SpousesocialSecurNum = "321-55-9878", PreferredCommMethodGuid = new Guid(), FaxNumber = "654-654-6545", DeletedUniqifyingGuid = new Guid(), TaxExempt = false, DriverLicense = "BR549", SpouseDriverLicense = "BR548", PreviousAccountId = "", YtdTotalSales = 654.00m, YtdTotalReferrals = 12, YtdTotalVisits = 33, },
                new Client() { PracticevId = 12, ClientAccountId = "23", FirstName = "Frank", LastName = "Henry", SpouseFirstName = "George", SpouseLastName = "Henry", StreetAddress1 = "54 Wherewithall Street Apt G", StreetAddress2 = "", CityStateGuid = new Guid(), ZipCode = "90125", HomePhone = "654-654-6544", WorkPhone = "852-258-2584", EmailAddress = "shemail@somewhere.com", Active = true, FirstVisit = DateTime.Now.AddDays(-14), LatestVisit = DateTime.Now.AddDays(-13), TotalSales = 321.55m, Deleted = false, Salutation = "Mr.", CreateDateTime = DateTime.Now.AddDays(-23), CreateUserGuid = new Guid(), CreateWorkstationGuid = new Guid(), MonetaryFlag = "$", DiscountGuid = new Guid(), Comment = "This person is a REAL piece of work.", Totalvisits = 23, ReferralSourceGuid = new Guid(), TotalReferrals = 65, ClientTypeGuid = new Guid(), ImageGuid = new Guid(), SocialSecurNum = "987-55-9878", SpousesocialSecurNum = "321-55-9878", PreferredCommMethodGuid = new Guid(), FaxNumber = "654-654-6545", DeletedUniqifyingGuid = new Guid(), TaxExempt = false, DriverLicense = "BR549", SpouseDriverLicense = "BR548", PreviousAccountId = "", YtdTotalSales = 654.00m, YtdTotalReferrals = 12, YtdTotalVisits = 33, }
            };

            for (var x = 0; x < 10; x++)
            {
                clients.Add(new Client());
            }

           return clients;

        }

        public override void Dispose()
        {
            //todoFilter.PropertyChanged -= FilterPropertyChanged;

            base.Dispose();
        }
    }
}
