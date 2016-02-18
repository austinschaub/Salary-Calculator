

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylesheet.css" media="screen" rel="stylesheet" type="text/css" /> 
        
        <title>Salary Calculation</title>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        
    <div class="salaryForm">
        <form name="Salary Form" action="results.jsp" method="post"> 
            <table>
                <tbody>
                    
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hoursWorked" value="" size="50"></td> 
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="payRate" value="" size="50"></td> 
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct: </td>
                        <td><input type="text" name="preTaxDeduct" value="" size="50"></td> 
                    </tr>
                     
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="postTaxDeduct" value="" size="50" required></td> 
                    </tr>
                   
                            <tr>
                                <td>&nbsp;</td> <td>&nbsp;</td>
                            </tr>
                    
                </tbody>
            </table>
    
               
            <br><br>
        
            <input type="reset" value="Clear" id="clear"> 
            <input type="submit" value="Submit" id="submit"> 
            
        </form>
        
      </div>
        
        
        
    </body>
</html>
