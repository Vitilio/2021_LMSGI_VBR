<html>
  <head>
    <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
  </head>
  <body>
    <h1>Bookstore</h1>
    <table>
    <thead>
      <tr>
        <th>Título</th>
        <th>Categoría</th>
      </tr>
      </thead>
      <tbody>
      {
        for $x in doc("book.xml")//book
        order by $x/title
        return
          <tr>
            <td>{$x/title/text()}</td>
            <td>{data($x//@category)}</td>
          </tr> 
      }
      </tbody>
    </table>
    <ul>
      {
        for $x in doc('book.xml')//book
        order by $x/title
        return
        <li class="{data($x/@category)}">{data($x/title)}</li>
      }
    </ul>
</body>
</html>

