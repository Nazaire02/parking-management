page 50247 "ParkingRecord Active List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ParkingRecord;
    CaptionML = ENU = 'Tracks active parking', FRA = 'Suivi des stationnement en cours';
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(TableHeader)
            {
                field(ID; Rec.ID)
                {
                    Editable = false;
                }
                field(Customer; Rec.Customer)
                {
                    TableRelation = "Customer";
                    Caption = 'Customer ID';
                    Editable = false;
                }
                field(StartDate; Rec.StartDate)
                {
                    Editable = false;
                }
                field(StartTime; Rec.StartTime)
                {
                    Editable = false;
                }
                field(EndDate; Rec.EndDate)
                {
                }
                field(EndTime; Rec.EndTime)
                {
                }
                field("ParkingSlot Name"; Rec."ParkingSlot Name")
                {
                    Editable = false;
                }
                field("ParkingZone Name"; Rec."ParkingZone Name")
                {
                    Editable = false;
                }
                field(Vehicule; Rec.Vehicule)
                {
                    TableRelation = "Vehicule";
                    Editable = false;
                }
                field("Status"; Rec."Status")
                { }
            }
        }
    }

    trigger OnOpenPage()
    var
    begin
        Rec.SetFilter(Status, '=%1', Rec.Status::"Active");
    end;

    trigger OnClosePage()
    var
        StartDateTime: DateTime;
        EndDateTime: DateTime;
        TimeDifference: Duration;
        ParkingZone: Record "ParkingZone";
        ParkingSlot: Record "ParkingSlot";
        TotalDays: Integer;
        TotalHours: Integer;
        TotalMinutes: Integer;
        toPaid: Decimal;
    begin
        if (Rec.StartDate <> 0D) and (Rec.EndDate <> 0D) and (Rec.StartTime <> 0T) and (Rec.EndTime <> 0T) then begin
            StartDateTime := CreateDateTime(Rec.StartDate, Rec.StartTime);
            EndDateTime := CreateDateTime(Rec.EndDate, Rec.EndTime);
            TimeDifference := EndDateTime - StartDateTime;

            TotalDays := TimeDifference div (1000 * 60 * 60 * 24);
            TotalHours := (TimeDifference mod (1000 * 60 * 60 * 24)) div (1000 * 60 * 60);
            TotalMinutes := (TimeDifference mod (1000 * 60 * 60)) div (1000 * 60);

            if TotalMinutes >= 25 then begin
                TotalHours := TotalHours + 1;
            end;

            ParkingZone.SetFilter(ID, '=%1', Rec."ParkingZone");
            if ParkingZone.FindFirst() then begin
                toPaid := TotalHours * ParkingZone.HourlyRate + TotalDays * ParkingZone.DailyRate;
                Rec."Total Amount" := toPaid;
                Rec.Status := Rec.Status::"Expired";
                Rec.Modify(true);
            end;

            ParkingSlot.SetFilter(ID, '=%1', Rec."Parking Slot");
            if ParkingSlot.FindFirst() then begin
                ParkingSlot.Status := ParkingSlot.Status::"Available";
                ParkingSlot.Modify(true);
                //Report.Run(50203, true, false, Rec);
            end;
            Message('Total Amount: %1', toPaid);
        end;
    end;
}