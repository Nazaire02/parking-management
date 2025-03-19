page 50232 "Vehicule List"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vehicule;
    Caption = 'Liste des véhicules';
    InsertAllowed = false;
    ModifyAllowed = true;
    CardPageId = "Vehicule Card";

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
                field("Vehicule owner"; Rec."Vehicule owner")
                {
                    TableRelation = "Customer";
                    trigger OnValidate()
                    var
                        owner: Record "Customer";
                    begin
                        owner.SetFilter(owner."No.", '=%1', Rec."Vehicule owner");
                        if owner.FindFirst() then begin
                            name := owner.Name;
                        end;
                    end;
                }

                field("Nom du propriétaire"; name)
                {


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
        name: Text[100];
}