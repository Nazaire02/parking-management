page 50240 "ParkingRecord Card Add"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ParkingRecord;
    Caption = 'Ajouter un véhicule dans le parking';
    DeleteAllowed = false;

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

    actions
    {
        area(navigation)
        {
            action(Validate)
            {
                ApplicationArea = All;
                Caption = 'Valider';
                Image = Confirm;

                trigger OnAction()
                begin
                    ParkingSlot.Reset();
                    ParkingSlot.SetFilter(ID, '=%1', Rec."Parking Slot");
                    if (
                        ParkingSlot.FindFirst() and
                        (Rec.Customer <> '') and
                        (Rec.StartDate <> 0D) and
                        (Rec.StartTime <> 0T) and
                        (Rec.Vehicule <> '')
                    )
                    then begin
                        if Rec.Status = Rec.Status::"In Progress" then begin
                            Rec.Status := Rec.Status::Active;
                            ParkingSlot.Status := ParkingSlot.Status::Occupied;
                            ParkingSlot.Modify();
                        end;
                    end;
                end;
            }
        }
    }

    var
        Validation: Codeunit "Validation";
        ParkingSlot: Record "ParkingSlot";
}