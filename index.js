const navbarContainer=document.getElementById('navbar-container');
const navbarRequest=new XMLHttpRequest();
navbarRequest.onload = function() {
    navbarContainer.innerHTML = this.responseText;
};
navbarRequest.open('GET', 'navbar.html', true);
navbarRequest.send();

const footerContainer = document.getElementById('footer-container');
const footerRequest = new XMLHttpRequest();
footerRequest.onload = function() {
    footerContainer.innerHTML = this.responseText;
};
footerRequest.open('GET', 'footer.html', true);
footerRequest.send();