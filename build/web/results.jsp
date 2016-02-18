
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
        <link rel="stylesheet" href="css/styles.css" type="text/css" />   
    </head>
    
    <% 
        int hoursWorked = Integer.parseInt(request.getParameter("hoursWorked"));
        int payRate = Integer.parseInt(request.getParameter("payRate"));
        int preTaxDeduct = Integer.parseInt(request.getParameter("preTaxDeduct"));
        int postTaxDeduct = Integer.parseInt(request.getParameter("postTaxDeduct"));
        
        double taxablePay = 0;
        double taxAmount, otPay, grossPay = 0;
        double postTaxPay, netPay,regularPay, regularHours = 0;
        double otHours = 0;
        double otPayRate = 0; 
        
        
        
                if (hoursWorked > 40)
        {
            regularHours = 40;
            otHours = hoursWorked - 40;
            otPayRate = payRate * 1.5;
            otPay = otHours * otPayRate;
            regularPay = regularHours * payRate;
            grossPay = regularPay + otPay;
        }
        
            else 
            {
                grossPay = hoursWorked * payRate;
            }
           
        
        taxablePay = grossPay - preTaxDeduct;
       
                    
        if (grossPay < 500)
        {
            taxAmount = taxablePay * 0.18;
        }
        else 
        {
            taxAmount = taxablePay * 0.22;
        }
        
        
        postTaxPay = taxablePay - taxAmount;
        netPay = postTaxPay - postTaxDeduct;




    %>
    
    <body>
    <div class="form">  
        
        <h1>User Information</h1>
        
        <table border="1" align="center">
            <tbody>
                    <tr>
                        <td>Total Hours Worked:</td>
                        <td><%= hoursWorked %></td>
                    </tr>

                       <tr>
                        <td>Hourly Rate:</td>
                        <td><%= payRate %></td>
                    </tr>

                    <tr>
                        <td># Hours Overtime:</td>
                        <td><%= otHours %></td>
                    </tr>


                    <tr>
                        <td>Overtime Hourly Rate:</td>
                        <td><%= otPayRate %></td>
                    </tr>

                    <tr>
                        <td>Gross Pay:</td>
                          <td><%= grossPay %></td>
                    </tr>

                     <tr>
                        <td>Pre-tax Deduct:</td>
                          <td><%= preTaxDeduct %></td>
                    </tr>


                    <tr>
                        <td>Pre-tax Pay:</td>
                        <td><%= grossPay %></td>
                    </tr>

                     <tr>
                        <td>Tax Amount:</td>
                        <td><%= taxAmount %></td>
                     </tr>

                    <tr>
                        <td>Post-tax Pay:</td>
                        <td><%= postTaxPay %></td>
                    </tr>

                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><%= postTaxDeduct %></td>
                    </tr>

                    <tr>
                        <td>Net Pay:</td>
                        <td><%= netPay %></td>       
                    </tr> 
            </tbody>   
        </table>
    </div>  
                    
                    <p>  Click here (<a href="index.jsp" title="navigate to main page in same directory">Salary Calculator</a>) to navigate back to my homepage.  </p>   
                    
    </body>
</html>
