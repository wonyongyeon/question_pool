<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Naver Blog Searching</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Lobster&display=swap');
    @import url('https://fonts.googleapis.com/icon?family=Material+Icons');

    body {
      background: #e2e1e0;
      text-align: center;
    }
    .container {
      background: #fff;
      margin: 30px auto;
      border-radius: 2px;
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.19), 0 6px 6px rgba(0, 0, 0, 0.23);
      width: 60%;
      min-height: 90vh;
      display : flex;
      flex-direction: column;
      align-content: center;
    }
    .search-header {
      display: block;
      font-family: "lobster";
      font-size: 40px;
      margin-top : 30px;
    }
    .search-header a{
      text-decoration: none;
      color : black;
    }
    .search-result{
      border-radius : 6px;
      background-color: #fafafa;
      border : 1px solid #e0e0e0;
      margin : 30px 50px;
      padding : 20px 20px;
      text-align : left;
    }
    .title{
      margin-bottom : 10px;
    }
    .title a{
      text-decoration: none;
      color : black;
    }
    .description{
      font-size: 14px;
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="search-header"><a href="/">Search Topics</a></div>
    <div clas="search-content">
      {% for item in items %}
        <div class="search-result">
          <div class="title">
            <a href={{item.link}}><strong>{{item.title}}</strong></a>
          </div>
          <div class="description">
            {{item.description}}
          </div>
        </div>
      {% endfor %}
    </div>
  </div>
</body>

</html>