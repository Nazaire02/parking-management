
page 50230 "Driver List"
{
    Caption='List des propriétaires de véhicule';
    PageType = List;
    CardPageId="Driver Card";
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(TableHeader){
                field(Name;Rec.Name)
                {
                    
                }
                field("Type d'abonnement";Rec."Type d'abonnement")
                {
                    
                }
                field(Address;Rec.Address){}
                field(City;Rec.City){}
                field("E-Mail";Rec."E-Mail"){}
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