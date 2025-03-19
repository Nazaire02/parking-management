page 50232 "Vehicule List"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vehicule;
    Caption = 'Liste des véhicules';
    InsertAllowed = false;
    ModifyAllowed = true;
    CardPageId="Vehicule Card";
    
    layout
    {
        area(Content)
        {
            repeater(TableHeader){
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