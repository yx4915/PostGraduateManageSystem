CREATE TABLE BasicInfo
(
    StudentID                             INT PRIMARY KEY,
    Name                                  NVARCHAR(50) NOT NULL,
    Name_PY                               NVARCHAR(50),
    Gender                                NVARCHAR(10),
    nation                                NVARCHAR(20),
    BirthDate                             DATE,
    native_place                          NVARCHAR(50),
    political_status                      NVARCHAR(20),
    ID_type                               NVARCHAR(20),
    ID_number                             NVARCHAR(20),
    country                               NVARCHAR(20),
    marital_status                        NVARCHAR(20),
    BirthPlace                            NVARCHAR(50),
    origin_place                          NVARCHAR(50),
    family_address                        NVARCHAR(50),
    HuKou_place                           NVARCHAR(50),
    HuKou_detailed_place                  NVARCHAR(50),
    HuKou_postal_code                     NVARCHAR(50),
    Railway_Station_start                 NVARCHAR(50),
    Railway_Station_end                   NVARCHAR(50),
    phone_number                          NVARCHAR(50),
    campus_email                          NVARCHAR(50),
    personal_email                        NVARCHAR(50),
    Join_party_date                       DATE,
    student_label                         NVARCHAR(50),
    department_ID                         NVARCHAR(50),
    award                                 NVARCHAR(50),

    grade                                 NVARCHAR(50),
    entrance_season                       NVARCHAR(50),
    Cultivation_level                     NVARCHAR(50),
    Student_category                      NVARCHAR(50),
    college                               NVARCHAR(50),
    management_department                 NVARCHAR(50),
    major                                 NVARCHAR(50),
    length_of_schooling                   NVARCHAR(50),
    entrance_method                       NVARCHAR(50),
    campus_zone                           NVARCHAR(50),
    entrance_date                         DATE,
    class                                 NVARCHAR(50),
    Enrollment_major                      NVARCHAR(50),
    Degree_Category                       NVARCHAR(50),
    Degree_type                           NVARCHAR(50),
    major_way                             NVARCHAR(50),
    culture_method                        NVARCHAR(50),
    study_method                          NVARCHAR(50),
    JinXiu_category                       NVARCHAR(50),
    special_plan                          NVARCHAR(50),
    Expected_graduation_time              DATE,
    Joint_Training_Unit                   NVARCHAR(50),
    interdisciplinary                     NVARCHAR(50),
    overseas                              NVARCHAR(50),
    Actual_graduation_time                DATE,
    Student_status                        NVARCHAR(50),
    Student_status_change_status          NVARCHAR(50),
    mentor                                NVARCHAR(50),
    mentor2                               NVARCHAR(50),
    Joint_training_mentors                NVARCHAR(50),
    On_campus                             NVARCHAR(50),
    Research_Direction                    NVARCHAR(50),
    Registration_Status                   NVARCHAR(50),
    Payment_status                        NVARCHAR(50),
    degrees                               NVARCHAR(50),
    receive_academic_education            NVARCHAR(50),
    degree_status                         NVARCHAR(50),
    professional_degree_category                       NVARCHAR(50),
    Interdisciplinary_training            NVARCHAR(50),
    Interdisciplinary_training_discipline NVARCHAR(50),
    Date_of_degree_award                  DATE
);

CREATE TABLE AdmissionInfo
(
    StudentID            INT PRIMARY KEY,
    EnrollmentYear       INT,
    CandidateID         INT,
    ApplicationCategory NVARCHAR(20),
    CandidateSource     NVARCHAR(20),
    AdmissionCategory  NVARCHAR(20),
    ExaminationMethods NVARCHAR(20),
    ReturnStatus       NVARCHAR(20),
    RetentionQualificationYears INT,
    targetedTrainingUnits NVARCHAR(20),
    targetedTrainingUnitsPlace NVARCHAR(20),
    RecommendedUnit NVARCHAR(20),

    FinalGraduationSchool NVARCHAR(20),
    FinalGraduationSchoolName NVARCHAR(20),
    FinalGraduationMajor NVARCHAR(20),
    FinalGraduationMajorName NVARCHAR(20),
    LastDegreeUnit NVARCHAR(20),
    FinalGraduationCertificateNumber NVARCHAR(20),
    FinalEducation NVARCHAR(20),
    FinalDegree NVARCHAR(20),
    FinalGraduationDate NVARCHAR(20),
    FinalDegreeDate NVARCHAR(20),
    FinalAcademicLearningForm NVARCHAR(20)

        FOREIGN KEY (StudentID) REFERENCES BasicInfo (StudentID)
);
CREATE TABLE ExtensionInfo
(
    StudentID         INT PRIMARY KEY,
    WxID              nvarchar(20),
    QQID              nvarchar(20),
    Phone             nvarchar(20),
    Address           nvarchar(100),
    PostCode          nvarchar(10),
    StudyUnit         nvarchar(20),
    UnitPhone         nvarchar(20),
    UnitPostCode      nvarchar(10),
    UnitAddress       nvarchar(100),
    EmergencyContact  nvarchar(20),
    EmergencyPhone    nvarchar(20),
    EmergencyPostCode nvarchar(100),
    EmergencyAddress  nvarchar(100),
    DormitoryAddress  nvarchar(100),
    DormitoryPhone    nvarchar(20),
    technicalPosition nvarchar(20),
    AdministrativePositionLevel nvarchar(20),
    FamilyAddress     nvarchar(100),
    FamilyPostCode    nvarchar(10),
    FamilyPhone       nvarchar(20),
    FamilyContact     nvarchar(20),


    FOREIGN KEY (StudentID) REFERENCES BasicInfo (StudentID)
);
create table WorkExperience
(
    StudentID INT PRIMARY KEY,
    startTime DATE,
    endTime DATE,
    workUnit nvarchar(100),
    workCategory nvarchar(20),
    WorkPosition nvarchar(20),
    WorkDuty nvarchar(100),
    provePerson nvarchar(20),
    notes nvarchar(100),
    FOREIGN KEY (StudentID) REFERENCES BasicInfo (StudentID)
);

create table EducationExperience
(
    StudentID INT PRIMARY KEY,
    SchoolName nvarchar(100),
    startTime DATE,
    endTime DATE,
    major nvarchar(20),
    majorDescription nvarchar(100),
    degree nvarchar(20),
    degreeType nvarchar(20),
    graduatePosition nvarchar(20),
    RestTime nvarchar(20),
    IsGraduate nvarchar(20),
    FOREIGN KEY (StudentID) REFERENCES BasicInfo (StudentID)
);