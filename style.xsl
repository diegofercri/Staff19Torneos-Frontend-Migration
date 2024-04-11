<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet [
<!ENTITY nbsp "&#160;">
<!ENTITY copy "&#169;">
<!ENTITY reg "&#174;">
<!ENTITY trade "&#8482;">
<!ENTITY mdash "&#8212;">
<!ENTITY ldquo "&#8220;">
<!ENTITY rdquo "&#8221;">
<!ENTITY pound "&#163;">
<!ENTITY yen "&#165;">
<!ENTITY euro "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"
                doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />
    <xsl:template match="/">
        
        <html lang="es">
            
            <head>
                <title>Staff 19 Torneos</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
                
                <!-- Custom CSS -->
                <link rel="stylesheet" href="./css/style.css" />
                <link rel="stylesheet" href="./css/style-generals.css" />
                <link rel="stylesheet" href="./css/navbar.css" />
                
                <!-- Font Awesome -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
            </head>
            
            <body class="bg-color-2">
                <nav id="navbarStaff" class="navbarStaff">
                    <div id="toggle-menu__open" class="toggle-menu toggle-menu__open">
                        <i class="fa fa-bars" aria-hidden="true"></i>
                    </div>
                    <div id="toggle-menu__close" class="toggle-menu toggle-menu__close">
                        <i class="fa fa-close" aria-hidden="true"></i>
                    </div>
                    <img src="./assets/logo.svg" alt="Staff 19 torneos logo" id="navbarStaff-logo" class="navbarStaff-logo" />
                    <ul id="main-menu" class="main-menu d-flex flex-column list-unstyled m-0">
                        <li class="d-flex">
                            <a href="./index.html#start" class="color-ed nav-link toggle-menu__close">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-home" aria-hidden="true"></i>
                                    Inicio
                                </div>
                            </a>
                        </li>
                        <li class="d-flex">
                            <a href="#contact" class="color-ed nav-link toggle-menu__close">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-address-book" aria-hidden="true"></i>
                                    Contacto
                                </div>
                            </a>
                        </li>
                        <li class="d-flex">
                            <a id="toggle-menu__close-3" href="./pages/tickets/tickets.html" class="color-ed nav-link">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-ticket" aria-hidden="true"></i>
                                    Entradas
                                </div>
                            </a>
                        </li>
                        <li class="dropdownStaff nav-link">
                            <a id="dropdownStaff-toggle0" class="dropdownStaff-toggle d-flex nav-link">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-trophy" aria-hidden="true"></i>
                                    Eventos
                                </div>
                                <i class="fa fa-angle-down dropdownStaff-arrow" aria-hidden="true"></i>
                            </a>
                            <div id="dropdownStaff-list0" class="dropdownStaff-list">
                                <ul class="list-unstyled">
                                    <li class="d-flex text-end">
                                        <a href="./pages/events/planned/planned-events.html"
                                           class="color-ed dropdownStaff__link nav-link">Planificados</a>
                                    </li>
                                    <li class="d-flex text-end">
                                        <a href="./pages/events/in-progress/in-progress-events.html"
                                           class="color-ed dropdownStaff__link nav-link">En Progreso</a>
                                    </li>
                                    <li class="d-flex text-end">
                                        <a href="./pages/events/ended/ended-events.html"
                                           class="color-ed dropdownStaff__link nav-link">Terminados</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="dropdownStaff nav-link">
                            <a id="dropdownStaff-toggle1" class="dropdownStaff-toggle d-flex nav-link">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                    Inscripciones
                                </div>
                                <i class="fa fa-angle-down dropdownStaff-arrow" aria-hidden="true"></i>
                            </a>
                            <div id="dropdownStaff-list1" class="dropdownStaff-list">
                                <ul class="list-unstyled">
                                    <li class="dropdownStaff__item d-flex text-end">
                                        <a href="./pages/registrations/players.html"
                                           class="color-ed dropdownStaff__link nav-link">Jugadores</a>
                                    </li>
                                    <li class="dropdownStaff__item d-flex text-end">
                                        <a href="./pages/registrations/teams.html"
                                           class="color-ed dropdownStaff__link nav-link">Equipos</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </nav>
                
                <main>
                    <div class="d-flex row row-cols-1 row-cols-xxl-2 w-100 m-0">
                        <section id="{index/start/@id}" class="col-xxl-12 bg-color-2">
                            <div class="d-flex flex-column h-100 align-items-center justify-content-evenly mx-5">
                                <img src="assets/logo.svg" class="logo" alt="Logo Staff 19 Torneos" />
                                <div>
                                    <h1 class="title-1 text-center mt-4"><xsl:value-of select="index/start/title"/></h1>
                                    <h2 class="title-2 text-center mt-3"><xsl:value-of select="index/start/subtitle"/></h2>
                                </div>
                                <div class="d-flex justify-content-evenly w-100">
                                    <xsl:for-each select="index/start/rrss/network">
                                        <a href="{@url}" target="_blank" class="text-decoration-none text-color-1">
                                            <div class="rrss-item d-flex align-items-center justify-content-center">
                                                <i class="fa {@icon} rrss-icon fs-3" aria-hidden="true"></i>
                                            </div>
                                        </a>
                                    </xsl:for-each>
                                </div>
                            </div>
                        </section>
                        <section id="{index/events/@id}" class="col bg-color-3 d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h1 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/events/@title"/></h1>
                            </div>
                            <xsl:choose>
                                <xsl:when test="index/events/no-event/@boolean='true'">
                                    <div><p class="text-color-6"><xsl:value-of select="index/events/no-event/text"/></p></div>
                                </xsl:when>
                                <xsl:otherwise>
                                    <div class="list-group rounded-0 gap-3 w-100">
                                        <xsl:for-each select="index/events/event">
                                            <a href="{@url}" class="list-group-item flex-column align-items-start rounded-2 bg-color-4 border-0 border-color-5 p-3" aria-current="true">
                                                <div class="d-flex w-100 align-items-start justify-content-between gap-3">
                                                    <h5 class="mb-3 title-3 text-color-7"><xsl:value-of select="title"/></h5>
                                                    <div class="d-flex gap-1 flex-wrap justify-content-end">
                                                        <xsl:for-each select="tags/tag">
                                                            <xsl:choose>
                                                                <xsl:when test=".='new'">
                                                                    <span class="badge fw-bold font-monospace rounded-3 px-2 text-uppercase bg-color-1 "><xsl:value-of select="."/></span>
                                                                </xsl:when>
                                                                <xsl:when test=".='futsal'">
                                                                    <span class="badge fw-bold font-monospace rounded-3 px-2 text-uppercase bg-primary "><xsl:value-of select="."/></span>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <span class="badge fw-bold font-monospace rounded-3 px-2 text-uppercase bg-success"><xsl:value-of select="."/></span>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                        </xsl:for-each>
                                                    </div>
                                                </div>
                                                <p class="mb-1 text-color-6"><xsl:value-of select="location"/></p>
                                                <small class="text-color-6"><xsl:value-of select="date"/></small>
                                            </a>
                                        </xsl:for-each>
                                    </div>
                                </xsl:otherwise>
                            </xsl:choose>
                        </section>
                        <section id="{index/aboutus/@id}" class="bg-color-2 bg-color-3-lg col d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h1 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/aboutus/@title"/></h1>
                            </div>
                            <div>
                                <xsl:for-each select="index/aboutus/p">
                                    <p><xsl:value-of select="."/></p>
                                </xsl:for-each>
                            </div>
                        </section>
                        <section id="{index/sports/@id}" class="col bg-color-3 bg-color-2-lg d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h1 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/sports/@title"/></h1>
                            </div>
                            <div>
                                
                                <div class="row d-flex align-items-center justify-content-center">
                                    <xsl:for-each select="index/sports/sport">
                                        <div class="col-12 col-sm-6 mt-4">
                                            <div class="card p-4 bg-color-5 rounded-2 d-flex align-items-center justify-content-center title-3">
                                                <xsl:value-of select="."/>
                                            </div>
                                        </div>
                                    </xsl:for-each>
                                    <div class="col-12 col-md-3 d-flex justify-content-center mt-4">
                                        <div class="p-4 bg-color-5 rounded-2 d-flex justify-content-center"
                                             style="width: fit-content;">
                                            <i class="fa fa-plus" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-5 mt-4">
                                        <div class="p-4 bg-color-5 rounded-2 d-flex justify-content-center">
                                            <h3 class="card-title title-3 text-center">Otros Deportes</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section id="contact" class="col bg-color-2 d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h1 class="title-1 text-color-1 mb-4">Contacto</h1>
                            </div>
                            <div class="d-flex h-100 align-items-end">
                                <ul class="list-unstyled">
                                    <li class="mb-4">
                                        <ul class="list-unstyled">
                                            <a class="fs-5 text-decoration-none text-color-7 title-3">Whatsapp:</a>
                                            <ul class="list-unstyled mt-2">
                                                <li>
                                                    <a href="https://wa.link/p33vqo"
                                                       class="text-decoration-none text-color-6 link"><i class="fa fa-whatsapp"
                                                                                                          aria-hidden="true"></i> Adrián</a>
                                                </li>
                                                <li>
                                                    <a href="https://wa.link/wxalti"
                                                       class="text-decoration-none text-color-6 link"><i class="fa fa-whatsapp"
                                                                                                          aria-hidden="true"></i> Diego</a>
                                                </li>
                                            </ul>
                                        </ul>
                                    </li>
                                    <li class="mb-4">
                                        <ul class="list-unstyled">
                                            <a class="fs-5 text-decoration-none text-color-7 title-3">Instagram:</a>
                                            <ul class="list-unstyled mt-2">
                                                <li>
                                                    <a href="https://www.instagram.com/staff19torneos/"
                                                       class="text-decoration-none text-color-6 link"><i class="fa fa-instagram"
                                                                                                          aria-hidden="true"></i> staff19torneos</a>
                                                </li>
                                            </ul>
                                        </ul>
                                    </li>
                                    <li>
                                        <ul class="list-unstyled">
                                            <a class="fs-5 text-decoration-none text-color-7 title-3">e-Mail:</a>
                                            <ul class="list-unstyled mt-2">
                                                <li>
                                                    <a href="mailto:staff19torneos@gmail.com"
                                                       class="text-decoration-none text-color-6 link"><i class="fa fa-envelope-o"
                                                                                                          aria-hidden="true"></i> staff19torneos@gmail.com</a>
                                                </li>
                                            </ul>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </section>
                        <footer class="col-xxl-12 d-flex flex-column align-items-center justify-content-center bg-color-5">
                            <div>
                                <a>&copy; <a id="year"></a> Staff19 Torneos. Todos los derechos reservados.</a>
                            </div>
                            <div>
                                <a>Designed and developed by @diego_fercri</a>
                            </div>
                        </footer>
                    </div>
                </main>
                
                <!-- Bootstrap JavaScript Libraries -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                        crossorigin="anonymous"></script>
                
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
                        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
                        crossorigin="anonymous"></script>
                
                <!-- Custom JavaScript -->
                <script src="./js/navbar.js"></script>
                
                <script src="./js/year.js"></script>
                
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>