table 50204 Reservation
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;ID; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "StartDate"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "EndDate"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "StartTime"; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "EndTime"; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Customer"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Customer";
        }
        field(7; "Parking Slot"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "ParkingSlot";
        }
        field(8; "Vehicule"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Vehicule";
        }
        field(9; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Reserved","Active","Expired";
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