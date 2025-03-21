page 50234 "ParkingZone List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ParkingZone;
    Caption = 'Liste des zones de stationnement';
    InsertAllowed = false;
    ModifyAllowed = false;
    Editable = false;
    CardPageId="ParkingZone Card";
    
    layout
    {
        area(Content)
        {
            repeater(TableHeader){
                field(Name;Rec.Name)
                {
                    
                }
                field(Location;Rec.Location)
                {
                    
                }
                field(Capacity;Rec.Capacity)
                {
                    
                }
                field(Status;Rec.Status){}
                field(HourlyRate;Rec.HourlyRate){
                }
                field(DailyRate;Rec.DailyRate){
                }
                field(MonthlyRate;Rec.MonthlyRate){}
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