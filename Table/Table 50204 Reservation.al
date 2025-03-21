table 50204 Reservation
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
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
        field(5; "EndTime"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Customer"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Customer";

            trigger OnValidate()
            var
                Customer: Record "Customer";
            begin
                Customer.SetFilter(Customer."No.", '=%1', Rec."Customer");
                if Customer.FindFirst() then begin
                                    Rec."Customer Name" := Customer.Name;
                end;
            end;
        }
        field(7; "Customer Name"; Text[100])
        {
            
        }
        field(8; "Parking Slot"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "ParkingSlot";

            trigger OnValidate()
            var
                ParkingSlot: Record ParkingSlot;
            begin
                ParkingSlot.SetFilter(ParkingSlot.ID, '=%1', Rec."Parking Slot");
                if ParkingSlot.FindFirst() then begin
                    Rec."ParkingSlot Name" := ParkingSlot.Name;   
                    Rec."ParkingZone Name" := ParkingSlot."Parking Zone Name";
                end;
            end;
        }
        field(9;"ParkingSlot Name"; Text[100])
        {
            
        }
        field(10;"ParkingZone Name"; Text[100])
        {
            
        }
        field(11; "Vehicule"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Vehicule";
        }
        field(12; "Status"; Option)
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