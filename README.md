
# CAROSELLO TOTEM: ISTRUZIONI #

## Layout gallerie e immagini

La directory galleries contiene tutte le gallerie che si vogliono rappresentare
nel carosello, una per ogni sottodirectory. Ad esempio:

galleries
 |
 |- galleria_1
 | 		|- copertina.jpg
 |		|- immagine_1.jpg
 |		|- immagine_2.jpg
 |		|- immagine_3.jpg
 |		
 |- galleria_2
 		|- immagine_00.jpg
		|- immagine_01.jpg
		|- immagine_02.jpg
		|- immagine_03.jpg
		
L'ordine delle gallerie nel carosello rispecchia l'ordine alfabetico
delle directory della gallerie, così anche l'ordine dell immagini per
ciascun carosello. La prima immagine in ordine alfabetico in una 
galleria verrà usata come immagine di copertina, mentre le rimanenti
appariranno nel carosello che si attiva quando si clicca su una immagine
di copertina, e quindi seguendo l'esempio riportato sopra,
la prima galleria avrà come compertina l'immagine "copertina.jpg" e la
seconda avrà "immagine_00.jpg"

Durante la visualizzazione di una galleria si può tornare alla visualizzazione
iniziale cliccando sul pulsante "Pagina iniziale" in fondo alla pagina.

## Script di aggiornamento dell'indice

Dopo ogni aggiornamento delle directory l'indice va aggiornato per fare in modo
che la pagina si accorga delle modifiche. Per aggiornare l'indice è disponibilie
lo script make_index.bat che una volta avviato elimina l'indice precedente e crea un nuovo
indice gallery_index.js. 
