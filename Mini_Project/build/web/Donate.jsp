<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>

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
    <header style="background-image:url('Images/bg_5.jpg')">
        <div id="navContain">
            <nav>
                <div id="logo"></div>
                <ul>
                    <li><a href="index.jsp"><b>Why Us?</b></a> </li>
                    <li><a id="Active" href="Donate.jsp">Donate</a>

                    </li>
                    <li><a href="Sponsours.jsp">Contributors</a>


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
                <h1>There is no exercise better for the heart than reaching down and lifting people up</h1>
                <h6>John Holmes</h6>
            </div>
            <div>
                <h1 id="watchVideo">Watch Video</h1>
            </div>

        </div>

    </header>

    <section>
        <br><br>
        <div class="container">
            <form method="get" action="validateDonor.jsp">
                <label>Donation Amount</label>
                <input type="number" name="DonateAmt">

                <label>Your Name</label>
                <input type="text" name="DonorName">

                <label>PAN number</label>
                <input type="text" name="DonorPan">

                <label>Residential Address</label>
                <input type="text" name="DonateAddr">
                <input type="submit" value="Submit">
            </form>
        </div>

    </section>
    </footer>
    <footer>


</body>

</html>