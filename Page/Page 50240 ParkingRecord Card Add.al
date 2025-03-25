page 50240 "ParkingRecord Card Add"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ParkingRecord;
    Caption='Ajouter un véhicule dans le parking';
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
                field(StartTime;Rec.StartTime)
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