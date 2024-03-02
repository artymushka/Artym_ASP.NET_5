<%

Dim value, expiry_date
value = Request.Form("value")
expiry_date = Request.Form("expiry_date")


Dim fs, f
Set fs = Server.CreateObject("Scripting.FileSystemObject")
Set f = fs.OpenTextFile(Server.MapPath("data.txt"), 8, True)


f.WriteLine("Value: " & value)
f.WriteLine("Expiry Date: " & expiry_date)
f.WriteLine("---------------------------")


f.Close()


Response.Redirect("display_data.html")
%>
