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
                            <a class="nav-link active" aria-current="page" href="#biografia">Biografía</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#filmografia">Filmografía</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#ranking">Top películas</a>
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
                        <p>Su IQ es de 160, con 14 años ya escribía guiones</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="./public/img/banner2.jpg" class="d-block w-100" alt="Quentin Taratino banner">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Plan de vida</h5>
                        <p>Ha declarado que quiere retirarse a los 60, cuando haya hecho 10 películas. </p>
                    </div>
                </div>
                <div class="carousel-item banner">
                    <img src="./public/img/banner3.jpg" class="d-block w-100" alt="Quentin Tarantino banner">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Reservoir dogs le abrió las puertas de Hollywood</h5>
                        <p>Tuvo un debut impecable como director y guionista que se convirtió en una cinta de culto y a
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
                <h1>Biografía</h1>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <p>
                        Quentin Jerome Tarantino es director de cine, guionista, productor y actor, nacido el 27 de
                        marzo de 1963, en Knoxville, Tennessee. Algunas de sus películas se encuentran entre las obras
                        cinematográficas más importantes de finales del siglo XX y de lo que va desde el Siglo XXI
                    </p>
                    <p>
                        Las películas de Tarantino se caracterizan por tener un gran contenido de violencia (la mayoría
                        de sus personajes se encuentran en la delgada línea entre lo moral y lo inmoral), privilegian el
                        diálogo, tienen un elenco coral, juegan con las estructuras narrativas y desarrollan el humor
                        negro. Quentin Tarantino ha ganado dos premios Oscar al "Mejor guión original" por sus
                        películas: Pulp Fiction y Django Unchained. Además de otros dos Globos de Oro, dos premios BAFTA
                        y una ?Palma de Oro? en el Festival de Cine de Cannes. También ha participado en series de
                        televisión y ha sido productor de varias películas de terror y artes marciales.
                    </p>
                    <p>
                        Uno de los primeros acercamientos de Tarantino al cine fue como espectador de películas de artes
                        marciales; otro, como amante del cine de terror: cuando era niño su película favorita era Abbott
                        y Castello conoce a Frankenstein, de 1948, donde el humor y la muerte se entremezclan.
                    </p>
                    <p>
                        Para mantenerse económicamente, Tarantino consiguió un trabajo en un cine porno y luego en una
                        tienda de videos en Manhattan Beach, este último sería fundamental para su aprendizaje: <span
                            class="textual">?Era el
                            mejor trabajo que tenía hasta que fui director?</span>, dijo. Fue allí donde escribió sus
                        dos primeros
                        guiones: 'Asesinos natos' y 'Amor a quemarropa'. Con el dinero que sacó de su venta financió su
                        primera película, 'Reservoir dogs', que contó con Harvey Keitel desde el primer momento debido
                        al guión. En 1992 inició su carrera como cineasta independiente con el estreno de Reservoir
                        Dogs, considerada por la revista Empire como «la mejor película independiente de todos los
                        tiempos».
                    </p>
                    <p>
                        Más tarde diría: <span class="textual">?Cuando la gente me pregunta si fui a la escuela de cine,
                            yo les digo: no, fui a ver películas?</span>.
                    </p>
                </div>
                <div class="col-lg-4">
                    <figure>
                        <img src="./public/img/Quentin.jpg" alt="quentin tarantino">
                        <figcaption class="descripcion">
                            Su talento ha sido premiado con múltiples galardones entre los que destacan 2 premios Óscar
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
                <h1>Filmografía</h1>
            </div>
        </div>
        <div class="container">
            <div class="row g-1 container-img">
                <div class="col-12 imagen"><img src="./public/img/onceUponAtime-poster.jpg"
                        alt="Once Upon a time... poster">
                    <div class="link-movie">
                        <a href="https://www.pelisplus.io/pelicula/habia-una-vez-en-hollywood/" target="_blank">
                            <h2>Érase una vez... en Hollywood</h2>
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 imagen"><img src="./public/img/the-hateful-eight-poster.jpeg" alt="">
                    <div class="link-movie">
                        <a href="https://cuevana3.io/833/the-hateful-eight" target="_blank">
                            <h2>Los 8 más odiados</h2>
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
                    <h2><span class="numero">10.</span>Los 8 más odiados (2015)</h2>
                </div>
                <div class="col-lg-7">
                    <p>
                        ?Los Ocho Más Odiados? nos involucra en las misiones de dos caza-recompensas el Mayor Marquis
                        Warren (Samuel L. Jackson), un hombre de color retirado de la división de caballería; y John
                        Ruth (Kurt Russell), quienes llevan a como prisionera a Daisy Domergue (Jennifer Jason Leigh),
                        para cobrar una jugosa cantidad de dinero en un pueblo llamado Red Rock. Pero una fuerte
                        tormenta de nieve les obliga a quedarse en una posada con otros 5 desconocidos. Es ahí donde
                        empezará un enfrentamiento de enigmas, dudas, enfrentamientos y paranoia entre estos sujetos que
                        los llevará a mostrar sus oscuros pasados y sus metas sin importar los obstáculos.
                    </p>
                    <p>Para los que ya están familiarizados con el estilo de ?spaghetti western? que emplea Tarantino en
                        sus películas, este será un ?tributo?, ?reciclaje? y ?uso de técnicas? en la cinematografía en
                        una compilación de 3 horas de duración con su acostumbrada violencia, y lenguaje vulgar
                        explícito. A diferencia de sus otras cintas, esta es la que produce más giros y misterios en los
                        personajes a lo largo de esta misma. </p>
                    <p>
                        Otro de los puntos cruciales de esta cinta es su música. Y sin duda Tarantino en esta película
                        buscó al hombre indicado: Ennio Morricone, quien logra atraparnos desde principio a fin y darle
                        intensidad a momentos climáticos a la película; y de paso demostrando porque es uno de los más
                        grandes compositores del cine.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/the-heightful8.jpg" alt="The Hateful 8 poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: The Hateful Eight</li>
                                <li>Género: Suspenso</li>
                                <li>Clasificación: +16</li>
                                <li>Duración: 167 min</li>
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
                        Después de borrar dos nombres de su Lista de la Muerte, ?La novia? pone la mira en Budd y Elle
                        Driver, los únicos sobrevivientes del equipo de asesinos que la traicionaron. Todo conduce al
                        enfrentamiento final con Bill, su exmaestro y expareja que ordenó su asesinato.
                    </p>
                    <p>
                        La segunda parte en la épica de venganza de Quentin Tarantino, "Kill Bill: La venganza, volumen
                        2" tiene todo lo que hace buena a su predecesora. Sin embargo, ésta tiene más de western,
                        contrario a la primera parte que es más cerca al cine de artes marciales. Quizá haya menos
                        combates, pero la intriga, violencia y diálogos geniales siguen presentes.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/Kill-bill-vol2.jpg" alt="">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Kill Bill Vol. 2</li>
                                <li>Género: Acción</li>
                                <li>Clasificación: +16</li>
                                <li>Duración: 136 min</li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="row">
                <div class="col-12 titular">
                    <h2><span class="numero">8.</span>Érase una vez... en Hollywood (2019)</h2>
                </div>
                <div class="col-lg-7">
                    <p>
                        El actor Rick Dalton es la antigua estrella de un western de televisión. Él y su leal doble de
                        acción, Cliff Booth, buscan el éxito en un Hollywood que ya no reconocen. Sin embargo, descubre
                        que tienen por vecina a la famosa actriz Sharon Tate, esposa del cineasta Roman Polanski.
                    </p>
                    <p>
                        La ?novena de Tarantino? es, antes que nada, una carta de amor al Hollywood con el que creció y
                        le fascinó. Después de ?Bastardos sin gloria? es la segunda película en la que lidia con
                        acontecimientos reales, a partir de los que construye una comedia más contenida en su violencia
                        y diálogo que su filmografía previa.
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
                                <li>Género: Drama</li>
                                <li>Clasificación: +18</li>
                                <li>Duración: 165 min</li>
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
                        Con ayuda de un carismático cazarrecompensas alemán, un esclavo liberado sale en busca de su
                        esposa para salvarla de la esclavitud. Para ello, tendrá que lidiar con el brutal dueño de una
                        plantación de algodón en Mississippi.
                    </p>
                    <p>
                        Fiel a la tradición de Quentin Tarantino, ésta es una historia de violencia y despiada venganza,
                        ahora trasladada al género western, pero con el particular giro de que el héroe es un esclavo.
                        Cargada de homenajes al género brillantes diálogos y actuaciones de lujo por parte de Jamie
                        Foxx,
                        Cristoph Walts, Leonardo Di Caprio y Samuel L. Jackson, "Django sin cadenas" es una brutal
                        película tan
                        sanguinaria y estilizada como todas sus predecesoras en la filmografía de Tarantino. Quizá su
                        único
                        "pero" es su excesiva duración cercana a las tres horas.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/DjangoUnchained.jpg" alt="Django Unchained poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Django Unchained</li>
                                <li>Género: Western</li>
                                <li>Clasificación: +16</li>
                                <li>Duración: 170 min</li>
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
                        "A Prueba de Muerte", sitúa a un grupo de mujeres fuera de la ciudad, enfrentándose contra una
                        persona misteriosa, Stuntman Mike, quien su automóvil clásico ha sido parcialmente modificado
                        para soportar hasta la colisión más extrema.
                    </p>
                    <p>
                        Esta película es un tributo de Quentin Tarantino a los géneros exploitation y slasher de las
                        décadas de 1960 y
                        1970. El género exploitation se caracteriza por la explotación de temas relacionados con la
                        sexualidad humana, la violencia y las drogas; en los 70 era frecuente ver mujeres muy sexys
                        manejando autos veloces mientras pateaban traseros y sus senos se sacudían.
                    </p>
                    <p>
                        A Prueba de Muerte utiliza como recurso los errores intencionales (comunes en las películas que
                        homenajea), por ejemplo "carretes perdidos", simulando ser una película de aquellos cines en
                        malas condiciones donde eso ocurría frecuentemente. Personajes femeninos indomables, salvajes y
                        que cometían actos de violencia es otras de las características que vemos en la cinta.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/Death-Proof.jpg" alt="Death Proof poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Death Proof</li>
                                <li>Género: Acción/Suspenso</li>
                                <li>Clasificación: +16</li>
                                <li>Duración: 114 min</li>
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
                        Jackie, una azafata de mediana edad, contrabandea dinero de México a Los Ángeles para un
                        peligroso mafioso. Tendrá que decidir si serle leal o traicionarlo, lo que podrá costarle la
                        vida? o cambiarla para siempre.
                    </p>
                    <p>
                        La película es una historia romántica entre dos personas que ya pasaron su cuarto de hora y que
                        encuentran una última chance en sus vidas. El disparador es una bolsa con 500 mil dólares. Pero
                        como el misterioso contenido de la valija de Tiempos, no es el paquete lo que importa, sino lo
                        que hace la gente alrededor de él.Los protagonistas son Jackie Brown, una azafata de 44 años
                        (Grier, diosa del cine de acción negro de los 70) y Max Cherry (Robert Forster), un colocador de
                        fianzas de 57. Tarantino pone en el centro a dos actores que, como sus personajes, ya tuvieron
                        su momento de gloria y se juegan aquí las últimas fichas. Esa correspondencia entre realidad y
                        ficción agrega interés: su infrecuente y tocante romance de veteranos da al filme su centro
                        emocional.Pero esta dimensión no es nueva en Tarantino. Sus filmes anteriores tenían ese plus en
                        las relaciones de amor/lealtad/traición entre los personajes de Roth y Keitel en Perros de la
                        calle, o Travolta y Jackson en Tiempos violentos.
                    </p>
                    <p>
                        El director respeta el texto original de la novela "Rum Punch", de Elmore Leonard y, a la vez,
                        lo tarantiniza, agregándole esos peculiares toques tan suyos (obsesiones y detalles) sin
                        transformarlos en clones de sus viejas creaciones.Cuando varios hoy lo imitan, Tarantino
                        crece:los personajes de este filme son los más reales que jamás concibió.
                        Tarantino se toma su buen tiempo para darles cuerda a sus personajes y recién después de la hora
                        los suelta a enfrentarse. La narración es clásica, sencilla, con planos y contraplanos que
                        evolucionan lentamente hacia cerradas tomas de los rostros de Grier y Forster.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/Jackie-Brown.jpg" alt="Jackie Brown poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Jackie Brown</li>
                                <li>Género: Thriller/Drama</li>
                                <li>Clasificación: +13</li>
                                <li>Duración: 154 min</li>
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
                        Luego de despertar de un coma de cuatro años, una asesina se embarca en un viaje de venganza
                        contra el equipo de letales matones y su líder, Bill, quienes la traicionaron e intentaron
                        matarla.
                    </p>
                    <p>
                        El volumen 1 de Kill Bill se destaca por mezclar una cantidad de géneros de muy buena manera.
                        Porque ponerlos no es tan difícil, pero hacer que en ningún momento la película se desvíe o se
                        sienta fuera de lugar, es un gran mérito.
                    </p>
                    <p>
                        Como no podía faltar, hay mucha sangre y violencia explicita durante toda la película. Por lo
                        que, independiente de que Tarantino introduzca géneros que en el papel son ?no violentos?,
                        siempre encontrará la forma de encantarnos con sus violentos asesinatos.
                    </p>
                    <p>
                        Una de las cosas más importantes en el cine es que siempre va a ser mantener un verosímil que
                        tenga coherencia con lo mismo que plantea la misma película. Ahora bien, bajo esta idea, se nos
                        presenta un mundo donde pareciera que el verosímil es el de la vida real, claro, si obviamos la
                        inhumana capacidad de lucha de la protagonista. Pero lo divertido es que Tarantino desestima
                        reglas básicas de la naturaleza a favor de su película.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/Kill-Bill-vol1.jpg" alt="Kill Bill Vol. I poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Kill Bill Volume 1 </li>
                                <li>Género: Acción</li>
                                <li>Clasificación: +18</li>
                                <li>Duración: 110 min</li>
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
                        En la Francia ocupada por los nazis, Shosanna Dreyfus (Mélanie Laurent) presencia la brutal
                        ejecución de su familia por órdenes del coronel Hans Landa (Christoph Waltz). Años después, en
                        otro lugar de
                        Europa, el teniente americano Aldo Raine (Brad Pitt) entrena a soldados judíos de élite para
                        sabotear a los nazis.
                        Ellos tendrán que reunirse con una actriz alemana, que trabaja como agente para los Aliados, y
                        llevar a cabo
                        una misión en París que acabará con el Tercer Reich. Al mismo tiempo, con una nueva identidad,
                        Shosanna está planeando su propia venganza contra los alemanes.
                    </p>
                    <p>
                        Esta película de Tarantino, da un divertidísimo giro a la historia de la Segunda Guerra Mundial,
                        rebosante de sangre, humor negro, mucho estilo e infinitas referencias al propio cine.
                    </p>
                    <p>
                        Sin ser judío, Tarantino supo captar de manera evocadora la sensación de indignación que los
                        judíos han sentido durante milenios por ser blanco de la violencia, la discriminación y la
                        opresión absoluta. Parte de esto proviene de cómo la película cambia los roles históricos: los
                        judíos, a quienes la historia casi siempre se dedica al papel de víctima, aquí pueden vengarse
                        de algunos de sus perseguidores más notorios. Y es que los personajes que lideran las historias
                        son judíos que consiguen virar la historia a su favor, algo que rara vez se ve en el cine.
                    </p>
                    <p>
                        Es una de sus películas con mejor calificación por parte de la crítica; especialmente porque es
                        otra demostración de su maestría y técnica
                        visual, que ya se le conoce, pero también porque logra hacer que un filme violento tenga toques
                        de comedia y sea divertido en general.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/inglorious-bastards.jpg" alt="Inglourious Basters poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Inglourious Basterds </li>
                                <li>Género: Drama</li>
                                <li>Clasificación: +16</li>
                                <li>Duración: 152 min</li>
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
                        Un grupo de criminales planean meticulosamente un robo de joyas que debía suceder sin problemas.
                        Sin embargo, cuando todo sale terriblemente mal, huyen y se reúnen en una bodega. Con bajas y un
                        herido de muerte, sospechan que hay un soplón entre sus filas, ¿pero quién?
                    </p>
                    <p>
                        Con su primera película Quentin Tarantino dejaba patente las señas de identidad de lo que iba a
                        ser su cine: Escenas de violencia, el gusto por el humor negro y la incorrección política,
                        numerosas referencias cinematográficas y musicales, la narración fragmentada tipo puzzle en la
                        que poco a poco se va componiendo la historia y algunos detalles copiados de sus directores
                        favoritos. Considerada por muchos críticos la mejor película independiente de la historia.
                    </p>
                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/reservoir-dogs.png" alt="Reservoir Dogs poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Reservoir Dogs</li>
                                <li>Género: Drama</li>
                                <li>Clasificación: +16</li>
                                <li>Duración: 99 min</li>
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
                        Pulp Fiction está narrada en un orden no cronológico y cuenta tres historias entrelazadas. La
                        primera de ellas sigue al asesino a sueldo Vincent Vega mientras se ocupa de cuidar de Mia
                        Wallace. El boxeador Butch Coolidge es el protagonista de la segunda y, finalmente, la tercera
                        concierne al compañero de Vincent, Jules Winnfield.? Las tres historias están relacionadas
                        entre ellas para formar una intriga que ha sido descrita como "una trama por episodios, con
                        acontecimientos circulares que tienen un principio y un final y en cuyos desarrollos se incluyen
                        elementos y referencias a los otros episodios". Estas tres historias están repartidas a lo
                        largo de las seis partes de la película.
                    </p>
                    <p>
                        Superficialmente ambientada en los sitios de pandillas, calles, bares, apartamentos, casas de
                        empeño y restaurantes de la moderna Los Ángeles, es una de las mejores y más innovadoras
                        películas estadounidenses de su año, nos sumerge en una especie de tierra de fantasía de
                        pesadilla . En ?Pulp Fiction?, el tiempo sigue volviendo sobre sí mismo y estamos atrapados en
                        un callejón sin salida de dobles tratos, absurdo, excitación y peligro, nunca completamente
                        seguros de adónde van las personas o por qué.
                    </p>
                    <p>
                        La película, que fue una gran ganadora de multiples premios, es sorprendentemente violenta,
                        provocativamente obscena y profana. No solo ofenderá a algunas audiencias; les ofenderá el
                        infierno viviente. Tarantino tiene la intención de irritar a la gente.
                    </p>
                    <p>
                        Pero no se siente como el habitual thriller de película de sangre y agallas de alta tecnología,
                        esos mercenarios de estudio lanzados por Arnold Schwarzenegger o Sylvester Stallone. Esta
                        película
                        recibe su carga no de la pirotecnia de acción, sino de su aluvión eléctrico de lenguaje, chistes
                        y diálogos, del clasicismo mordaz de los años 70 de su estilo de cámara de larga duración y su
                        elenco inteligente, poco convencional y extrañamente sexy.
                    </p>

                </div>
                <div class="col-lg-5">
                    <figure>
                        <img src="./public/img/pulp-fiction.jpg" alt="Pulp Fiction poster">
                        <figcaption>
                            <ul>
                                <li>Titulo original: Pulp Fiction</li>
                                <li>Género: Drama</li>
                                <li>Clasificación: +18</li>
                                <li>Duración: 154 min</li>
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