page 50239 "Reservation List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Reservation;
    CaptionML = ENU = 'Reservation List', FRA = 'Liste des réservations';
    CardPageId = "Reservation Card";

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
                field("Parking Slot"; Rec."Parking Slot")
                {
                    TableRelation = "ParkingSlot";
                }
                field(Vehicule; Rec.Vehicule)
                {
                    TableRelation = "Vehicule";
                }
                field("Status"; Rec."Status")
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