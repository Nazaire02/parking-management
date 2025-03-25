table 50204 ParkingRecord 
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
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
        field(5; "EndTime"; Time)
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
                    Rec.ParkingZone := ParkingSlot."Parking Zone";
                end;
            end;
        }
        field(9; "ParkingSlot Name"; Text[100])
        {

        }
        field(10; "ParkingZone Name"; Text[100])
        {

        }
        field(11; "ParkingZone"; Integer)
        {

        }
        field(12; "Vehicule"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Vehicule";
        }
        field(13; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Active","Expired";
        }
        field(14; "Total Amount"; Decimal)
        {

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
    var
        StartDateTime: DateTime;
        EndDateTime: DateTime;
        TimeDifference: Duration;
    begin
        // StartDateTime := CreateDateTime(Rec."StartDate", Rec."StartTime");
        // EndDateTime := CreateDateTime(Rec."EndDate", Rec."EndTime");
        // TimeDifference := EndDateTime - StartDateTime;
        // Rec."Total Amount" := TimeDifference / 1000 / 60 / 60;
        // Message('Total Amount: %1', Rec."Total Amount");
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}