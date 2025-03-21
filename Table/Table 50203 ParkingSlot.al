table 50203 ParkingSlot
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Parking Zone"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "ParkingZone";
            trigger OnValidate()
            var
                Parking: Record "ParkingZone";
            begin
                Parking.SetFilter(Parking."ID", '=%1', Rec."Parking Zone");
                if Parking.FindFirst() then begin
                    rec."Parking Zone Name" := Parking.Name;
                end;
            end;
        }
        field(4; "Parking Zone Name"; Text[100])
        {
    
        }
        field(5; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Occupied","Available","Reserved";
        }
        field(6; "VehiculeType"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Car","Motorcycle","Bicycle","Truck";
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