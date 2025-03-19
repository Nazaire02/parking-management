table 50203 ParkingSlot
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;ID; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Parking Zone"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "ParkingZone";
        }
        field(3; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Occupied","Available","Reserved";
        }
        field(4; "VehiculeType"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Car","Motorcycle","Bicycle", "Truck";
        }
    }
    
    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}