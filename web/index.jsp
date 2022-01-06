<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--    CSS Bootstrap   -->
    <link rel="stylesheet" href="./public/css-bootstrap/estilos.css">
    <link rel="stylesheet" href="./public/css-bootstrap/estilos_index.css">
    <link rel="shortcut icon" href="./public/img/icono-ventana.png">
    <script src="https://kit.fontawesome.com/6a95bc84be.js" crossorigin="anonymous"></script>
    <title>A film by</title>
</head>

<body>
    
    <%
        HttpSession sesion = request.getSession();
    %>
    
    <header id="navbar">
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="./public/img/icono-navbar.png" alt="logo"
                        class="img-logo"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#biografia">Biograf�a</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#filmografia">Filmograf�a</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#ranking">Top pel�culas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="compraArticulos.html">Comprar articulos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp" target="_blank">
                                <i class="fas fa-user-circle"></i><%=sesion.getAttribute("nombreUsuario")%>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!--CARROUSEL-->
    <section class="carrusel">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="./public/img/banner1.jpg" class="d-block w-100" alt="Quentin Tarantino banner">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Esta a la par de Stephen Hawking</h5>
                        <p>Su IQ es de 160, con 14 a�os ya escrib�a guiones</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="./public/img/banner2.jpg" class="d-block w-100" alt="Quentin Taratino banner">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Plan de vida</h5>
                        <p>Ha declarado que quiere retirarse a los 60, cuando haya hecho 10 pel�culas. </p>
                    </div>
                </div>
                <div class="carousel-item banner">
                    <img src="./public/img/banner3.jpg" class="d-block w-100" alt="Quentin Tarantino banner">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Reservoir dogs le abri� las puertas de Hollywood</h5>
                        <p>Tuvo un debut impecable como director y guionista que se convirti� en una cinta de culto y a
                            la que describen como una de las mejores que se ha realizado en el cine independiente</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>

    <!--SECCION BIOGRAFIA-->
    <section id="biografia">
        <div class="caja-titulos">
            <div class="caja caja_bio titulo-section">
                <h1>Biograf�a</h1>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <p>
                        Quentin Jerome Tarantino es director de cine, guionista, productor y actor, nacido el 27 de
                        marzo de 1963, en Knoxville, Tennessee. Algunas de sus pel�culas se encuentran entre las obras
                        cinematogr�ficas m�s importantes de finales del siglo XX y de lo que va desde el Siglo XXI
                    </p>
                    <p>
                        Las pel�culas de Tarantino se caracterizan por tener un gran contenido de violencia (la mayor�a
                        de sus personajes se encuentran en la delgada l�nea entre lo moral y lo inmoral), privilegian el
                        di�logo, tienen un elenco coral, juegan con las estructuras narrativas y desarrollan el humor
                        negro. Quentin Tarantino ha ganado dos premios Oscar al "Mejor gui�n original" por sus
                        pel�culas: Pulp Fiction y Django Unchained. Adem�s de otros dos Globos de Oro, dos premios BAFTA
                        y una ?Palma de Oro? en el Festival de Cine de Cannes. Tambi�n ha participado en series de
                        televisi�n y ha sido productor de varias pel�culas de terror y artes marciales.
                    </p>
                    <p>
                        Uno de los primeros acercamientos de Tarantino al cine fue como espectador de pel�culas de artes
                        marciales; otro, como amante del cine de terror: cuando era ni�o su pel�cula favorita era Abbott
                        y Castello conoce a Frankenstein, de 1948, donde el humor y la muerte se entremezclan.
                    </p>
                    <p>
                        Para mantenerse econ�micamente, Tarantino consigui� un trabajo en un cine porno y luego en una
                        tienda de videos en Manhattan Beach, este �ltimo ser�a fundamental para su aprendizaje: <span
                            class="textual">?Era el
                            mejor trabajo que ten�a hasta que fui director?</span>, dijo. Fue all� donde escribi� sus
                        dos primeros
                        guiones: 'Asesinos natos' y 'Amor a quemarropa'. Con el dinero que sac� de su venta financi� su
                        primera pel�cula, 'Reservoir dogs', que cont� con Harvey Keitel desde el primer momento debido
                        al gui�n. En 1992 inici� su carrera como cineasta independiente con el estreno de Reservoir
                        Dogs, considerada por la revista Empire como �la mejor pel�cula independiente de todos los
                        tiempos�.
                    </p>
                    <p>
                        M�s tarde dir�a: <span class="textual">?Cuando la gente me pregunta si fui a la escuela de cine,
                            yo les digo: no, fui a ver pel�culas?</span>.
                    </p>
                </div>
                <div class="col-lg-4">
                    <figure>
                        <img src="./public/img/Quentin.jpg" alt="quentin tarantino">
                        <figcaption class="descripcion">
                            Su talento ha sido premiado con m�ltiples galardones entre los que destacan 2 premios �scar
                            y 3 Globos de Oro.
                        </figcaption>
                    </figure>
                </div>
            </div>
        </div>
    </section>

    <!--SECCION FILMOGRAFIA-->
    <section id="filmografia">
        <div class="caja-titulos">
            <div class="caja caja-filmografia titulo-section">
                <h1>Filmograf�a</h1>
            </div>
        </div>
        <div class="container">
            <div class="row g-1 container-img">
                <div class="col-12 imagen"><img src="./public/img/onceUponAtime-poster.jpg"
                        alt="Once Upon a time... poster">
                    <div class="link-movie">
                        <a href="https://www.pelisplus.io/pelicula/habia-una-vez-en-hollywood/" target="_blank">
                            <h2>�rase una vez... en Hollywood</h2>
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 imagen"><img src="./public/img/the-hateful-eight-poster.jpeg" alt="">
                    <div class="link-movie">
                        <a href="https://cuevana3.io/833/the-hateful-eight" target="_blank">
                            <h2>Los 8 m�s odiados</h2>
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 imagen"><img src="./public/img/django-unchained-poster.jpg" alt="Django poster">
                    <div class="link-movie">
                        <a href="https://www.pelisplus.io/pelicula/django-sin-cadenas/" target="_blank">
                            <h2>Django sin cadenas</h2>
                        </a>
                    </div>
                </div>
                <div class="col-lg-7 imagen"><img src="./public/img/inglourios-basterds-posterr.png"
                        alt="Bastardos sin gloria poster">
                    <div class="link-movie"><a href="https://www.pelisplus.io/pelicula/malditos-bastardos/"
                            target="_blank">
                            <h2>Bastardos sin gloria</h2>
                        </a>
                    </div>
                </div>
                <div class="col-lg-5 imagen"><img src="./public/img/death-proof-poster.jpg" alt="Death Proof poster">
                    <div class="link-movie">
                        <a href="https://www.pelisplus.io/pelicula/a-prueba-de-muerte/" target="_blank">
                            <h2>A prueba de muerte</h2>
                        </a>
                    </div>
                </div>
                <div class="col-lg-5 imagen"><img src="./public/img/Kill-Bill-volumenII-poster.jpg"
                        alt="Kill Bill Vol. II poster">
                    <div class="link-movie">
                        <a href="https://www.pelisplus.io/pelicula/kill-bill-volumen-2/" target="_blank">
                        <h2>Kill Bill Vol. II</h2>
                        </a>
                    </div>
                </div>
                <div class="col-lg-7 imagen"><img src="./public/img/kill-bill-I-poster.jpg" alt="Kill Bill Vol. II">
                    <div class="link-movie">
                        <a href="https://www.pelisplus.io/pelicula/kill-bill-volumen-1/" target="_blank">
                            <h2>Kill Bill Vol. I</h2>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 imagen"><img src="./public/img/jackie-brown-poster.jpg" alt="Jackie Brown poster">
                    <div class="link-movie">
                        <a href="https://www.pelisplus.io/pelicula/jackie-brown/" target="_blank">
                            <h2>Jackie Brown</h2>
                        </a>
                    </div>
                </div>
                <div class="col-lg-8 imagen"><img src="./public/img/pulp-fiction-poster.jpg" alt="Pulp Fiction poster">
                    <div class="link-movie">
                        <a href="https://www.pelisplus.io/pelicula/tiempos-violentos/" target="_blank">
                            <h2>Tiempos violentos</h2>
                        </a>
                    </div>
                </div>
                <div class="col-12 imagen"><img src="./public/img/reservoir-dogs-banner.jpg"
                        alt="Reservoir Dogs poster">
                    <div class="link-movie">
                        <a href="https://www.pelisplus.io/pelicula/perros-de-la-calle/" target="_blank">
                            <h2>Perros de la calle</h2>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--SECCION RANKING DE PELICULAS-->
    <section id="ranking">
        <div class="caja-titulos">
            <div class="caja caja-ranking titulo-section">
                <h1>Ranking de peliculas</h1>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12 titular">
                    <h2><span class="numero">10.</span>Los 8 m�s odiados (2015)</h2>
                </div>
                <div class="col-lg-7">
                    <p>
                        ?Los Ocho M�s Odiados? nos involucra en las misiones de dos caza-recompensas el Mayor Marquis
                        Warren (Samuel L. Jackson), un hombre de color retirado de la divisi�n de caballer�a; y John
                        Ruth (Kurt Russell), quienes llevan a como prisionera a Daisy Domergue (Jennifer Jason Leigh),
                        para cobrar una jugosa cantidad de dinero en un pueblo llamado Red Rock. Pero una fuerte
                        tormenta de nieve les obliga a quedarse en una posada con otros 5 desconocidos. Es ah� donde
                        empezar� un enfrentamiento de enigmas, dudas, enfrentamientos y paranoia entre estos sujetos que
                        los llevar� a mostrar sus oscuros pasados y sus metas sin importar los obst�culos.
                    </p>
                    <p>Para los que ya est�n familiarizados con el estilo de ?spaghetti western? que emplea Tarantino en
                        sus pel�culas, este ser� un ?tributo?, ?reciclaje? y ?uso de t�cnicas? en la cinematograf�a en
                        una compilaci�n de 3 horas de duraci�n con su acostumbrada violencia, y lenguaje vulgar
                        expl�cito. A diferencia de sus otras cintas, esta es la que produce m�s giros y misterios en los
                        personajes a lo largo de esta misma. </p>
                    <p>
                        Otro de los puntos cruciales de esta cinta es su m�sica. Y sin duda Tarantino en esta pel�cula
                        busc� al hombre indicado: Ennio Morricone, quien logra atraparnos desde principio a fin y darle
                        intensidad a momentos clim�ticos a la pel�cula; y de paso demostrando porque es uno de los m�s
                        grandes compositores del cine.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/the-heightful8.jpg" alt="The Hateful 8 poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: The Hateful Eight</li>
                                <li>G�nero: Suspenso</li>
                                <li>Clasificaci�n: +16</li>
                                <li>Duraci�n: 167 min</li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="row">
                <div class="col-12 titular">
                    <h2><span class="numero">9.</span>Kill Bill Vol. 2 (2004)</h2>
                </div>
                <div class="col-lg-7">
                    <p>
                        Despu�s de borrar dos nombres de su Lista de la Muerte, ?La novia? pone la mira en Budd y Elle
                        Driver, los �nicos sobrevivientes del equipo de asesinos que la traicionaron. Todo conduce al
                        enfrentamiento final con Bill, su exmaestro y expareja que orden� su asesinato.
                    </p>
                    <p>
                        La segunda parte en la �pica de venganza de Quentin Tarantino, "Kill Bill: La venganza, volumen
                        2" tiene todo lo que hace buena a su predecesora. Sin embargo, �sta tiene m�s de western,
                        contrario a la primera parte que es m�s cerca al cine de artes marciales. Quiz� haya menos
                        combates, pero la intriga, violencia y di�logos geniales siguen presentes.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/Kill-bill-vol2.jpg" alt="">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Kill Bill Vol. 2</li>
                                <li>G�nero: Acci�n</li>
                                <li>Clasificaci�n: +16</li>
                                <li>Duraci�n: 136 min</li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="row">
                <div class="col-12 titular">
                    <h2><span class="numero">8.</span>�rase una vez... en Hollywood (2019)</h2>
                </div>
                <div class="col-lg-7">
                    <p>
                        El actor Rick Dalton es la antigua estrella de un western de televisi�n. �l y su leal doble de
                        acci�n, Cliff Booth, buscan el �xito en un Hollywood que ya no reconocen. Sin embargo, descubre
                        que tienen por vecina a la famosa actriz Sharon Tate, esposa del cineasta Roman Polanski.
                    </p>
                    <p>
                        La ?novena de Tarantino? es, antes que nada, una carta de amor al Hollywood con el que creci� y
                        le fascin�. Despu�s de ?Bastardos sin gloria? es la segunda pel�cula en la que lidia con
                        acontecimientos reales, a partir de los que construye una comedia m�s contenida en su violencia
                        y di�logo que su filmograf�a previa.
                    </p>
                    <p>
                        Un viaje hacia la cultura pop hollywoodense de los sesenta, con geniales actuaciones de Brad
                        Pitt, Leonardo Di Caprio y Margot Robbie.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/OnceUpon.jpg" alt="Once Upon a time... in Hollywod poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Once Upon a time... in Hollywood</li>
                                <li>G�nero: Drama</li>
                                <li>Clasificaci�n: +18</li>
                                <li>Duraci�n: 165 min</li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="row">
                <div class="col-12 titular">
                    <h2><span class="numero">7.</span>Django sin cadenas (2013)</h2>
                </div>
                <div class="col-lg-7">
                    <p>
                        Con ayuda de un carism�tico cazarrecompensas alem�n, un esclavo liberado sale en busca de su
                        esposa para salvarla de la esclavitud. Para ello, tendr� que lidiar con el brutal due�o de una
                        plantaci�n de algod�n en Mississippi.
                    </p>
                    <p>
                        Fiel a la tradici�n de Quentin Tarantino, �sta es una historia de violencia y despiada venganza,
                        ahora trasladada al g�nero western, pero con el particular giro de que el h�roe es un esclavo.
                        Cargada de homenajes al g�nero brillantes di�logos y actuaciones de lujo por parte de Jamie
                        Foxx,
                        Cristoph Walts, Leonardo Di Caprio y Samuel L. Jackson, "Django sin cadenas" es una brutal
                        pel�cula tan
                        sanguinaria y estilizada como todas sus predecesoras en la filmograf�a de Tarantino. Quiz� su
                        �nico
                        "pero" es su excesiva duraci�n cercana a las tres horas.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/DjangoUnchained.jpg" alt="Django Unchained poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Django Unchained</li>
                                <li>G�nero: Western</li>
                                <li>Clasificaci�n: +16</li>
                                <li>Duraci�n: 170 min</li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="row">
                <div class="col-12 titular">
                    <h2><span class="numero">6.</span>A prueba de muerte (2007)</h2>
                </div>
                <div class="col-lg-7">
                    <p>
                        "A Prueba de Muerte", sit�a a un grupo de mujeres fuera de la ciudad, enfrent�ndose contra una
                        persona misteriosa, Stuntman Mike, quien su autom�vil cl�sico ha sido parcialmente modificado
                        para soportar hasta la colisi�n m�s extrema.
                    </p>
                    <p>
                        Esta pel�cula es un tributo de Quentin Tarantino a los g�neros exploitation y slasher de las
                        d�cadas de 1960 y
                        1970. El g�nero exploitation se caracteriza por la explotaci�n de temas relacionados con la
                        sexualidad humana, la violencia y las drogas; en los 70 era frecuente ver mujeres muy sexys
                        manejando autos veloces mientras pateaban traseros y sus senos se sacud�an.
                    </p>
                    <p>
                        A Prueba de Muerte utiliza como recurso los errores intencionales (comunes en las pel�culas que
                        homenajea), por ejemplo "carretes perdidos", simulando ser una pel�cula de aquellos cines en
                        malas condiciones donde eso ocurr�a frecuentemente. Personajes femeninos indomables, salvajes y
                        que comet�an actos de violencia es otras de las caracter�sticas que vemos en la cinta.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/Death-Proof.jpg" alt="Death Proof poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Death Proof</li>
                                <li>G�nero: Acci�n/Suspenso</li>
                                <li>Clasificaci�n: +16</li>
                                <li>Duraci�n: 114 min</li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="row">
                <div class="col-12 titular">
                    <h2><span class="numero">5.</span>Jackie Brown (1997)</h2>
                </div>
                <div class="col-lg-7">
                    <p>
                        Jackie, una azafata de mediana edad, contrabandea dinero de M�xico a Los �ngeles para un
                        peligroso mafioso. Tendr� que decidir si serle leal o traicionarlo, lo que podr� costarle la
                        vida? o cambiarla para siempre.
                    </p>
                    <p>
                        La pel�cula es una historia rom�ntica entre dos personas que ya pasaron su cuarto de hora y que
                        encuentran una �ltima chance en sus vidas. El disparador es una bolsa con 500 mil d�lares. Pero
                        como el misterioso contenido de la valija de Tiempos, no es el paquete lo que importa, sino lo
                        que hace la gente alrededor de �l.Los protagonistas son Jackie Brown, una azafata de 44 a�os
                        (Grier, diosa del cine de acci�n negro de los 70) y Max Cherry (Robert Forster), un colocador de
                        fianzas de 57. Tarantino pone en el centro a dos actores que, como sus personajes, ya tuvieron
                        su momento de gloria y se juegan aqu� las �ltimas fichas. Esa correspondencia entre realidad y
                        ficci�n agrega inter�s: su infrecuente y tocante romance de veteranos da al filme su centro
                        emocional.Pero esta dimensi�n no es nueva en Tarantino. Sus filmes anteriores ten�an ese plus en
                        las relaciones de amor/lealtad/traici�n entre los personajes de Roth y Keitel en Perros de la
                        calle, o Travolta y Jackson en Tiempos violentos.
                    </p>
                    <p>
                        El director respeta el texto original de la novela "Rum Punch", de Elmore Leonard y, a la vez,
                        lo tarantiniza, agreg�ndole esos peculiares toques tan suyos (obsesiones y detalles) sin
                        transformarlos en clones de sus viejas creaciones.Cuando varios hoy lo imitan, Tarantino
                        crece:los personajes de este filme son los m�s reales que jam�s concibi�.
                        Tarantino se toma su buen tiempo para darles cuerda a sus personajes y reci�n despu�s de la hora
                        los suelta a enfrentarse. La narraci�n es cl�sica, sencilla, con planos y contraplanos que
                        evolucionan lentamente hacia cerradas tomas de los rostros de Grier y Forster.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/Jackie-Brown.jpg" alt="Jackie Brown poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Jackie Brown</li>
                                <li>G�nero: Thriller/Drama</li>
                                <li>Clasificaci�n: +13</li>
                                <li>Duraci�n: 154 min</li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="row">
                <div class="col-12 titular">
                    <h2><span class="numero">4.</span>Kill Bill Volumen 1 (2003)</h2>
                </div>
                <div class="col-lg-7">
                    <p>
                        Luego de despertar de un coma de cuatro a�os, una asesina se embarca en un viaje de venganza
                        contra el equipo de letales matones y su l�der, Bill, quienes la traicionaron e intentaron
                        matarla.
                    </p>
                    <p>
                        El volumen 1 de Kill Bill se destaca por mezclar una cantidad de g�neros de muy buena manera.
                        Porque ponerlos no es tan dif�cil, pero hacer que en ning�n momento la pel�cula se desv�e o se
                        sienta fuera de lugar, es un gran m�rito.
                    </p>
                    <p>
                        Como no pod�a faltar, hay mucha sangre y violencia explicita durante toda la pel�cula. Por lo
                        que, independiente de que Tarantino introduzca g�neros que en el papel son ?no violentos?,
                        siempre encontrar� la forma de encantarnos con sus violentos asesinatos.
                    </p>
                    <p>
                        Una de las cosas m�s importantes en el cine es que siempre va a ser mantener un veros�mil que
                        tenga coherencia con lo mismo que plantea la misma pel�cula. Ahora bien, bajo esta idea, se nos
                        presenta un mundo donde pareciera que el veros�mil es el de la vida real, claro, si obviamos la
                        inhumana capacidad de lucha de la protagonista. Pero lo divertido es que Tarantino desestima
                        reglas b�sicas de la naturaleza a favor de su pel�cula.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/Kill-Bill-vol1.jpg" alt="Kill Bill Vol. I poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Kill Bill Volume 1 </li>
                                <li>G�nero: Acci�n</li>
                                <li>Clasificaci�n: +18</li>
                                <li>Duraci�n: 110 min</li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="row">
                <div class="col-12 titular">
                    <h2><span class="numero">3.</span>Bastardos sin gloria (2009)</h2>
                </div>
                <div class="col-lg-7">
                    <p>
                        En la Francia ocupada por los nazis, Shosanna Dreyfus (M�lanie Laurent) presencia la brutal
                        ejecuci�n de su familia por �rdenes del coronel Hans Landa (Christoph Waltz). A�os despu�s, en
                        otro lugar de
                        Europa, el teniente americano Aldo Raine (Brad Pitt) entrena a soldados jud�os de �lite para
                        sabotear a los nazis.
                        Ellos tendr�n que reunirse con una actriz alemana, que trabaja como agente para los Aliados, y
                        llevar a cabo
                        una misi�n en Par�s que acabar� con el Tercer Reich. Al mismo tiempo, con una nueva identidad,
                        Shosanna est� planeando su propia venganza contra los alemanes.
                    </p>
                    <p>
                        Esta pel�cula de Tarantino, da un divertid�simo giro a la historia de la Segunda Guerra Mundial,
                        rebosante de sangre, humor negro, mucho estilo e infinitas referencias al propio cine.
                    </p>
                    <p>
                        Sin ser jud�o, Tarantino supo captar de manera evocadora la sensaci�n de indignaci�n que los
                        jud�os han sentido durante milenios por ser blanco de la violencia, la discriminaci�n y la
                        opresi�n absoluta. Parte de esto proviene de c�mo la pel�cula cambia los roles hist�ricos: los
                        jud�os, a quienes la historia casi siempre se dedica al papel de v�ctima, aqu� pueden vengarse
                        de algunos de sus perseguidores m�s notorios. Y es que los personajes que lideran las historias
                        son jud�os que consiguen virar la historia a su favor, algo que rara vez se ve en el cine.
                    </p>
                    <p>
                        Es una de sus pel�culas con mejor calificaci�n por parte de la cr�tica; especialmente porque es
                        otra demostraci�n de su maestr�a y t�cnica
                        visual, que ya se le conoce, pero tambi�n porque logra hacer que un filme violento tenga toques
                        de comedia y sea divertido en general.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/inglorious-bastards.jpg" alt="Inglourious Basters poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Inglourious Basterds </li>
                                <li>G�nero: Drama</li>
                                <li>Clasificaci�n: +16</li>
                                <li>Duraci�n: 152 min</li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="row">
                <div class="col-12 titular">
                    <h2><span class="numero">2.</span> Perros de la calle (1992)</h2>
                </div>
                <div class="col-lg-7">
                    <p>
                        Un grupo de criminales planean meticulosamente un robo de joyas que deb�a suceder sin problemas.
                        Sin embargo, cuando todo sale terriblemente mal, huyen y se re�nen en una bodega. Con bajas y un
                        herido de muerte, sospechan que hay un sopl�n entre sus filas, �pero qui�n?
                    </p>
                    <p>
                        Con su primera pel�cula Quentin Tarantino dejaba patente las se�as de identidad de lo que iba a
                        ser su cine: Escenas de violencia, el gusto por el humor negro y la incorrecci�n pol�tica,
                        numerosas referencias cinematogr�ficas y musicales, la narraci�n fragmentada tipo puzzle en la
                        que poco a poco se va componiendo la historia y algunos detalles copiados de sus directores
                        favoritos. Considerada por muchos cr�ticos la mejor pel�cula independiente de la historia.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/reservoir-dogs.png" alt="Reservoir Dogs poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Reservoir Dogs</li>
                                <li>G�nero: Drama</li>
                                <li>Clasificaci�n: +16</li>
                                <li>Duraci�n: 99 min</li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="row">
                <div class="col-12 titular">
                    <h2><span class="numero">1.</span>Tiempos Violentos (1994)</h2>
                </div>
                <div class="col-lg-7">
                    <p>
                        Pulp Fiction est� narrada en un orden no cronol�gico y cuenta tres historias entrelazadas. La
                        primera de ellas sigue al asesino a sueldo Vincent Vega mientras se ocupa de cuidar de Mia
                        Wallace. El boxeador Butch Coolidge es el protagonista de la segunda y, finalmente, la tercera
                        concierne al compa�ero de Vincent, Jules Winnfield.? Las tres historias est�n relacionadas
                        entre ellas para formar una intriga que ha sido descrita como "una trama por episodios, con
                        acontecimientos circulares que tienen un principio y un final y en cuyos desarrollos se incluyen
                        elementos y referencias a los otros episodios". Estas tres historias est�n repartidas a lo
                        largo de las seis partes de la pel�cula.
                    </p>
                    <p>
                        Superficialmente ambientada en los sitios de pandillas, calles, bares, apartamentos, casas de
                        empe�o y restaurantes de la moderna Los �ngeles, es una de las mejores y m�s innovadoras
                        pel�culas estadounidenses de su a�o, nos sumerge en una especie de tierra de fantas�a de
                        pesadilla . En ?Pulp Fiction?, el tiempo sigue volviendo sobre s� mismo y estamos atrapados en
                        un callej�n sin salida de dobles tratos, absurdo, excitaci�n y peligro, nunca completamente
                        seguros de ad�nde van las personas o por qu�.
                    </p>
                    <p>
                        La pel�cula, que fue una gran ganadora de multiples premios, es sorprendentemente violenta,
                        provocativamente obscena y profana. No solo ofender� a algunas audiencias; les ofender� el
                        infierno viviente. Tarantino tiene la intenci�n de irritar a la gente.
                    </p>
                    <p>
                        Pero no se siente como el habitual thriller de pel�cula de sangre y agallas de alta tecnolog�a,
                        esos mercenarios de estudio lanzados por Arnold Schwarzenegger o Sylvester Stallone. Esta
                        pel�cula
                        recibe su carga no de la pirotecnia de acci�n, sino de su aluvi�n el�ctrico de lenguaje, chistes
                        y di�logos, del clasicismo mordaz de los a�os 70 de su estilo de c�mara de larga duraci�n y su
                        elenco inteligente, poco convencional y extra�amente sexy.
                    </p>

                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/pulp-fiction.jpg" alt="Pulp Fiction poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Pulp Fiction</li>
                                <li>G�nero: Drama</li>
                                <li>Clasificaci�n: +18</li>
                                <li>Duraci�n: 154 min</li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="footer-container">
            <div class="footer-title">
                <h1>Gabriela Soruco</h1>
                <span class="footer-subtitle">FullStack Developer</span>
            </div>

            <div class="footer-socials">
                <a href="https://www.facebook.com" target="_blank" class="footer-social"><i
                        class="fab fa-facebook-f"></i></a>
                <a href="https://www.twitter.com" target="_blank" class="footer-social"><i
                        class="fab fa-twitter"></i></a>
                <a href="https://www.instagram.com" target="_blank" class="footer-social"><i
                        class="fab fa-instagram"></i></a>
            </div>
            <div class="footer-footer">
                <span class="footer-text">Made with <i class="fas fa-heart"></i> and <i class="fas fa-coffee"></i> in
                    Buenos Aires,
                    Argentina
                </span>
                <span class="footer-copy"><i class="far fa-copyright"></i> All right reserved</span>
            </div>
        </div>
    </footer>

    <!-- Bootstrap Popper -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous">
    </script>
    <!--    Bootstrap JS -->
    <script src="./public/libs/bootstrap/dist/js/bootstrap.min.js"></script>
</body>

</html>