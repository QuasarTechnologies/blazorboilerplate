/****** script for selecttopnrows command from ssms  ******/
select
patient_guid                 as  PatientGuid,
client_guid					 as  ClientGuid,
species_guid				 as  SpeciesGuid,
breed_guid					 as  BreedGuid,
color_guid					 as  ColorGuid,
patient_account_id			 as  PatientAccountId,
patient_name				 as  PatientName,
stable_guid					 as  StableGuid,
sex							 as  Sex,
birthdate					 as  Birthdate,
active						 as  Active,
latest_visit				 as  LatestVisit,
practice_vid				 as  PracticeVid,
deleted						 as  Deleted,
create_date_time			 as  CreateDateTime,
create_user_guid			 as  CreateUserGuid,
create_workstation_guid		 as  CreateWorkstationGuid,
deceased_date				 as  DeceasedDate,
first_visit					 as  FirstVisit,
maturity_code				 as  MaturityCode,
medical_alert				 as  MedicalAlert,
chronic_ailment				 as  ChronicAilment,
continuous_medication		 as  ContinuousMedication,
comment						 as  Comment,
weight						 as  Weight,
doctor_preference_guid		 as  DoctorPreferenceGuid,
image_guid					 as  ImageGuid,
tattoo_num					 as  TattooNum,
avid_chip_num				 as  AvidChipNum,
referral_source_guid		 as  ReferralSourceGuid,
rabies_tag_number			 as  RabiesTagNumber,
rabies_serial_number		 as  RabiesSerialNumber,
rabies_brand_name			 as  RabiesBrandName,
deleted_uniqifying_guid	     as  DeletedUniqifyingGuid,
special_instructions		 as  SpecialInstructions,
trainer_guid				 as  TrainerGuid

from asshole.dbo.patients

--           ClientGuid
--           PracticeVid
--           ClientAccountId
--        *  FirstName		--
--         *  LastName		--
--         *  SpouseFirstName	--
--         *  SpouseLastName	--
--         *  StreetAddress1
--         *  StreetAddress2
--           CityStateGuid
--         *  Zipcode
--         *  HomePhone
--         *  WorkPhone
--         *  EmailAddress
--		   *  ClienrtDOB
--         *  Active
--         *  FirstVisit  (Date)
--         *  LatestVisit (Date)
--         *  TotalSales
--           Deleted
--           Salutation
--           CreateDateTime
--           CreateUserGuid
--           CreateWorkstationGuid
--           MonetaryFlag
--					 DiscountGuid
--         * Comment
--         *  TotalVisits
--           ReferralSourceGuid
--           TotalReferrals
--           ClientTypeGuid
--           ImageGuid
--           SocialSecurNum
--           SpouseSocialSecurNum
--          
PreferredCommMethodGuid
--           FaxNumber
--           DeletedUniqifyingGuid
--           TaxExempt
--           DriverLicense
--           SpouseDriverLicense
--           PreviousAccountId
--           YtdTotalSales
--           YtdTotalReferrals
--           YtdTotalVisits
--           
--           
--           
--           
--           
--           
--           
--           
--           
--           
--           
--           
--           
--           
--           
--           



















