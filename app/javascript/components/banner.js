import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  const swalButton = document.getElementById('sweet-alert-demo');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "Félicitation",
        text: "Votre projet est terminé",
        icon: "success",
        buttons: false
      });
    });
  }
}

export { bindSweetAlertButtonDemo };
