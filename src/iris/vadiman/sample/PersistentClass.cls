Class vadiman.sample.PersistentClass Extends %Persistent
{

Property Test As %VarString;

ClassMethod CreateRecord(ByRef id As %Integer) As %Status
{
    set sc=$$$OK
    set objPC=..%New()
    set objPC.Test="Test string"
    set sc=objPC.%Save()
    set id=objPC.%Id()
    return sc
}

/// opens the record by id and reads its property
ClassMethod ReadProperty(id As %Integer) As %Status
{
    Set sc = $$$OK
    #dim obj as vadiman.sample.PersistentClass
    set obj=..%OpenId(id,,.sc)
    if $ISOBJECT(obj) write obj.Test
    Return sc
}

Storage Default
{
<Data name="PersistentClassDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Test</Value>
</Value>
</Data>
<DataLocation>^vadiman.saA26D.PersistentC1A93D</DataLocation>
<DefaultData>PersistentClassDefaultData</DefaultData>
<IdLocation>^vadiman.saA26D.PersistentC1A93D</IdLocation>
<IndexLocation>^vadiman.saA26D.PersistentC1A93I</IndexLocation>
<StreamLocation>^vadiman.saA26D.PersistentC1A93S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
