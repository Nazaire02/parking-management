page 50240 "ParkingRecord Card Add"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ParkingRecord;
    Caption = 'Ajouter un véhicule dans le parking';
    layout
    {
        area(Content)
        {
            group(Infos)
            {

                field("Parking Slot"; Rec."Parking Slot")
                {
                    ShowMandatory = true;
                    TableRelation = "ParkingSlot";
                    trigger OnValidate()
                    begin
                        ParkingSlot.Reset();
                        ParkingSlot.SetFilter(ID, '=%1', Rec."Parking Slot");
                        if (ParkingSlot.FindFirst() and (ParkingSlot.Status = ParkingSlot.Status::Occupied)) then begin
                            Error('Parking Slot is already occupied');
                        end;
                    end;
                }
                field(Customer; Rec.Customer)
                {
                    ShowMandatory = true;
                    TableRelation = "Customer";
                    Caption = 'Customer ID';

                    trigger OnValidate()
                    begin
                        Validation.RequiredParkingSlot(Rec."Parking Slot");
                    end;
                }
                field(StartDate; Rec.StartDate)
                {
                    ShowMandatory = true;
                    trigger OnValidate()
                    begin
                        Validation.RequiredParkingSlot(Rec."Parking Slot");
                    end;
                }
                field(StartTime; Rec.StartTime)
                {
                    ShowMandatory = true;
                    trigger OnValidate()
                    begin
                        Validation.RequiredParkingSlot(Rec."Parking Slot");
                    end;
                }
                field(Vehicule; Rec.Vehicule)
                {
                    ShowMandatory = true;
                    TableRelation = "Vehicule";
                    trigger OnValidate()
                    begin
                        Validation.RequiredParkingSlot(Rec."Parking Slot");
                    end;
                }
                field("Status"; Rec."Status")
                {
                    Editable = false;
                }
            }
        }
    }

    trigger OnClosePage()
    var
        myInt: Integer;
    begin
        ParkingSlot.Reset();
        ParkingSlot.SetFilter(ID, '=%1', Rec."Parking Slot");
        if (
            ParkingSlot.FindFirst()
        ) then begin
            Message('Parking Slot is now occupied');
            ParkingSlot.Status := ParkingSlot.Status::Occupied;
            ParkingSlot.Modify();
        end;
    end;

    var
        Validation: Codeunit "Validation";
        ParkingSlot: Record "ParkingSlot";
}