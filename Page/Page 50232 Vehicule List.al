page 50232 "Vehicule List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vehicule;
    Caption = 'Liste des véhicules';
    InsertAllowed = false;
    ModifyAllowed = false;
    CardPageId = "Vehicule Card";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(TableHeader)
            {
                field(Name; Rec.Name) { }
                field(Matricule; Rec.Matricule) { }
                field(Color; Rec.Color) { }
                field(Type; Rec.Type) { }
                field("Owner Name"; Rec."Vehicule Owner Name")
                {
                    Caption = 'Nom du propriétaire';
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
        //name: Text[100];
}