# remove optional Attributes 
# File Format UTF-8
# remove isadID
s#isadId="."##g
s#isadId=".\.."##g

# remove origin
s#origin="[^"]*"##g

# remove obligation
s#obligation="[^"]*"##g

# remove archivalOrigin
s#archivalOrigin="[^"]*"##g

# remove Comment
s#<!--[^>]*-->##g

# remove Namespace isadg
s#<isadg:#<#g
s#</isadg:#</#g
s#xmlns:isadg=#xmlns=#

# clear additional Blanks
s#[ ]+>#>#g
s#[ ]+/>#/>#g

# remove empty Lines
/^[[:space:]]*$/d
