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
                <link rel="stylesheet" href="{index/route}css/1.0.0/style.css" />
                <link rel="stylesheet" href="{index/route}css/1.0.0/style-generals.css" />
                <link rel="stylesheet" href="{index/route}css/1.0.0/navbar.css" />
                
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
                <link rel="canonical" href="https://staff19torneos.com/pages/events/in-progress/{index/@folder}/event.xml" />
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
                </nav>
                
                <main>
                    <div class="d-flex row row-cols-1 row-cols-xxl-2 w-100 m-0">
                        <section id="{index/start/@id}" class="col bg-color-2 d-flex flex-column px-4 px-md-5 py-5">
                            <div class="d-flex flex-column h-100 align-items-center justify-content-evenly">
                                <div>
                                    <h1 class="title-1 text-center text-color-1"><xsl:value-of select="index/start/event/name"/></h1>
                                    <h2 class="title-2 text-center ma-top-1"><xsl:value-of select="index/start/event/location"/></h2>
                                    <h2 class="title-2 text-center ma-top-1"><xsl:value-of select="index/start/event/date"/></h2>
                                </div>
                            </div>
                        </section>
                        <section id="{index/poster/@id}" class="bg-color-2 col d-flex px-4 px-md-5 py-5">
                            <div>
                                <div>
                                    <img src="{index/poster/img/@url}" alt="Cartel" class="rounded-3" />
                                </div>
                            </div>
                        </section>
                        <section id="{index/description/@id}" class="col bg-color-3 d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h3 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/description/@title"/></h3>
                            </div>
                            <div>
                                <xsl:for-each select="index/description/p">
                                    <p><xsl:value-of select="."/></p>
                                </xsl:for-each>
                            </div>
                        </section>
                        <section id="{index/information/@id}" class="bg-color-2 bg-color-3-lg col d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h3 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/information/@title"/></h3>
                            </div>
                            <div>
                                <dl class="row">
                                    <xsl:for-each select="index/information/row">
                                        <xsl:choose>
                                            <xsl:when test="position() mod 2 = 0">
                                                <dt class="col-sm-3 m-0 mb-4 fw-normal text-color-6"><xsl:value-of select="title"/></dt>
                                                <dd class="col-sm-9 m-0 mb-4 text-color-6"><xsl:value-of select="content"/></dd>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <dt class="col-sm-3 m-0 mb-4 fw-normal"><xsl:value-of select="title"/></dt>
                                                <dd class="col-sm-9 m-0 mb-4"><xsl:value-of select="content"/></dd>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:for-each>
                                </dl>
                            </div>
                        </section>
                        <section id="{index/awards/@id}" class="col bg-color-3 bg-color-2-lg d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h3 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/awards/@title"/></h3>
                            </div>
                            <div>
                                <dl class="row">
                                    <xsl:for-each select="index/awards/row">
                                        <xsl:choose>
                                            <xsl:when test="position() mod 2 = 0">
                                                <dt class="col-sm-3 m-0 mb-4 fw-normal text-color-6"><xsl:value-of select="award"/></dt>
                                                <dd class="col-sm-9 m-0 mb-4 text-color-6"><xsl:value-of select="winner"/></dd>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <dt class="col-sm-3 m-0 mb-4 fw-normal"><xsl:value-of select="award"/></dt>
                                                <dd class="col-sm-9 m-0 mb-4"><xsl:value-of select="winner"/></dd>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:for-each>
                                </dl>
                            </div>
                        </section>
                        <section id="{index/location/@id}" class="bg-color-2 bg-color-2-lg col d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h3 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/location/@title"/></h3>
                            </div>
                            <div>
                                <div class="title-3 text-color-1 d-flex gap-2">
                                    <i id="map-marker" class="fa fa-map-marker" aria-hidden="true"></i>
                                    <h2 class="title-3 text-color-1"><xsl:value-of select="index/location/name"/></h2>
                                </div>
                                <div>
                                    <p><xsl:value-of select="index/location/description"/></p>
                                </div>
                                <div class="d-flex flex-wrap mt-5 gap-2">
                                    <xsl:for-each select="index/location/map-links/link">
                                        <xsl:choose>
                                            <xsl:when test="@type='no-icon'">
                                                <a id="waze" class="btn d-flex justify-content-center align-items-center border-2 buttonStaff"
                                                   href="{@url}" target="_blank" role="button">
                                                    <div class="d-flex gap-3 p-2 fs-5">
                                                        <img id="waze-img" src="{@icon}" alt="Waze img" style="width: 17px;" />
                                                        <xsl:value-of select="."/>
                                                    </div>
                                                </a>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <a id="googleMaps" class="btn d-flex justify-content-center align-items-center border-2 buttonStaff" href="{@url}" target="_blank" role="button">
                                                    <div class="d-flex align-items-center gap-3 p-2 fs-5">
                                                        <i class="fa {@icon} map-iconStaff" aria-hidden="true"></i>
                                                        <xsl:value-of select="."/>
                                                    </div>
                                                </a>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:for-each>
                                </div>
                            </div>
                        </section>
                        <section id="{index/links/@id}" class="col bg-color-3 d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h3 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/links/@title"/></h3>
                            </div>
                            <div>
                                <div class="list-group gap-2">
                                    <xsl:for-each select="index/links/link">
                                        <a href="{@url}" class="list-group-item border-2 rounded-2 buttonStaff-2" target="_blank">
                                            <xsl:value-of select="."/>
                                        </a>
                                    </xsl:for-each>
                                </div>
                            </div>
                        </section>
                        <section id="{index/contact/@id}" class="col bg-color-2 bg-color-3-lg d-flex flex-column px-4 px-md-5 py-5">
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
                        <section id="{index/partners/@id}" class="col-lg-12 col-xxl-12 bg-color-3 bg-color-2-lg d-flex flex-column px-4 px-md-5 py-5">
                            <div>
                                <h3 class="title-1 text-color-1 mb-4"><xsl:value-of select="index/partners/@title"/></h3>
                            </div>
                            <div class="d-flex h-100 justify-content-center align-items-center">
                                <div class="row g-3 d-flex justify-content-center align-items-center">
                                    <xsl:for-each select="index/partners/partner">
                                        <div class="col-12 col-sm-6 col-md-3 col-lg-3 col-xxl-2">
                                            <img src="{@url}" alt="{.}" class="h-auto w-100 rounded-1" />
                                        </div>
                                    </xsl:for-each>
                                </div>
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