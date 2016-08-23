<%-- 
    Document   : alertEmail
    Created on : May 29, 2016, 10:03:50 PM
    Author     : satheesh
--%>

<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%
 
    //username for abc@gmail.com will be "abc"
    String username = "smsaselv";
    String password = "Amma1990";
    String result = null;
 
    try {
         
        Properties props = System.getProperties();
        props.setProperty("mail.transport.protocol", "smtp");
        props.setProperty("mail.host", "unimail.tu-dortmund.de");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "993");
        props.put("mail.debug", "true");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false");
 
        Session emailSession = Session.getInstance(props,new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("smsaselv","Amma1990");
                }
        });
 
        emailSession.setDebug(true);
        Message message = new MimeMessage(emailSession);
        message.setFrom(new InternetAddress("satheesh.selvanathan@tu-dortmund.de"));
        message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse("satheesh.retros@gmail.com"));
        message.setSubject("MINIS Failure");
        message.setText("One or many of the Modules of the MINIS system encountered an error or Hardware failure");
 
        Transport transport = emailSession.getTransport("smtps");
        transport.connect("unimail.tu-dortmund.de", username, password);
        transport.sendMessage(message, message.getAllRecipients());
 
        result = "Sent an Alert Email";
 
       } catch (MessagingException e) {
        result = "Unable to send email";
    }
%>
<html>
<head>
<title>Send Email using JSP</title>
</head>
<body>
    <center>
        <h1>MINIS Failure Alert Email</h1>
    </center>
    <p align="center">
        <%
            out.println("Result: " + result + "\n");
        %>
    </p>
</body>
</html>