const navbarStaff = document.getElementById('navbarStaff');
const toggleMenuOpen = document.getElementById('toggle-menu__open');
const mainMenu = document.getElementById('main-menu');
toggleMenuOpen.addEventListener('click', e => {
    navbarStaff.classList.toggle('navbarStaff--show');
    mainMenu.classList.toggle('main-menu--show');
});

const elements = document.querySelectorAll('.toggle-menu__close');
elements.forEach(element => {
    element.addEventListener('click', () => {
        navbarStaff.classList.toggle('navbarStaff--show');
        mainMenu.classList.toggle('main-menu--show');
    });
});


const dropdownStaffList0 = document.getElementById('dropdownStaff-list0');
const dropdownStaffToggle0 = document.getElementById('dropdownStaff-toggle0');
const dropdownStaffList1 = document.getElementById('dropdownStaff-list1');
const dropdownStaffToggle1 = document.getElementById('dropdownStaff-toggle1');
dropdownStaffToggle0.addEventListener('click', e => {
    dropdownStaffList0.classList.toggle('dropdownStaff-list--show');
    if (dropdownStaffList1.classList.contains('dropdownStaff-list--show-1')) {
        dropdownStaffList1.classList.remove('dropdownStaff-list--show-1');
        dropdownStaffToggle1.querySelector('.fa-angle-down').classList.toggle('rotated');
    }
    dropdownStaffToggle0.querySelector('.fa-angle-down').classList.toggle('rotated');
    imgCloseChecker();
});

dropdownStaffToggle1.addEventListener('click', e => {
    dropdownStaffList1.classList.toggle('dropdownStaff-list--show-1');
    if (dropdownStaffList0.classList.contains('dropdownStaff-list--show')) {
        dropdownStaffList0.classList.remove('dropdownStaff-list--show');
        dropdownStaffToggle0.querySelector('.fa-angle-down').classList.toggle('rotated');
    }
    dropdownStaffToggle1.querySelector('.fa-angle-down').classList.toggle('rotated');
    imgCloseChecker();
});

function imgCloseChecker() {
    // Verifica si ambos toggles están activados
    if (dropdownStaffList0.classList.contains('dropdownStaff-list--show') || dropdownStaffList1.classList.contains('dropdownStaff-list--show-1')) {
        // Asegura que la clase esté presente para ocultar la imagen
        navbarStaff.classList.add('navbarStaff-logo--hidden');
        setTimeout(function () {
            navbarStaff.classList.add('navbarStaff-logo--hidden2');
        }, 500)
    } else {
        // Asegura que la clase esté ausente para mostrar la imagen
        navbarStaff.classList.remove('navbarStaff-logo--hidden');
        navbarStaff.classList.remove('navbarStaff-logo--hidden2');
    }
}


window.addEventListener('resize', () => {
    if (navbarStaff.classList.contains('navbarStaff--show')) {
        navbarStaff.classList.remove('navbarStaff--show');
        mainMenu.classList.remove('main-menu--show');
    }
});