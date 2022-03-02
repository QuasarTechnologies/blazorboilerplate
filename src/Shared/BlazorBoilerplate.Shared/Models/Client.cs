namespace BlazorBoilerplate.Shared.Models;

public class Client
{
    public Guid ClientGuid { get; set; }
    public string PracticeVid { get; set; }
    public string ClientAccountId { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string SpouseFirstName { get; set; }
    public string SpouseLastName { get; set; }
    public string StreetAddress1 { get; set; }
    public string StreetAddress2 { get; set; }
    public Guid CityStateGuid { get; set; }
    public string Zipcode { get; set; }
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
    public int TotalVisits { get; set; }
    public Guid ReferralSourceGuid { get; set; }
    public int TotalReferrals { get; set; }
    public Guid ClientTypeGuid { get; set; }
    public Guid? ImageGuid { get; set; }
    public string SocialSecurNum { get; set; }
    public string SpouseSocialSecurNum { get; set; }
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
