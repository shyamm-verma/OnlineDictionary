<%@ page import="java.io.IOException" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.util.Scanner" %>
<%@ page import="org.json.JSONArray" %>
<%@ page import="org.json.JSONObject" %>

<%
    // API endpoint
    String apiUrl = "https://api.dictionaryapi.dev/api/v2/entries/en/";

    // Get user input
    String word = request.getParameter("word");
    if (word == null || word.trim().isEmpty()) {
        response.sendRedirect("index.jsp");
        return;
    }

    // Make API request
    String apiUrlWithParams = apiUrl + word;
    URL url = new URL(apiUrlWithParams);
    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
    conn.setRequestMethod("GET");

    // Read API response
    InputStream inputStream = conn.getInputStream();
    Scanner scanner = new Scanner(inputStream, StandardCharsets.UTF_8.name());
    String apiResponse = scanner.useDelimiter("\\A").next();
    scanner.close();

    // Parse JSON response
    JSONArray jsonArray = new JSONArray(apiResponse.trim());
    JSONObject json = jsonArray.getJSONObject(0);
    JSONArray meaningsArray = json.getJSONArray("meanings");
    JSONObject meanings = meaningsArray.getJSONObject(0);
    JSONArray definitionsArray = meanings.getJSONArray("definitions");
    JSONObject definitionObj = definitionsArray.getJSONObject(0);
    String definition = definitionObj.getString("definition");

    // Display the result
    request.setAttribute("word", word);
    request.setAttribute("definition", definition);
    request.getRequestDispatcher("result.jsp").forward(request, response);
%>
