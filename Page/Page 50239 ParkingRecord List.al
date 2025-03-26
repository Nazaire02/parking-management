page 50239 "ParkingRecord List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ParkingRecord;
    CaptionML = ENU = 'Tracks each parking session', FRA = 'Suivi de chaque session de stationnement';
    CardPageId = "ParkingRecord Card Add";
    Editable = false;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(TableHeader)
            {
                field(ID; Rec.ID)
                {
                }
                field(Customer; Rec.Customer)
                {
                    TableRelation = "Customer";
                    Caption = 'Customer ID';
                }
                field(StartDate; Rec.StartDate)
                {
                }
                field(EndDate; Rec.EndDate)
                {
                }
                field(StartTime; Rec.StartTime)
                {
                }
                field(EndTime; Rec.EndTime)
                {
                }
                field("ParkingSlot Name";Rec."ParkingSlot Name")
                {
                }
                field("ParkingZone Name";Rec."ParkingZone Name")
                {
                }
                field(Vehicule; Rec.Vehicule)
                {
                    TableRelation = "Vehicule";
                }
                field("Status"; Rec."Status")
                { }
                field("Total Amount"; Rec."Total Amount")
                { }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}