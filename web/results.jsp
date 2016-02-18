
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
    </head>
    
    <% 
        String firstName = request.getParameter("First");
        String lastName = request.getParameter("Last");
        String email = request.getParameter("Email");  
        int age = Integer.parseInt(request.getParameter("Age"));
        int agePlusOne = age + 1;
        String gender = request.getParameter("Gender");  
        String state = request.getParameter("State");
        

    %>
    
    <body>
        <h1>User Information</h1>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>First Name:</td>
                    <td><%= firstName %></td>
                </tr>
                
                   <tr>
                    <td>Last Name:</td>
                    <td><%= lastName %></td>
                </tr>
                
                <tr>
                    <td>Email:</td>
                    <td><%= email %></td>
                </tr>
                
                
                <tr>
                    <td>User Age:</td>
                    <td><%= age %></td>
                </tr>
                
                <tr>
                    <td>Your Age in one year!</td>
                      <td><%= agePlusOne %></td>
                </tr>
                
                 <tr>
                    <td>Gender:</td>
                      <td><%= gender %></td>
                </tr>
                
                
                <tr>
                    <td>State:</td>
                    <td><%= state %></td>
                </tr>
                
                 <tr>
                    <td>This class:</td>
                        <td><%
                                String[] eval;

                                    eval = request.getParameterValues("eval");

                                    if (eval != null)
                                    {    
                                        for (int i=0; i<eval.length; i++)
                                        {
                                            out.println(" " + eval[i] + " ");
                                        }
                                    }
                                    else
                                        out.println("none");

                            %></td>
                        
                        
                        <tr>
                            
                    <td>Pets:</td>
                        <td><%
                                String[] myPets;

                                    myPets = request.getParameterValues("pet");

                                    if (myPets != null)
                                    {    
                                        for (int i=0; i<myPets.length; i++)
                                        {
                                            out.println(" " + myPets[i] + " ");
                                        }
                                    }
                                    else
                                        out.println("none");

                            %></td> 
                        
                        
                </tr>
                
            </tbody>
            
            
            
        </table>
        
      
    </body>
</html>
