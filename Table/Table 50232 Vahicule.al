table 50221 Vehicule
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"ID"; Code[20])
        {
            DataClassification = ToBeClassified;  
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