table 50221 Vehicule
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"ID"; Integer)
        {
            DataClassification = ToBeClassified;  
            AutoIncrement = true;
        }
        field(2;"Name"; Text[50])
        {
            DataClassification = ToBeClassified;  
        }
        field(3;"Matricule"; Text[50])
        {
            DataClassification = ToBeClassified;
            
        }
        field(4;"Color"; Text[50])
        {
            DataClassification = ToBeClassified;
            
        }
        field(5;"Type"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(6;"Vehicule owner"; Code[20])
        {
            CaptionML = ENU='Vehicule owner', FRA='Propriétaire du véhicule';
            TableRelation = "Customer";

            trigger OnValidate()
            var
                Customer: Record "Customer";
            begin
                Customer.SetFilter(Customer."No.", '=%1', Rec."Vehicule owner");
                if Customer.FindFirst() then begin
                    rec."Vehicule owner Name" := Customer.Name;
                end;
            end;
        }
        field(7;"Vehicule owner Name"; Text[50])
        {
        }
    }
    
    keys
    {
        key(Key1; "ID")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}