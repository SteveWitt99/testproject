<%@ language="VBScript" %>
<%
  Option Explicit
  
  Dim objASPError, blnErrorWritten, strServername, strServerIP, strRemoteIP
  
  If Response.Buffer Then
    Response.Clear
    Response.Status = "Server Error"
    Response.ContentType = "text/html"
    Response.Expires = 0
  End If

  Set objASPError = Server.GetLastError

  Response.Write "<html><body>"
  Response.Write "<table align=center><tr><td><h3>An unexpected error has occurred!</h3></td></tr>"
  Response.Write "<tr><td><i>This may be due to resource unavailability or a technical glitch."
  Response.Write "<br>The problem has been logged and the support team has been notified via e-mail." 
  Response.Write "<br><br>Please try your request again. We are sorry for any inconvenience this may have caused you."
  Response.Write "</i></td></tr></table>"

  Dim strErrorDescription
  
  strErrorDescription = "Category=" & objASPError.Category & vbCrLf
  
  If objASPError.ASPCode <> "" Then
    strErrorDescription = strErrorDescription & "Code=" & objASPError.ASPCode & vbCrLf
  End If
  
  strErrorDescription = strErrorDescription & "Number=(0x" & Hex(objASPError.Number) & ")" & vbCrLf
  
  strErrorDescription = strErrorDescription & "Description=" & objASPError.Description & vbCrLf
  
  If objASPError.ASPDescription <> "" Then 
    strErrorDescription = strErrorDescription & "ASP Error Description=" & objASPError.Description
  End If
  
  blnErrorWritten = False

  strServername = LCase(Request.ServerVariables("SERVER_NAME"))
  strServerIP = Request.ServerVariables("LOCAL_ADDR")
  strRemoteIP =  Request.ServerVariables("REMOTE_ADDR")

  If objASPError.Source <> "" Then
  
    strErrorDescription = strErrorDescription & "File=" & objASPError.File & "<br>" & vbCrLf

    If objASPError.Line > 0 Then
      strErrorDescription = strErrorDescription & "Line=" & objASPError.Line & "<br>" 
    End If

    If objASPError.Column > 0 Then
       strErrorDescription = strErrorDescription & ", Column= " & objASPError.Column & "<br>" 
    End If

    strErrorDescription = strErrorDescription & "<br>" & vbCrLf

    strErrorDescription = strErrorDescription & "Code:" & vbCrLf & Server.HTMLEncode(objASPError.Source) & "<br>" & vbCrLf
  
    If objASPError.Column > 0 Then
      strErrorDescription = strErrorDescription & String((objASPError.Column - 1), "-") & "^" & "<br>" & vbCrLf
    End If

    blnErrorWritten = True
  
  End If

  If Not blnErrorWritten And objASPError.File <> "?" Then
    
    strErrorDescription = strErrorDescription & vbCrLf & "Filename=" & objASPError.File & "<br>" & vbCrLf
    
    If objASPError.Line > 0 Then 
      strErrorDescription = strErrorDescription & "Number=" & objASPError.line
    End If
    
    If objASPError.Column > 0 Then
      strErrorDescription = strErrorDescription & ", Column=" & objASPError.Column
    End If
    
    strErrorDescription = strErrorDescription & "<br>" & vbCrLf

  End If

  Dim objMail, strBody
  
'  Set objMail = Server.CreateObject("CDO.Message")
  Set objMail = Server.CreateObject("SMTPsvg.Mailer") 
 
  objMail.RemoteHost = "smtp.summy.com"

'  objMail.From = "iis@summy.com"
  objMail.FromName = "iis@summy.com"
  objMail.FromAddress = "iis@summy.com"

'  objMail.To ="tony@summy.com"
  objMail.AddRecipient "tony@summy.com", "tony@summy.com"

  objMail.Subject = "ASP Central Error Handler"
  
  strBody = "An error occured "
  
  If strServername <> "" Then strBody = strBody & " on server=" & strServername
  If strServerIP <>"" Then strbody = strbody & " IP Address=" & strServerIP
  If strRemoteIP <>"" Then strbody = strbody & " Client IP=" & strRemoteIP
  
  strBody = strBody & " at " & Now() & "<br>" & vbCrLf
  strBody = strBody & "BrowserType=" & Request.ServerVariables("HTTP_USER_AGENT") & "<br>" & vbCrLf
  strbody = strbody & "Method=" & Request.ServerVariables("REQUEST_METHOD") & "<br>" & vbCrLf & strErrorDescription & "<br>" & vbCrLf
  
'  objMail.HTMLBody = strBody
  objMail.BodyText = strBody

'  objMail.Send
  objMail.SendMail

  Set objMail = Nothing

  Response.Write "Body: " & strBody & "</body></html>"
  
  Response.End
%>

