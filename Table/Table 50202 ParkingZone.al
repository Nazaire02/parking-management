table 50202 ParkingZone
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Location"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Capacity"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Open","Closed","Maintenance";
        }
        field(6; "HourlyRate"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "DailyRate"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "MonthlyRate"; Integer)
        {
            DataClassification = ToBeClassified;
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