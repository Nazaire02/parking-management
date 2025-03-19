page 50233 "Vehicule card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vehicule;
    Caption = 'Ajouter un véhicule';
    
    layout
    {
        area(Content)
        {
            group("Vehicule Informations")
            {
                field(ID;Rec.ID)
                {   }
                field(Name;Rec.Name){}
                field(Matricule;Rec.Matricule){}
                field(Color;Rec.Color){}    
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