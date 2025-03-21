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
                    trigger OnValidate()
                    var
                        ParkingSlot: Record "ParkingSlot";
                    begin
                        ParkingSlot.SetFilter(ParkingSlot."Parking Zone", '=%1', Rec."Parking Zone");

                        if (ParkingSlot.Count >= parkingCapacity) then begin
                            Error('Vous avez atteint la capacité maximale de cette zone de parking');
                        end
                    end;
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

    trigger OnOpenPage()
    var
        ParkingZone: Record "ParkingZone";
    begin
        ParkingZone.SetFilter(ID, '=%1', Rec."Parking Zone");
        if ParkingZone.FindFirst() then begin
            parkingCapacity := ParkingZone.Capacity;
        end;
    end;


    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        currentAmountSlot: Integer;
        ParkingZone: Record "ParkingZone";
        ParkingSlot: Record "ParkingSlot";
    begin
        ParkingSlot.SetFilter(ParkingSlot."Parking Zone", '=%1', Rec."Parking Zone");
        ParkingZone.SetFilter(ID, '=%1', Rec."Parking Zone");

        if ParkingZone.FindFirst() then begin
            parkingCapacity := ParkingZone.Capacity;

            if (ParkingSlot.Count >= parkingCapacity) then begin
                Error('Vous avez atteint la capacité maximale de cette zone de parking');
            end
        end;
    end;

    var
        parkingCapacity: Integer;
}