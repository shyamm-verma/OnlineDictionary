<!DOCTYPE html>
<html>
<head>
    <title>Online Dictionary - Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        h2 {
            margin-top: 30px;
            color: #555;
        }

        p {
            margin-top: 10px;
            color: #777;
        }

        .result-container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h1>Online Dictionary - Result</h1>
        <h2>Word: <%= request.getAttribute("word") %></h2>
        <p>Definition: <%= request.getAttribute("definition") %></p>
    </div>
</body>
</html>
