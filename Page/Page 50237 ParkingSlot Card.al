page 50237 "ParkingSlot Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ParkingSlot;
    Caption = 'Nouvelle place de parking';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Name"; Rec.Name)
                {
                }
                field("Parking Zone"; Rec."Parking Zone")
                {
                    TableRelation = "ParkingZone";
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

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        currentAmountSlot: Integer;
        ParkingZone: Record "ParkingZone";
        ParkingSlot: Record "ParkingSlot";
    begin
        ParkingSlot.SetFilter(ParkingSlot."Parking Zone", '=%1', Rec."Parking Zone");
        ParkingZone.SetFilter(ParkingZone.ID, '%=1', Rec."Parking Zone");
        if (ParkingSlot.Count >= ParkingZone.Capacity) then begin
            Error('Vous avez atteint la capacité maximale de cette zone de parking %1', ParkingZone.Name);
        end;
    end;
}