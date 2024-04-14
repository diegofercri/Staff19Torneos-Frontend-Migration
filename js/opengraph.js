// Crear una función que añade los metadatos
function addMetaData() {
    var head = document.getElementsByTagName('head')[0];

    // Metadatos para Open Graph
    var ogUrl = document.createElement('meta');
    ogUrl.setAttribute('property', 'og:url');
    ogUrl.content = 'https://staff19torneos.com';
    head.appendChild(ogUrl);

    var ogType = document.createElement('meta');
    ogType.setAttribute('property', 'og:type');
    ogType.content = 'website';
    head.appendChild(ogType);

    var ogTitle = document.createElement('meta');
    ogTitle.setAttribute('property', 'og:title');
    ogTitle.content = 'Staff 19 Torneos';
    head.appendChild(ogTitle);

    var ogDescription = document.createElement('meta');
    ogDescription.setAttribute('property', 'og:description');
    ogDescription.content = 'Inicio';
    head.appendChild(ogDescription);

    var ogImage = document.createElement('meta');
    ogImage.setAttribute('property', 'og:image');
    ogImage.content = 'https://staff19torneos.com/logo-bg.png';
    head.appendChild(ogImage);

    // Metadatos para Twitter
    var twitterCard = document.createElement('meta');
    twitterCard.setAttribute('name', 'twitter:card');
    twitterCard.content = 'summary_large_image';
    head.appendChild(twitterCard);

    var twitterDomain = document.createElement('meta');
    twitterDomain.setAttribute('property', 'twitter:domain');
    twitterDomain.content = 'staff19torneos.com';
    head.appendChild(twitterDomain);

    var twitterUrl = document.createElement('meta');
    twitterUrl.setAttribute('property', 'twitter:url');
    twitterUrl.content = 'https://staff19torneos.com';
    head.appendChild(twitterUrl);

    var twitterTitle = document.createElement('meta');
    twitterTitle.setAttribute('name', 'twitter:title');
    twitterTitle.content = 'Staff 19 Torneos';
    head.appendChild(twitterTitle);

    var twitterDescription = document.createElement('meta');
    twitterDescription.setAttribute('name', 'twitter:description');
    twitterDescription.content = 'Inicio';
    head.appendChild(twitterDescription);

    var twitterImage = document.createElement('meta');
    twitterImage.setAttribute('name', 'twitter:image');
    twitterImage.content = 'https://staff19torneos.com/logo-bg.png';
    head.appendChild(twitterImage);
}

// Llamar a la función cuando la página se haya cargado completamente
window.onload = addMetaData;
