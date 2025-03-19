tableextension 50200 Driver extends Customer
{
    fields
    {
        field(50100; "Type d'abonnement"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers =Standard, Premium, Gold;
        }
    }
    
    keys
    {
        // Add changes to keys here
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
}