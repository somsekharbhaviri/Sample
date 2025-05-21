<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot MVC SDP Project</title>
    <style>
        body {
            background-color: #eef2f7;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h2 {
            text-align: center;
            font-size: 32px;
            color: #333;
            margin-top: 20px;
        }

        /* Advanced Navbar Design */
        .navbar {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 15px 0;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364); /* Dark gradient for depth */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3); /* Deep shadow */
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            position: relative;
            margin: 0 20px;
            color: #fff;
            font-weight: bold;
            font-size: 18px;
            text-transform: uppercase;
            text-decoration: none;
            letter-spacing: 1px;
            padding: 12px 20px;
            overflow: hidden;
            transition: color 0.4s ease, transform 0.4s ease;
        }

        /* Neon effect on hover */
        .navbar a:hover {
            color: black; /* Highlight color */
            text-shadow: 0 0 10px #f7bc08, 0 0 20px #f7bc08, 0 0 30px #f7bc08;
        }

        /* Sliding background effect */
        .navbar a::before {
            content: '';
            position: absolute;
            top: 100%;
            left: -50%;
            width: 200%;
            height: 5px;
            background: linear-gradient(45deg, #f7bc08, #f39c12);
            transition: top 0.4s ease, left 0.4s ease;
        }

        .navbar a:hover::before {
            top: 95%;
            left: 0%;
        }

        /* Glowing border effect */
        .navbar a::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: 2px solid rgba(255, 255, 255, 0.3);
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
            opacity: 0;
            transition: opacity 0.4s ease, box-shadow 0.4s ease;
        }

        .navbar a:hover::after {
            opacity: 1;
            box-shadow: 0 0 15px rgba(247, 188, 8, 0.7), 0 0 25px rgba(243, 156, 18, 0.7);
        }

        /* Navbar Hover Zoom and Scale */
        .navbar a:hover {
            transform: scale(1.1);
        }

        /* Responsive Navbar */
        @media screen and (max-width: 768px) {
            .navbar {
                flex-direction: column;
            }

            .navbar a {
                margin: 10px 0;
            }
        }

        
    </style>
</head>
<body>
    <h2>Spring Boot MVC SDP Project</h2>
    <div class="navbar">
        <a href="/">Home</a>
        <a href="empreg">Employee Registration</a>
        <a href="emplogin">Employee Login</a>
        <a href="adminlogin">Admin Login</a>
    </div>
   
</body>
</html>
