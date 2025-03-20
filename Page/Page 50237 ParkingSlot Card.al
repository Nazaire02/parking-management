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
                field(ID;Rec.ID)
                {
                    
                }
                field("Parking Zone";Rec."Parking Zone"){
                    TableRelation = "ParkingZone";
                }
                field("Status";Rec."Status"){
                }
                field("VehiculeType";Rec."VehiculeType"){
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