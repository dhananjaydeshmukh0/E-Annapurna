 
<!DOCTYPE html>
<html>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.sql.*,java.util.*"%>
<%  
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo", "root", "");
Statement st=conn.createStatement();%>

<head>
    <meta charset="UTF-8">
    <link href="style.css" rel="stylesheet" type="text/css">
    <link href="extra.css" rel="stylesheet" type="text/css">
    <title>
        E Annapurna
    </title>
    <script>


    </script>

</head>

<body>
    <header style="background-image: url('Images/bg_6.jpg')">
        <div id="navContain">
            <nav>
                <div id="logo"></div>
                <ul>
                    <li><a href="index.jsp"><b>Why Us?</b></a> </li>
                    <li><a href="Donate.jsp">Donate</a>

                    </li>
                    <li><a id="Active" href="Sponsours.jsp">Contributors</a>


                    </li>
                    <li><a href="Volunteers.jsp">Join Us</a>

                    </li>
                    <li><a href="contact.jsp">Contact Us</a> </li>
                    <li><a href="request.jsp">Request Food</a> </li>
                </ul>

            </nav>
        </div>

        <div id="qouteArea">
            <div id="qoute">
                <h1>Doing Nothing is Not An Option of Our Life</h1>
            </div>
            <div>
                <h1 id="watchVideo">Watch Video</h1>
            </div>

        </div>

    </header>

    <section>
        <br><br>
        <div class="container">
            <form action="validateSponsours.jsp">
              <label>Individual / Organization Name</label>
              <input type="text" id="fname" name="spn_nm" placeholder="Organization/Individual"><br><br>


              <label>What is the Partnering entity?</label>
              <select id="PartneringEntity" name="whatentry">
                <option value="Restaurant">Restaurant</option>
                <option value="Hospital">Hospital</option>
                <option value="RWA">RWA</option>
                <option value="EventCaterer">Event Caterer</option>
                <option value="Factory">Factory</option>
                <option value="Hotel">Hotel</option>
                <option value="Individual">Individual</option>
                <option value="College_School">College/ School</option>
                <option value="SocialGroup">SocialGroup</option>
                <option value="Mess">Cooked Food supplier/ Mess/ Cantin</option>

            </select><br><br>

            <label>How do you want to Partner? </label><br>
            <script type="text/javascript">

                function  call1() {
                    if( document.getElementById("food").checked)
                    {
                        document.getElementById("foodQ").style.display = "block";
                    }
                    else
                    {
                        document.getElementById("foodQ").style.display = "none";
                    }
                }
                function  call2() {
                    if( document.getElementById("rawgrain").checked)
                    {
                        document.getElementById("rawQ").style.display = "block";
                    }
                    else
                    {
                        document.getElementById("rawQ").style.display = "none";
                    }
                }
                function  call3() {
                    if( document.getElementById("fund").checked)
                    {
                        document.getElementById("fundQ").style.display = "block";
                    }
                    else
                    {
                        document.getElementById("fundQ").style.display = "none";
                    }
                }
            </script>
            <input name="food" id="food" type="checkbox" onchange="call1()"><label>Donate Food</label><br>
            <input style="display: none;" type="number" placeholder="Food Amount (Kg)" id="foodQ" name="foodQ">

            <input name="rawgrain"  id="rawgrain" type="checkbox" onchange="call2()"><label>Donate Raw Grains</label><br>
            <input style="display: none;" type="number" placeholder="Raw Amount (Kg)" id="rawQ" name="rawQ">

            <input name="fund" id="fund" type="checkbox" onchange="call3()"><label>Donate Funds to support the Project </label>
            <input style="display: none;" type="number" placeholder="Fund ($)" id="fundQ" name="fundQ">

            <br><br>


            <label>Contact No</label>
            <input type="number" id="contact" name="phnno" placeholder="Your Contact no."><br><br>

            <label>Email</label>
            <input type="email" id="email" name="email" placeholder="Your Email"><br><br>

           <!--  <label>Designation/ Your Role</label>
            <input type="text" id="lname" name="designation" placeholder="Your Designation/ Your Role.."><br><br -->

            <label>Area</label>
            <select id="Area" name="area">
             <%  
             
             ResultSet result = null;
             result = st.executeQuery("select * from area");
             while(result.next())
                {
                    %>
                    <option value="<%=result.getString("AreaID")%>"><%=result.getString("areaName") %></option>    
                    <%}%>
                </select>
                <br><br>
                <input type="submit" value="Submit">

            </form>
        </div>

    </section>
    <footer>
    </footer>


</body>


</html>