
namespace BlazorBoilerplate.Shared.Models;

public class Pet
{
    public Guid PatientGuid { get; set; }
    public Guid ClientGuid { get; set; }
    public Guid SpeciesGuid { get; set; }
    public Guid BreedGuid { get; set; }
    public Guid ColorGuid { get; set; }
    public string PatientAccountGuid { get; set; }
    public string PatientName { get; set; }
    public Guid StableGuid { get; set; }
    public string Sex { get; set; }
    public DateTime? BirthDate { get; set; }
    public bool Active { get; set; }
    public DateTime? LatestVisit { get; set; }
    public string PracticeVid { get; set; }
    public bool Deleted { get; set; }
    public DateTime CreateDateTime { get; set; }
    public Guid CreateUserGuid { get; set; }
    public Guid CreateWorkstationGuid { get; set; }
    public DateTime? DeceasedDate { get; set; }
    public DateTime? FirstVisit { get; set; }
    public string MaturityCode { get; set; }
    public string MedicalAlert { get; set; }
    public string ChronicAilment { get; set; }
    public string ContinuousMedication { get; set; }
    public string Comment { get; set; }
    public double Weight { get; set; }
    public Guid DoctorPreferenceGuid { get; set; }
    public Guid? ImageGuid { get; set; }
    public string TattooNum { get; set; }
    public string AvidChipNum { get; set; }
    public Guid RefferalSourceGuid { get; set; }
    public string RabiesTagNum { get; set; }
    public string RabiesSerialNum { get; set; }
    public string RabioesBrandName { get; set; }
    public Guid DeletedUniqifyingGuid { get; set; }
    public string Specialinstructions { get; set; }
    public Guid HealthPlanGuid { get; set; }
    public Guid TrainerGuid { get; set; }
}
