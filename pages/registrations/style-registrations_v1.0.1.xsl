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
                <title><xsl:value-of select="index/title"/></title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
                
                <!-- Custom CSS -->
                <link rel="stylesheet" href="{index/route}css/1.0.1/style.css" />
                <link rel="stylesheet" href="{index/route}css/1.0.1/style-generals.css" />
                <link rel="stylesheet" href="{index/route}css/1.0.1/navbar.css" />
                
                <!-- Font Awesome -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
                
                <!-- Favicon -->
                <link rel="icon" type="image/svg+xml" href="{index/route}/assets/favicon.svg" />
                
                <!-- Apple Touch Icon -->
                <link rel="apple-touch-icon" href="{index/route}/images/icons/apple-touch-icon.png" />
                
                <!-- Safari Pinned Tab Icon -->
                <link rel="mask-icon" href="{index/route}/images/icons/safari-pinned-tab.svg" color="#252525" />
                
                <!-- MS Tiles -->
                <link rel="manifest" href="{index/route}/images/icons/manifest.webmanifest" />
                <meta name="msapplication-config" content="{index/route}/images/icons/browserconfig.xml" />
                
                <!-- Canonical URL -->
                <link rel="canonical" href="https://staff19torneos.com/pages/registrations/{index/@canonical}.xml" />
            </head>
            
            <body class="bg-color-2">
                <nav id="navbarStaff" class="navbarStaff">
                    <div id="toggle-menu__open" class="toggle-menu toggle-menu__open">
                        <i class="fa fa-bars" aria-hidden="true"></i>
                    </div>
                    <div id="toggle-menu__close" class="toggle-menu toggle-menu__close">
                        <i class="fa fa-close" aria-hidden="true"></i>
                    </div>
                    <img src="{index/logo/@url}" alt="{index/logo}" id="navbarStaff-logo" class="navbarStaff-logo" />
                    <ul id="main-menu" class="main-menu d-flex flex-column list-unstyled m-0">
                        <xsl:for-each select="index/nav/item">
                            <li class="d-flex">
                                <a href="{@url}" class="text-color-1 nav-link toggle-menu__close">
                                    <div class="d-flex align-items-center">
                                        <i class="fa {@icon}" aria-hidden="true"></i>
                                        <xsl:value-of select="."/>
                                    </div>
                                </a>
                            </li>
                        </xsl:for-each>
                        <xsl:for-each select="index/nav/dropdown">
                            <li class="dropdownStaff nav-link">
                                <a id="dropdownStaff-toggle{@id}" class="text-color-1 dropdownStaff-toggle d-flex nav-link">
                                    <div class="d-flex align-items-center">
                                        <i class="fa {@icon}" aria-hidden="true"></i>
                                        <xsl:value-of select="@name"/>
                                    </div>
                                    <i class="fa fa-angle-down dropdownStaff-arrow" aria-hidden="true"></i>
                                </a>
                                <div id="dropdownStaff-list{@id}" class="dropdownStaff-list">
                                    <ul class="list-unstyled">
                                        <xsl:for-each select="item">
                                            <li class="d-flex text-end">
                                                <a href="{@url}" class="text-color-1 dropdownStaff__link nav-link"><xsl:value-of select="."/></a>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                            </li>
                        </xsl:for-each>
                    </ul>
                    <div class="position-absolute w-100 d-flex justify-content-center bottom-0 my-3">
                        <button type="button" class="btn px-1 py-0 buttonStaff-3" style="font-size: 0.8rem" data-bs-toggle="modal" data-bs-target="#privacy_policy">
                            Política de Privacidad
                        </button>
                        <script>
                            const privacy_policy = new bootstrap.Modal(
                            document.getElementById("privacy_policy"),
                            options,
                            );
                        </script>
                    </div>
                </nav>
                
                <main>
                    <div class="modal fade" id="privacy_policy" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" role="dialog" aria-labelledby="modalTitleId" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-lg" role="document">
                            <div class="modal-content bg-color-2">
                                <div class="modal-header">
                                    <h5 class="modal-title title-1 fs-3 text-color-1" id="modalTitleId">Política de Privacidad</h5>
                                    <button type="button" class="btn-close bg-color-1" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body fw-light" style="font-family: rubik, sans-serif;">
                                    <p>staff19torneos.com para proteger los derechos individuales, sobre todo en relación con los tratamientos
                                        automatizados y con voluntad de ser transparentes con el Usuario, ha establecido una política que recoge el
                                        conjunto de dichos tratamientos, los fines perseguidos por estos últimos, la legitimidad de los mismos y
                                        también los instrumentos a disposición del Usuario para que pueda ejercer sus derechos.
                                        La navegación en este sitio web implica la total aceptación de las siguientes disposiciones y condiciones de
                                        utilización. Se aceptará la utilización de cookies. En caso de no estar de acuerdo envía un correo electrónico
                                        a privacidad@staff19torneos.com
                                    </p>
                                    <p>La versión actualizada de esta política de privacidad es la única aplicable durante la duración del uso del
                                        sitio web hasta que no haya otra versión que la sustituya.
                                        Para una más información complementaria sobre la protección de datos personales te invitamos a consultar
                                        la página web de la AEPD (Agencia Española de Protección de Datos) https://www.agpd.es
                                        /portalwebAGPD/index-ides-idphp.php
                                    </p>
                                    <h6 class="title-3 text-color-1 fw-light mt-4">Recogida de datos</h6>
                                    <p>Tus datos son recogidos por el TITULAR.
                                        Un dato de carácter personal se refiere a toda la información referida a una persona física identificada o
                                        identificable (persona afectada). Se entiende como identificable una persona que pueda ser identificada,
                                        directa o indirectamente, sobre todo por referencia a un nombre, un número de identificación (DNI, NIF,
                                        NIE, pasaporte) o a uno o varios elementos específicos, propios a su identidad física, fisiológica, genética,
                                        psíquica, económica, cultural o social.
                                    </p>
                                    <p>Los datos que con carácter general serán recopilados son: Nombre y apellidos, dirección, correo electrónico,
                                        número de teléfono, fecha de nacimiento, datos relacionados con medios de pago. Se podrán recopilar otro
                                        tipo de datos siendo informado el Usuario.
                                    </p>
                                    <h6 class="title-3 text-color-1 fw-light mt-4">¿Con qué finalidad se tratan tus datos personales?</h6>
                                    <p>La finalidad del tratamiento de los datos personales que se puedan recoger son usarlos principalmente por el
                                        TITULAR para la gestión de su relación contigo, poder ofrecerte productos y servicios de acuerdo con tus
                                        intereses, mejorar tu experiencia de usuario y en su caso, para el tratamiento de sus solicitudes, peticiones o
                                        pedidos. Se elaborará un perfil comercial en base a la información que le facilites. No se realizarán
                                        decisiones automatizadas en base a dicho perfil.
                                    </p>
                                    <p>Los datos proporcionados se conservarán mientras se mantenga la relación comercial, siempre que no
                                        se solicite por el interesado su supresión, o durante los años necesarios para cumplir las obligaciones legales.
                                    </p>
                                    <p>Se registrarán en el fichero de cliente y su tratamiento quedará registrado en el registro de tratamientos que
                                        debe llevar el TITULAR (antes del 25 de mayo de 2018 también podría estar incluido en el fichero
                                        elaborado con los datos personales registrado en la AEPD (Agencia Española de Protección de datos) u
                                        órgano competente de las respectiva Comunidad Autónoma).
                                    </p>
                                    <h6 class="title-3 text-color-1 fw-light mt-4">¿Cual es la legitimación para el tratamiento de tus datos?</h6>
                                    <p>La base legal para el tratamiento de tus datos personales es:
                                        <br/>- La correcta ejecución o cumplimiento del contrato
                                        <br/>- El interés legítimo del TITULAR
                                        <br/>- El consentimiento del usuario o cliente para el tratamiento de sus datos
                                    </p>
                                    <h6 class="title-3 text-color-1 fw-light mt-4">¿A qué destinatarios se comunicarán los datos?</h6>
                                    <p>
                                        Los datos personales del Usuario podrán eventualmente ser comunicados a terceros relacionados con el
                                        TITULAR por contrato para la realización de las tareas necesarias para la gestión de su cuenta como cliente
                                        y sin que tenga que dar su autorización.
                                    </p>
                                    <p>También cuando tuvieran que hacerse comunicaciones a las autoridades en caso de que el Usuario hubiera
                                        realizado acciones contrarias a la Ley o incumplido el contenido del aviso legal.
                                        Los datos del Usuario podrán comunicarse a otras empresas del grupo, si las hubiese, para fines
                                        administrativos internos que podrían suponer un tratamiento de esos datos.
                                    </p>
                                    <p>Los datos personales del Usuario podrán transferirse a un tercer país o a una organización internacional,
                                        pero se le deberá informar cuando se vaya a producir esa transferencia, y de las condiciones de la misma y
                                        del destinatario.
                                    </p>
                                    <p>Cuando algunos datos sean obligatorios para acceder a funcionalidades concretas del sitio web, el
                                        TITULAR indicará dicho carácter obligatorio en el momento de la recogida de datos del Usuario.
                                    </p>
                                    <h6 class="title-3 text-color-1 fw-light mt-4">Cookies</h6>
                                    <p>Durante la primera navegación, aparecerá un banner explicativo sobre el uso de cookies, que incluye la
                                        posibilidad de aceptar todas las cookies o solo las cookies técnicas, esenciales para el funcionamiento de la
                                        plataforma; con exclusión de las cookies analíticas y publicitarias.
                                        Para una mayor información consulte nuestra política de cookies.
                                    </p>
                                    <h6 class="title-3 text-color-1 fw-light mt-4">Derechos del usuario</h6>
                                    <p>Se informa al usuario de la posibilidad de ejercer sus derechos de acceso, rectificación, cancelación y
                                        oposición. También cada persona dispone del derecho de limitación del tratamiento relativo a su persona,
                                        de un derecho de eliminación de transferencia de datos personales transmitidos al responsable del
                                        tratamiento y del derecho a la portabilidad de sus datos.
                                    </p>
                                    <p>El usuario tiene la posibilidad de presentar una reclamación ante la AEPD (Agencia Española de Protección
                                        de Datos) u organismo competente de la respectiva Comunidad Autónoma, cuando no haya obtenido una
                                        solución satisfactoria en el ejercicio de sus derechos mediante un escrito dirigido a la misma.
                                    </p>
                                    <p>Salvo que el Usuario se oponga, enviando un email a la dirección de correo electrónico
                                        privacidad@staff19torneos.com, sus datos podrán ser utilizados, en su caso, si procede, para el envío de
                                        información comercial de Diego Fernández Criado.
                                    </p>
                                    <p>Los datos proporcionados se conservarán mientras se mantenga la relación comercial o durante los años
                                        necesarios para cumplir las obligaciones legales.
                                    </p>
                                    <p>El Usuario es responsable de que la información que proporcione a través de esta página web sea cierta,
                                        respondiendo de la exactitud de todos los datos que comunique y mantendrá actualizada la misma para que
                                        reflejen una situación real, siendo responsable de informaciones falsas o inexactas que proporcione y de los
                                        daños, molestias y problemas que pudieran causar a Diego Fernández Criado o a terceros.
                                    </p>
                                    <p>Esa información será guardada y gestionada con la debida confidencialidad, aplicando las medidas de
                                        seguridad informática necesarias para impedir el acceso o uso indebido de sus datos, su manipulación,
                                        deterioro o pérdida.
                                    </p>
                                    <p>No obstante, el Usuario debe tener en cuenta que la seguridad de los sistemas informáticos nunca es
                                        absoluta. Cuando se facilitan datos personales por internet, dicha información pudiera ser recogida sin su
                                        consentimiento y tratada por terceros no autorizados.
                                    </p>
                                    <p>Diego Fernández Criado declina, cualquier tipo de responsabilidad sobre las consecuencias de esos actos
                                        puedan tener para el Usuario, si publicó la información voluntariamente.
                                    </p>
                                    <p>Podrá acceder y ejercitar esos derechos mediante solicitud por escrito y firmada que podrá ser enviada al
                                        domicilio Calle Alberto Sánchez 1, Cabañas de la Sagra, 45592, Toledo, España , adjuntando fotocopia del
                                        DNI o documento equivalente.
                                    </p>
                                    <p>También podrá ser enviada la solicitud al siguiente correo electrónico: privacidad@staff19torneos.com</p>
                                    <p>Estos derechos serán atendidos, en el plazo de 1 mes, que podrá ampliarse a 2 meses si la complejidad de la
                                        solicitud o el número de solicitudes recibidas así lo exige. Todo ello sin perjuicio del deber de conservar
                                        ciertos datos en los términos legales y hasta que prescriban las posibles responsabilidades derivadas de un
                                        posible tratamiento, o, en su caso, de una relación contractual.
                                    </p>
                                    <p>Además de lo anterior, y en relación con la normativa de protección de datos, los usuarios que lo soliciten,
                                        tienen la posibilidad de organizar el destino de sus datos después de su fallecimiento.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex row row-cols-1 row-cols-xxl-2 w-100 m-0">
                        <section id="{index/start/@id}" class="col-xxl-12 bg-color-2">
                            <div class="d-flex flex-column h-100 align-items-center justify-content-evenly">
                                <img src="{index/logo/@url}" class="logo" alt="{index/logo}" />
                                <div>
                                    <h1 class="title-1 text-center"><xsl:value-of select="index/start/title"/></h1>
                                    <h2 class="title-2 text-center"><xsl:value-of select="index/start/subtitle"/></h2>
                                </div>
                            </div>
                        </section>
                        <section id="{index/now/@id}" class="col bg-color-3 d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h3 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/now/@title"/></h3>
                            </div>
                            <xsl:choose>
                                <xsl:when test="index/now/no-event/@boolean='true'">
                                    <div><p class="text-color-6"><xsl:value-of select="index/now/no-event/text"/></p></div>
                                </xsl:when>
                                <xsl:otherwise>
                                    <div class="list-group rounded-0 gap-3 w-100">
                                        <xsl:for-each select="index/now/event">
                                            <a href="{@url}" class="list-group-item flex-column align-items-start rounded-2 bg-color-4 border-0 border-color-5 p-3" >
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
                        <section id="{index/soon/@id}" class="col bg-color-2 bg-color-3-lg d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h3 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/soon/@title"/></h3>
                            </div>
                            <xsl:choose>
                                <xsl:when test="index/soon/no-event/@boolean='true'">
                                    <div><p class="text-color-6"><xsl:value-of select="index/soon/no-event/text"/></p></div>
                                </xsl:when>
                                <xsl:otherwise>
                                    <div class="list-group rounded-0 gap-3 w-100">
                                        <xsl:for-each select="index/soon/event">
                                            <a class="disabled list-group-item flex-column align-items-start rounded-2 bg-color-4 border-0 border-color-4 p-3">
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
                        <section id="{index/closed/@id}" class="col bg-color-3 bg-color-2-lg d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h3 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/closed/@title"/></h3>
                            </div>
                            <xsl:choose>
                                <xsl:when test="index/closed/no-event/@boolean='true'">
                                    <div><p class="text-color-6"><xsl:value-of select="index/closed/no-event/text"/></p></div>
                                </xsl:when>
                                <xsl:otherwise>
                                    <div class="list-group rounded-0 gap-3 w-100">
                                        <xsl:for-each select="index/closed/event">
                                            <a class="disabled list-group-item flex-column align-items-start rounded-2 bg-color-4 border-0 border-color-4 p-3">
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
                        <section id="{index/contact/@id}" class="col bg-color-2 d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h3 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/contact/@title"/></h3>
                            </div>
                            <div class="d-flex h-100 align-items-end">
                                <ul class="list-unstyled">
                                    <xsl:for-each select="index/contact/network">
                                        <li class="mb-4">
                                            <a class="fs-5 text-decoration-none text-color-7 title-3"><xsl:value-of select="name"/>:</a>
                                            <br/>
                                            <a href="{@url}" class="d-flex align-items-center gap-2 text-decoration-none link mt-2" target="_blank">
                                                <div class="d-flex align-items-center justify-content-center" style="width: 20px;">
                                                    <i class="fa {@icon}" aria-hidden="true"></i>
                                                </div>
                                                <xsl:value-of select="text"/>
                                            </a>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                        </section>
                        <footer class="col-xxl-12 d-flex flex-column align-items-center justify-content-center bg-color-5">
                            <div>
                                <a class="text-center">
                                    <a id="year" class="text-decoration-none text-color-1 pe-2"/>
                                    <a><xsl:value-of select="index/footer/a"/></a>
                                </a>
                            </div>
                            <div>
                                <a><xsl:value-of select="index/footer/a1"/><a class="text-decoration-none text-color-1 link ps-2" href="{index/footer/link/@url}"><xsl:value-of select="index/footer/link"/></a></a>
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
                <script src="{index/route}js/1.0.0/navbar.js"></script>
                
                <script src="{index/route}js/1.0.0/year.js"></script>
                
                <script src="{index/route}js/1.0.0/height.js"></script>
                
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>