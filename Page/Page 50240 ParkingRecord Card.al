page 50240 "ParkingRecord Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ParkingRecord;
    Caption='Reserver une place de parking';
    layout
    {
        area(Content)
        {
            group(Infos)
            {
                field(Customer;Rec.Customer)
                {
                    TableRelation = "Customer";
                    Caption = 'Customer ID';
                }
                field(StartDate;Rec.StartDate)
                {
                }
                field(EndDate;Rec.EndDate)
                {
                }
                field("Parking Slot";Rec."Parking Slot")
                {
                    TableRelation = "ParkingSlot";
                }
                field(Vehicule;Rec.Vehicule)
                {
                    TableRelation = "Vehicule";
                }
                field("Status";Rec."Status")
                {
                    Editable = false;
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