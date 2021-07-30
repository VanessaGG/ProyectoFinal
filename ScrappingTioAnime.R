
####### instalando el paquete rvest
install.packages("rvest")

####### implementando rvest
library("rvest")

####### instalando el paquete dplyr
install.packages("dplyr")

####### implementando dplyr
library(dplyr)

####### abriendo pagina principal de tioanime.com
tioanime <- read_html("https://www.tioanime.com/")
print(tioanime)

####### revisando todo el contenido de la variable tioanime
print(html_text(tioanime))

####### agregando pagina con directorio 
directorio <- read_html("https://tioanime.com/directorio")
print(html_text(directorio))

###########################################################################################
########################### categorias que se van a extraer ###############################
###########################################################################################

##### obteniendo los tipos de anime
directorioTipoAnime <-html_node(directorio, css="#type")
print(html_text(directorioTipoAnime))

#### obteniendo los generos de anime
directorioGenero <- html_node(directorio, css="#genero")
print(html_text(directorioGenero))

#### obteniendo los estados de los animes
directorioEstado <- html_node(directorio, css="#status")
print(html_text(directorioEstado))



########################################################################################
#################################### TIPOS DE ANIME ####################################
########################################################################################

####TV
for(nroPagina in 1:125){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlTv<-paste("https://tioanime.com/directorio?type%5B%5D=0&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
  Tv<-read_html(urlTv)
  item1Tv<-html_nodes(Tv,css=".anime")
  AnimeTv<-html_nodes(item1Tv,css="h3")
  print(html_text(AnimeTv))
}

####Ovas
for(nroPagina in 1:29){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlTova<-paste("https://tioanime.com/directorio?type%5B%5D=2&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
  TOva<-read_html(urlTova)
  item1ova<-html_nodes(TOva,css=".anime")
  AnimeOva<-html_nodes(item1ova,css="h3")
  print(html_text(AnimeOva))
}

####Peliculas
for(nroPagina in 1:19){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlPeliculas<-paste("https://tioanime.com/directorio?type%5B%5D=1&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
  TPeliculas<-read_html(urlPeliculas)
  item1Peliculas<-html_nodes(TPeliculas,css=".anime")
  AnimePeliculas<-html_nodes(item1Peliculas,css="h3")
  print(html_text(AnimePeliculas))    
}

####Especial
for(nroPagina in 1:1){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlEspecial<-paste("https://tioanime.com/directorio?type%5B%5D=3&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
  TEspecial<-read_html(urlEspecial)
  item1Especial<-html_nodes(TEspecial,css=".anime")
  AnimeEspecial<-html_nodes(item1Especial,css="h3")
  print(html_text(AnimeEspecial))    
}



###############################################################################################
###################### Sacando los titulos por tipo de Genero #################################
###############################################################################################

### Genero Accion
for(nroPagina in 1:63){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlAccion<-paste("https://tioanime.com/directorio?genero%5B%5D=accion&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
  tAccion<-read_html(urlAccion)
  itemam<-html_nodes(tAccion,css=".anime")
  AnimeAccion<-html_nodes(itemam,css="h3")
  print(html_text(AnimeAccion))
}

###Genero Artes marciales 
  for(nroPagina in 1:1){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlArtesMarcialess<-paste("https://tioanime.com/directorio?genero%5B%5D=artes-marciales&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tArtesMarcialess<-read_html(urlArtesMarcialess)
    itemArtesMarcialess<-html_nodes(tArtesMarcialess,css=".anime")
    AnimeArtesMarcialess<-html_nodes(itemArtesMarcialess,css="h3")
    print(html_text(AnimeArtesMarcialess))
  }
  
#### genero Aventuras
for(nroPagina in 1:31){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlAventuras<-paste("https://tioanime.com/directorio?genero%5B%5D=aventura&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
  tAventuras<-read_html(urlAventuras)
  itemAventurass<-html_nodes(tAventuras,css=".anime")
  AnimeAventuras<-html_nodes(itemAventurass,css="h3")
  print(html_text(AnimeAventuras))
}

#### Genero artes marciales
  for(nroPagina in 1:1){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlArtesMarciales<-paste("https://tioanime.com/directorio?genero%5B%5D=artes-marciales&year=1950%2C2021&status=2&sort=recent",nroPagina, sep="")
    tArtesMarciales<-read_html(urlArtesMarciales)
    itemArtesMarciales<-html_nodes(tArtesMarciales,css=".anime")
    AnimeArtesMarciales<-html_nodes(itemArtesMarciales,css="h3")
    print(html_text(AnimeArtesMarciales))
  }
  
#### Genero carreras
  for(nroPagina in 1:1){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlCarreras<-paste("https://tioanime.com/directorio?genero%5B%5D=carreras&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tCarreras<-read_html(urlCarreras)
    itemCarreras<-html_nodes(tCarreras,css=".anime")
    AnimeCarreras<-html_nodes(itemCarreras,css="h3")
    print(html_text(AnimeCarreras))
  }
  
#### Genero ciencia Ficcion   
  for(nroPagina in 1:1){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlCienciaFiccion<-paste("https://tioanime.com/directorio?genero%5B%5D=ciencia-ficcion&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tCienciaFiccion<-read_html(urlCienciaFiccion)
    itemCienciaFiccion<-html_nodes(tCienciaFiccion,css=".anime")
    AnimeCienciaFiccion<-html_nodes(itemCienciaFiccion,css="h3")
    print(html_text(AnimeCienciaFiccion))
  }
 
#### Genero Comedia
  for(nroPagina in 1:80){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlComedia<-paste("https://tioanime.com/directorio?genero%5B%5D=comedia&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tComedia<-read_html(urlComedia)
    itemComedia<-html_nodes(tComedia,css=".anime")
    AnimeComedia<-html_nodes(itemComedia,css="h3")
    print(html_text(AnimeComedia))
  }

#### Genero demencia
  for(nroPagina in 1:1){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlDemencia<-paste("https://tioanime.com/directorio?genero%5B%5D=demencia&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tDemencia<-read_html(urlDemencia)
    itemDemencia<-html_nodes(tDemencia,css=".anime")
    AnimeDemencia<-html_nodes(itemDemencia,css="h3")
    print(html_text(AnimeDemencia))
  }
  
#### Genero Demonio
  for(nroPagina in 1:7){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlDemonio<-paste("https://tioanime.com/directorio?genero%5B%5D=demonios&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tDemonio<-read_html(urlDemonio)
    itemDemonio<-html_nodes(tDemonio,css=".anime")
    AnimeDemonio<-html_nodes(itemDemonio,css="h3")
    print(html_text(AnimeDemonio))
  }

  #### Genero Deportes
  for(nroPagina in 1:10){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlDeporte<-paste("https://tioanime.com/directorio?genero%5B%5D=deportes&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tDeporte<-read_html(urlDeporte)
    itemDeporte<-html_nodes(tDeporte,css=".anime")
    AnimeDeporte<-html_nodes(itemDeporte,css="h3")
    print(html_text(AnimeDeporte))
  }
  
#### Genero Drama
  for(nroPagina in 1:39){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlDrama<-paste("https://tioanime.com/directorio?genero%5B%5D=drama&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tDrama<-read_html(urlDrama)
    itemDrama<-html_nodes(tDrama,css=".anime")
    AnimeDrama<-html_nodes(itemDrama,css="h3")
    print(html_text(AnimeDrama))
  }
  
  #### Genero Ecchi
  for(nroPagina in 1:20){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlEcchi<-paste("https://tioanime.com/directorio?genero%5B%5D=ecchi&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tEcchi<-read_html(urlEcchi)
    itemEcchi<-html_nodes(tEcchi,css=".anime")
    AnimeEcchi<-html_nodes(itemEcchi,css="h3")
    print(html_text(AnimeEcchi))
  }
  
#### Genero escolares
  for(nroPagina in 1:38){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlEscolares<-paste("https://tioanime.com/directorio?genero%5B%5D=escolares&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tEscolares<-read_html(urlEscolares)
    itemEscolares<-html_nodes(tEscolares,css=".anime")
    AnimeEscolares<-html_nodes(itemEscolares,css="h3")
    print(html_text(AnimeEscolares))
  }
  
#### Genero espacial
  for(nroPagina in 1:7){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlEspacial<-paste("https://tioanime.com/directorio?genero%5B%5D=espacial&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tEspacial<-read_html(urlEspacial)
    itemEspacial<-html_nodes(tEspacial,css=".anime")
    AnimeEspacial<-html_nodes(itemEspacial,css="h3")
    print(html_text(AnimeEspacial))
  }
  
#### Genero fantasia
  for(nroPagina in 1:43){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlFantasia<-paste("https://tioanime.com/directorio?genero%5B%5D=fantasia&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tFantasia<-read_html(urlFantasia)
    itemFantasia<-html_nodes(tFantasia,css=".anime")
    AnimeFantasia<-html_nodes(itemFantasia,css="h3")
    print(html_text(AnimeFantasia))
  }
  
#### Genero harem
  for(nroPagina in 1:12){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlHarem<-paste("https://tioanime.com/directorio?genero%5B%5D=harem&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tHarem<-read_html(urlHarem)
    itemHarem<-html_nodes(tHarem,css=".anime")
    AnimeHarem<-html_nodes(itemHarem,css="h3")
    print(html_text(AnimeHarem))
  }
  
#### Genero historico
  for(nroPagina in 1:10){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlHistorico<-paste("https://tioanime.com/directorio?genero%5B%5D=historico&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tHistorico<-read_html(urlHistorico)
    itemHistorico<-html_nodes(tHistorico,css=".anime")
    AnimeHistorico<-html_nodes(itemHistorico,css="h3")
    print(html_text(AnimeHistorico))
  }
  
#### Genero infantil
  for(nroPagina in 1:3){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlInfantil<-paste("https://tioanime.com/directorio?genero%5B%5D=infantil&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tInfantil<-read_html(urlInfantil)
    itemInfantil<-html_nodes(tInfantil,css=".anime")
    AnimeInfantil<-html_nodes(itemInfantil,css="h3")
    print(html_text(AnimeInfantil))
  }
  
#### Genero josei
  for(nroPagina in 1:3){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlJosei<-paste("https://tioanime.com/directorio?genero%5B%5D=josei&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tJosei<-read_html(urlJosei)
    itemJosei<-html_nodes(tJosei,css=".anime")
    AnimeJosei<-html_nodes(itemJosei,css="h3")
    print(html_text(AnimeJosei))
  }

#### Genero juegos
  for(nroPagina in 1:){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlJuegos<-paste("https://tioanime.com/directorio?genero%5B%5D=juegos&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tJuegos<-read_html(urlJuegos)
    itemJuegos<-html_nodes(tJuegos,css=".anime")
    AnimeJuegos<-html_nodes(itemJuegos,css="h3")
    print(html_text(AnimeJuegos))
  }
  
#### Genero magia
  for(nroPagina in 1:19){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlMagia<-paste("https://tioanime.com/directorio?genero%5B%5D=magia&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tMagia<-read_html(urlMagia)
    itemMagia<-html_nodes(tMagia,css=".anime")
    AnimeMagia<-html_nodes(itemMagia,css="h3")
    print(html_text(AnimeMagia))
  }
  
#### Genero mecha
  for(nroPagina in 1:13){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlMecha<-paste("https://tioanime.com/directorio?genero%5B%5D=mecha&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tMecha<-read_html(urlMecha)
    itemMecha<-html_nodes(tMecha,css=".anime")
    AnimeMecha<-html_nodes(itemMecha,css="h3")
    print(html_text(AnimeMecha))
  }

#### Genero militar
  for(nroPagina in 1:10){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlMilitar<-paste("https://tioanime.com/directorio?genero%5B%5D=militar&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tMilitar<-read_html(urlMilitar)
    itemMilitar<-html_nodes(tMilitar,css=".anime")
    AnimeMilitar<-html_nodes(itemMilitar,css="h3")
    print(html_text(AnimeMilitar))
  }

#### Genero misterio
  for(nroPagina in 1:13){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlMisterio<-paste("https://tioanime.com/directorio?genero%5B%5D=misterio&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tMisterio<-read_html(urlMisterio)
    itemMisterio<-html_nodes(tMisterio,css=".anime")
    AnimeMisterio<-html_nodes(itemMisterio,css="h3")
    print(html_text(AnimeMisterio))
  }
  
#### Genero musica
  for(nroPagina in 1:8){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlMusica<-paste("https://tioanime.com/directorio?genero%5B%5D=musica&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tMusica<-read_html(urlMusica)
    itemMusica<-html_nodes(tMusica,css=".anime")
    AnimeMusica<-html_nodes(itemMusica,css="h3")
    print(html_text(AnimeMusica))
  }
  
#### Genero parodia
  for(nroPagina in 1:6){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlParodia<-paste("https://tioanime.com/directorio?genero%5B%5D=parodia&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tParodia<-read_html(urlParodia)
    itemParodia<-html_nodes(tParodia,css=".anime")
    AnimeParodia<-html_nodes(itemParodia,css="h3")
    print(html_text(AnimeParodia))
  }
  
#### Genero policial
  for(nroPagina in 1:3){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlPolicial<-paste("https://tioanime.com/directorio?genero%5B%5D=policia&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tPolicial<-read_html(urlPolicial)
    itemPolicial<-html_nodes(tPolicial,css=".anime")
    AnimePolicial<-html_nodes(itemPolicial,css="h3")
    print(html_text(AnimePolicial))
  }
  
#### Genero psicologico
  for(nroPagina in 1:8){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlPsicologico<-paste("https://tioanime.com/directorio?genero%5B%5D=psicologico&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tPsicologico<-read_html(urlPsicologico)
    itemPsicologico<-html_nodes(tPsicologico,css=".anime")
    AnimePsicologico<-html_nodes(itemPsicologico,css="h3")
    print(html_text(AnimePsicologico))
  }
  
#### Genero recuentos de la vida  
  for(nroPagina in 1:1){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlRecdelavida<-paste("https://tioanime.com/directorio?genero%5B%5D=recuentos-de-la-vida&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tRecdelavida<-read_html(urlRecdelavida)
    itemRecdelavida<-html_nodes(tRecdelavida,css=".anime")
    AnimeRecdelavida<-html_nodes(itemRecdelavida,css="h3")
    print(html_text(AnimeRecdelavida))
  }
  
#### Genero romance
  for(nroPagina in 1:41){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlRomance<-paste("https://tioanime.com/directorio?genero%5B%5D=romance&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tRomance<-read_html(urlRomance)
    itemRomance<-html_nodes(tRomance,css=".anime")
    AnimeRomance<-html_nodes(itemRomance,css="h3")
    print(html_text(AnimeRomance))
  }
  
#### Genero samurai
  for(nroPagina in 1:4){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlSamurai<-paste("https://tioanime.com/directorio?genero%5B%5D=samurai&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tSamurai<-read_html(urlSamurai)
    itemSamurai<-html_nodes(tSamurai,css=".anime")
    AnimeSamurai<-html_nodes(itemSamurai,css="h3")
    print(html_text(AnimeSamurai))
  }
  
#### Genero seinen
  for(nroPagina in 1:17){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlSeinen<-paste("https://tioanime.com/directorio?genero%5B%5D=seinen&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tSeinen<-read_html(urlSeinen)
    itemSeinen<-html_nodes(tSeinen,css=".anime")
    AnimeSeinen<-html_nodes(itemSeinen,css="h3")
    print(html_text(AnimeSeinen))
  }
  
#### Genero shoujo
  for(nroPagina in 1:12){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlShoujo<-paste("https://tioanime.com/directorio?genero%5B%5D=shoujo&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tShoujo<-read_html(urlShoujo)
    itemShoujo<-html_nodes(tShoujo,css=".anime")
    AnimeShoujo<-html_nodes(itemShoujo,css="h3")
    print(html_text(AnimeShoujo))
  }
  
#### Genero shounen
  for(nroPagina in 1:35){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlShounen<-paste("https://tioanime.com/directorio?genero%5B%5D=shounen&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tShounen<-read_html(urlShounen)
    itemShounen<-html_nodes(tShounen,css=".anime")
    AnimeShounen<-html_nodes(itemShounen,css="h3")
    print(html_text(AnimeShounen))
  }

#### Genero sobrenatural
  for(nroPagina in 1:31){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlSobrenatural<-paste("https://tioanime.com/directorio?genero%5B%5D=sobrenatural&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tSobrenatural<-read_html(urlSobrenatural)
    itemSobrenatural<-html_nodes(tSobrenatural,css=".anime")
    AnimeSobrenatural<-html_nodes(itemSobrenatural,css="h3")
    print(html_text(AnimeSobrenatural))
  }
  
#### Genero superpoderes
  for(nroPagina in 1:12){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlSuperpoderes<-paste("https://tioanime.com/directorio?genero%5B%5D=superpoderes&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tSuperpoderes<-read_html(urlSuperpoderes)
    itemSuperpoderes<-html_nodes(tSuperpoderes,css=".anime")
    AnimeSuperpoderes<-html_nodes(itemSuperpoderes,css="h3")
    print(html_text(AnimeSuperpoderes))
  }
  
#### Genero suspenso
  for(nroPagina in 1:3){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlSuspenso<-paste("https://tioanime.com/directorio?genero%5B%5D=suspenso&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tSuspenso<-read_html(urlSuspenso)
    itemSuspenso<-html_nodes(tSuspenso,css=".anime")
    AnimeSuspenso<-html_nodes(itemSuspenso,css="h3")
    print(html_text(AnimeSuspenso))
  }
  
#### Genero terror
  for(nroPagina in 1:8){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlTerror<-paste("https://tioanime.com/directorio?genero%5B%5D=terror&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tTerror<-read_html(urlTerror)
    itemTerror<-html_nodes(tTerror,css=".anime")
    AnimeTerror<-html_nodes(itemTerror,css="h3")
    print(html_text(AnimeTerror))
  }
  
#### Genero vampiros
  for(nroPagina in 1:4){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlVampiros<-paste("https://tioanime.com/directorio?genero%5B%5D=vampiros&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tVampiros<-read_html(urlVampiros)
    itemVampiros<-html_nodes(tVampiros,css=".anime")
    AnimeVampiros<-html_nodes(itemVampiros,css="h3")
    print(html_text(AnimeVampiros))
  }
  
  
#### Genero yaoi
  for(nroPagina in 1:2){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlYaoi<-paste("https://tioanime.com/directorio?genero%5B%5D=yaoi&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tYaoi<-read_html(urlYaoi)
    itemYaoi<-html_nodes(tYaoi,css=".anime")
    AnimeYaoi<-html_nodes(itemYaoi,css="h3")
    print(html_text(AnimeYaoi))
  }
  
#### Genero yuri
  for(nroPagina in 1:2){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlYuri<-paste("https://tioanime.com/directorio?genero%5B%5D=yuri&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    tYuri<-read_html(urlYuri)
    itemYuri<-html_nodes(tYuri,css=".anime")
    AnimeYuri<-html_nodes(itemYuri,css="h3")
    print(html_text(AnimeYuri))
  }


  
  
######################################################################################## 
############################# Estado del Anime  ########################################
######################################################################################## 
  
#### Finalizado
  for(nroPagina in 1:172){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlFinalizado<-paste("https://tioanime.com/directorio?year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
    TFinalizado<-read_html(urlFinalizado)
    item1Finalizado<-html_nodes(TFinalizado,css=".anime")
    AnimeFinalizado<-html_nodes(item1Finalizado,css="h3")
    print(html_text(AnimeFinalizado))    
  }  
  
#### En Emision               
  for(nroPagina in 1:3){
    print(paste("Navegando por el nro de pagina:", nroPagina))
    urlEmision<-paste("https://tioanime.com/directorio?year=1950%2C2021&status=1&sort=recent&p=",nroPagina, sep="")
    TEmision<-read_html(urlEmision)
    item1Emision<-html_nodes(TEmision,css=".anime")
    AnimeEmision<-html_nodes(item1Emision,css="h3")
    print(html_text(AnimeEmision))    
  }
  
#### Proximamente   
    for(nroPagina in 1:1){
      print(paste("Navegando por el nro de pagina:", nroPagina))
      urlProx<-paste("https://tioanime.com/directorio?year=1950%2C2021&status=3&sort=recent&p=",nroPagina, sep="")
      TProx<-read_html(urlProx)
      item1Prox<-html_nodes(TProx,css=".anime")
      AnimeProx<-html_nodes(item1Prox,css="h3")
      print(html_text(AnimeProx))    
    }
  
########################################################################################
####################### Accceso a todos los animes de la pagina ########################
########################################################################################
  
for(nroPagina in 1:169){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlCompleto<-paste("https://tioanime.com/directorio?genero%5B%5D=accion&genero%5B%5D=artes-marciales&genero%5B%5D=aventura&genero%5B%5D=carreras&genero%5B%5D=ciencia-ficcion&genero%5B%5D=comedia&genero%5B%5D=demencia&genero%5B%5D=demonios&genero%5B%5D=deportes&genero%5B%5D=drama&genero%5B%5D=ecchi&genero%5B%5D=escolares&genero%5B%5D=espacial&genero%5B%5D=fantasia&genero%5B%5D=harem&genero%5B%5D=historico&genero%5B%5D=infantil&genero%5B%5D=josei&genero%5B%5D=juegos&genero%5B%5D=magia&genero%5B%5D=mecha&genero%5B%5D=militar&genero%5B%5D=misterio&genero%5B%5D=musica&genero%5B%5D=parodia&genero%5B%5D=policia&genero%5B%5D=psicologico&genero%5B%5D=recuentos-de-la-vida&genero%5B%5D=romance&genero%5B%5D=samurai&genero%5B%5D=seinen&genero%5B%5D=shoujo&genero%5B%5D=shounen&genero%5B%5D=sobrenatural&genero%5B%5D=superpoderes&genero%5B%5D=suspenso&genero%5B%5D=terror&genero%5B%5D=vampiros&genero%5B%5D=yaoi&genero%5B%5D=yuri&year=1950%2C2021&status=2&sort=recent&p=",nroPagina, sep="")
  TCompleto<-read_html(urlCompleto)
  item1Completo<-html_nodes(TCompleto,css=".anime")
  AnimeCompleto<-html_nodes(item1Completo,css="h3")
  print(html_text(AnimeCompleto))    
}

#####################################################################  
#####################################################################

    
  
  