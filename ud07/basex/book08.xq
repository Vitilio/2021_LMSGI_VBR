<html>
  <head>
    <title>MisPrácticasVBR</title>
    <meta charset="UTF-8"/>
  </head>
  <body>
    <h1>Listado de prácticas</h1>
    {
    for $tema in (1 to 7), $ejercicio in (1 to 3) return
    <div>
     {
        concat("Tema",$tema,"Ejercicio",$ejercicio)
      }
    </div>
    }
  </body>
</html>
