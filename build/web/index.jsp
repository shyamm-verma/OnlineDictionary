<!DOCTYPE html>
<html>
<head>
    <title>Online Dictionary</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
        }

        form {
            text-align: center;
            margin-top: 30px;
        }

        input[type="text"] {
            padding: 10px;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 4px;
            outline: none;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            border: none;
            color: white;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Online Dictionary</h1>
    <form action="search.jsp" method="GET">
        <input type="text" name="word" placeholder="Enter a word">
        <input type="submit" value="Search">
    </form>
</body>
</html>
