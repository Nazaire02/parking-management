page 50231 "Driver Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;
    Caption = 'Ajouter un nouveau chauffeur';
    
    layout
    {
        area(Content)
        {
            group("Infos générales")
            {
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