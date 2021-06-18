<html>
  <head>
    <title>03</title>
  </head>
  <body>
    <ol>
      {for $i in //book
      where $i/price>30
      order by $i/title
      return <li>{$i/title/text()}</li>}
    </ol>
  </body>
</html>

