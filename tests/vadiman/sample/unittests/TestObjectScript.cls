Class vadiman.sample.unittests.TestObjectScript Extends %UnitTest.TestCase
{

Method Test42()
{
	Set tExpected=42
    set tResults= ##class(vadiman.sample.ObjectScript).Test()
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

}
