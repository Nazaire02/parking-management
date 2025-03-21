page 50236 "ParkingSlot List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ParkingSlot;
    Caption = 'Liste des places de parking';
    ModifyAllowed = false;
    InsertAllowed = false;
    Editable = false;
    CardPageId = "ParkingSlot Card";

    layout
    {
        area(Content)
        {
            repeater(TableHeader)
            {
                field("Name";Rec.Name){}
                field("Parking name"; Rec."Parking Zone Name")
                {

                }
                field("Status"; Rec."Status")
                {
                }
                field("VehiculeType"; Rec."VehiculeType")
                {

                }
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