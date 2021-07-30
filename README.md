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


########
Se intentó contabilizar los datos con distintas funciones, lamentablemente no se logró, es por ello que manera manual se obtuvieron los siguientes resultados para contatilizar los generos de Tioanime:
Acción: 1241
Artes marciales:	0
Aventura:	608
Carreras:	14
Ciencia Ficcion:	0
Comedia:	1590
Demencia:	19
Demonios:	122
Deportes:	186
Drama:	776
Ecchi:	383
Escolares:	745
Espacial:	121
Fantasia:	852
Harem:	226
Historico:	197
Infantil:	44
Josei:	41
Juegos:	94
Magia:	380
Mecha:	257
Militar:	190
misterio:	248
musica:	157
Parodia:	108
Policia:	43
Psicologico:	142
Recuentos de la vida:	0
Romance:	810
Samurai:	63
Seinen:	329
Shoujo:	223
Shounen:	694
Sobrenatural:	606
Superpoderes:	224
Suspenso:	59
Terror:	149
Vampiros:	65
Yaoi:	38
Yuri:	47

Para los tipos de animes se contabilizo lo siguiente:
Tv= 2.481
Películas =363
Ova= 566
Especial= 12

Estado del anime en Tioanime:
Finalizado: 3.422
En emisión: 48
Próximamente: 6

# conclusiones del analisis TioAnime
Conclusiones de las categorias que tienen mayor concentracion de animes:
Se observa una gran cantidad de animes para el genero de comedia, siguiendo el genero de accion y en tercer lugar el genero de fantasia.
El anime de Tv es el tipo de anime que predomina en Tioanime.
Para la categoria de Estado de anime predominan los animes que ya se encuentran finalizados.
Elegí la pagina de tioAnime porque es gratuita y fácil de navegar, esta está dentro de las mas conocidas en Latinoamérica, y dentro de los países que mas visitan esta pagina se encuentra México con el 22,6% y luego Colombia con el 12,88%, chile se posiciona dentro del 5 lugar con el 8,55% de los visitantes.
Dentro de la pagina podemos filtrar por tipo los cuales son tv, películas, ova y especial.
Dentro de los géneros contamos con 40 diferentes anime ordenados de manera alfabetica.
También se puede buscar animes según año, según estado y ordenar de acuerdo a mas reciente o menos reciente.
El genero comedia es el que cuenta con mas animes dentro de la pagina, pues cuenta con 1.590 animes. El genero de acción ocupa el segundo lugar con 1241 animes. Fantasía con 121 animes.
Para el tipo de animes el tipo que tiene mas es de TV con 2481, una cifra muy distinta a la de el tipo especial que cuenta con solo 12 animes.
Para los estados de emisión la categoría de finalizado cuenta con 3.422, y en emisión 48, lo que sumados hacen un total de 3.470 animes para la pagina de Tioanime.


# conclusiones generales de las tres paginas de anime
Para finalizar se puede concluir que al comparar las tres paginas, cada una tiene algo que la otra no tiene, un ejemplo de esto es que animefenix no tiene categorías, su navegador concentra a todo el anime, mientras que tioanime tiene 40 categorias, pero de estas hay varios géneros que no tienen ningún anime, por otro lado jkanime tiene 42 categorías y todas tienen algún anime, por lo que si el usuario quisiera ver algún genero en especifico, es preferible que use Jkanime.

Por otro lado si se habla de tipo de anime, jkanime se queda atrás, ya que esta pagina solo tiene dos, mientras que las otras dos paginas tienen cuatro tipos, pero tianime a pesar de que tiene las cuatro categorías, hay una que no tiene ninguna anime, por lo que si se quiere ver por tipo es preferible que el usuario escoja Animefenix
Pero Animefenix no se queda atrás puesto que esta pagina es la que mayor animes finalizados tiene, al comparación de las otras dos paginas.

Además se puede observar que one piece no es el anime mas visto en las paginas seleccionadas, ya que el primer lugar no se repite, por el contrario el segundo, si, el cual es one piece.
Por lo que queda al gusto del usuario escoger en que pagina ver anime, puesto que depende de él ver que pagina le gusta más.

