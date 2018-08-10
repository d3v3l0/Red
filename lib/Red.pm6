use v6.d.PREVIEW;
use Red::Model;
use Red::AttrColumn;
use Red::Column;
use Red::Utils;
use Red::ResultSet;
use Red::DefaultResultSet;
use Red::AttrReferencedBy;
use Red::AttrQuery;
use Red::Filter;

my package EXPORTHOW {
    package DECLARE {
        use MetamodelX::Model;
        constant model = MetamodelX::Model;
    }
}

my package EXPORT::DEFAULT {
    use Red::Traits;
    use Red::Operators;
    for Red::Traits::EXPORT::ALL::.keys -> $key {
        OUR::{$key} := Red::Traits::EXPORT::ALL::{ $key }
    }
    for Red::Operators::EXPORT::ALL::.keys -> $key {
        OUR::{$key} := Red::Operators::EXPORT::ALL::{ $key }
    }
}
