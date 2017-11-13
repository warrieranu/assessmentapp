$(document).ready(function (){
      document.getElementById('toggle').addEventListener('click', function (e) {
          e.preventDefault();
          document.getElementById('tuckedMenu').classList.toggle('custom-menu-tucked');
          document.getElementById('toggle').classList.toggle('x');
      });(this, this.document);
});
