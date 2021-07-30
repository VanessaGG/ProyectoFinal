# ScrappingPaginaAnimes
Este repositorio corresponde al Proyecto Final de Big Data, en donde se seleccionaron tres páginas populares de anime para hacer ciertas comparaciones en cuanto a su contenido y los datos que se pueden obtener de estas.
El scrapping que se detallara a continuacion corresponde al sitio web de anime https://www.tioanime.com/ , para posteriormente mencionar las comparaciones realizadas con las paginas de https://jkanime.net/ y https://www.animefenix.com/ 

# archivo README.md bien descriptivo del proyecto y los datos extraídos de este en csv
Para comenzar el analisis en r, el primer paso es instalar el paquete rvest y ejecutarlo con su libreria. luego que R se cargó con nuestro nuevo paquete, vamos a utilizar la funcion read_html, para leer la pagina de TioAnime, y al ejecutar obtenemos datos de la página, es decir como está compuesto. 
Para revisar todos los datos de la pagina, utilizamos la funcion html_text, donde al ser ejecutada arroja todos los datos de la pagina y un sinfin de codigos que no entendemos, aún.
Como en la página principal de tioanime.com no aparecen las categorias para filtrar los animes, se utiliza el sitio tioanime.com/directorio como nuestra nueva página, esta será la guía durante todo el analisis. Y al igual que antes, se procede a cargar la página con la funcion read_html, y posteriormente la función html_text.

# categorias que se van a extraer para los animes
las categorias que se van a utilizar para el analisis son :tipo, genero y estado.
utilizamos la funcion html_node para la variable directorioTipoAnime para sacar el ID "type" del tipo de animes.
utilizamos la funcion html_node para la variable directorioGenero para sacar el ID "genero" del genero de animes.
utilizamos la funcion html_node para la variable directorioEstado para sacar el ID "status" del genero de animes.


# obteniendo los titulos de los tipos/categorias de anime
Para la categoria Tv anime se utiliza el condicional For y paste, ya que se busca navegar por todas las paginas de esta categoria, es decir de la pagina numero 1 a la pagina 125.
luego se utiliza las funciones read_html para leer el nuevo link que se generó para la categoria de tv, https://tioanime.com/directorio?type%5B%5D=0&year=1950%2C2021&status=2&sort=recent  . luego de esto se utiliza la funcion html_nodes para obtener las clases de la página, que para el caso de obtener el titulo el articulo de clase es ".anime" y su tamaño de fuente es de h3.
En la categoria Ovas, Peliculas y Especiales se utiliza la misma formula que se utilizo para la categoria Tv, en este caso se reemplaza el link y el numero de páginas , puesto que para el caso de los links son unicos para cada categoria, en el numero de páginas por categorias si pueden coincidir. 

# obteniendo los titulos de anime de acuerdo a su genero
como se mostro en un principio los generos que contiene la pagina son 40, por lo tanto para obtener los generos con r se utilizan las funciones For, Paste, read_html y html_nodes. Y como se vió en las categorias anteriores, solo se debe reemplazar el link de la página por cada link de genero que tiene la pagina, es decir los 40 generos.

# obteniendo el estado del los animes
se utilizan las mismas funciones de la categoria anterior, funciones For, Paste, read_html y html_nodes. y se utilizan los link de los estados de los animes.

# obteniendo todos los animes de la página
la página de tioanime no tiene una url donde se encuentren todos los link, es po ello que al leseccionar el genero que se desea buscar se seleccionan todos los generos, por lo cual el link que se obtiene es https://tioanime.com/directorio?genero%5B%5D=accion&genero%5B%5D=artes-marciales&genero%5B%5D=aventura&genero%5B%5D=carreras&genero%5B%5D=ciencia-ficcion&genero%5B%5D=comedia&genero%5B%5D=demencia&genero%5B%5D=demonios&genero%5B%5D=deportes&genero%5B%5D=drama&genero%5B%5D=ecchi&genero%5B%5D=escolares&genero%5B%5D=espacial&genero%5B%5D=fantasia&genero%5B%5D=harem&genero%5B%5D=historico&genero%5B%5D=infantil&genero%5B%5D=josei&genero%5B%5D=juegos&genero%5B%5D=magia&genero%5B%5D=mecha&genero%5B%5D=militar&genero%5B%5D=misterio&genero%5B%5D=musica&genero%5B%5D=parodia&genero%5B%5D=policia&genero%5B%5D=psicologico&genero%5B%5D=recuentos-de-la-vida&genero%5B%5D=romance&genero%5B%5D=samurai&genero%5B%5D=seinen&genero%5B%5D=shoujo&genero%5B%5D=shounen&genero%5B%5D=sobrenatural&genero%5B%5D=superpoderes&genero%5B%5D=suspenso&genero%5B%5D=terror&genero%5B%5D=vampiros&genero%5B%5D=yaoi&genero%5B%5D=yuri&year=1950%2C2021&status=2&sort=recent&p="1        y utilizando la formula ya conocida de las funciones al ejecutarlo nos arroja todos los link de las 169 paginas.

# conclusiones del analisis TioAnime

# conlusiones generales de las tres paginas de anime
