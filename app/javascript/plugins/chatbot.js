const init = document.getElementById('chatbot_init')
const intro = document.getElementById('chatbot_intro');
const introOne = document.getElementById('chatbot_intro_1');
const chatTitle = document.getElementById('chatbot_chat_title');
const inputTitle = document.getElementById('chatbot_input_title');
const chatDescription = document.getElementById('chatbot_chat_description');
const chatDescriptionOne = document.getElementById('chatbot_chat_description_1');
const inputDescription = document.getElementById('chatbot_input_descrition');
const chatDate = document.getElementById('chatbot_chat_date');
const chatDateOne = document.getElementById('chatbot_chat_date_1');
const inputDate = document.querySelectorAll('.chatbot_input_date');
const chatPhoto = document.getElementById('chatbot_chat_photo');
const chatPhotoOne = document.getElementById('chatbot_chat_photo_1');
const inputPhoto = document.getElementById('chatbot_input_photo');
const chatSubmit = document.getElementById('chatbot_chat_submit');
const chatSubmitOne = document.getElementById('chatbot_chat_submit_1');
const inputSubmit = document.getElementById('chatbot_submit');

const writing1 = document.getElementById('writing1')
const writing2 = document.getElementById('writing2')
const writing3 = document.getElementById('writing3')
const writing4 = document.getElementById('writing4')
const writing5 = document.getElementById('writing5')
const writing6 = document.getElementById('writing6')
const writing7 = document.getElementById('writing7')
const writing8 = document.getElementById('writing8')
const writing9 = document.getElementById('writing9')
const writing10 = document.getElementById('writing10')
const writing11 = document.getElementById('writing11')

const form = document.getElementById('new_project')

if (form) {
  form.addEventListener('keypress', (event) => {
    if(event.keyCode === 13){
      event.preventDefault();
    }
    return true;
  })
}

function print(element) {
  element.classList.remove('d-none');
  element.scrollIntoView({behavior: 'smooth'});
}

function unprint(element) {
  element.remove();
}

if (init) {
  init.addEventListener('click', (event) => {
    unprint(init);
    print(writing1);
    setTimeout(() => { unprint(writing1) }, 1500);
    setTimeout(() => { print(intro) }, 2000);
    setTimeout(() => { print(writing2) }, 2200);
    setTimeout(() => { unprint(writing2) }, 3500);
    setTimeout(() => { print(introOne) }, 4000);
    setTimeout(() => { print(writing3) }, 4100);
    setTimeout(() => { unprint(writing3) }, 5500);
    setTimeout(() => { print(chatTitle) }, 6000);
    setTimeout(() => { print(inputTitle) }, 6100);
  });
}

if (inputTitle) {
  inputTitle.addEventListener('keyup', (event) => {
    if (event.key === 'Enter') {
      print(writing4);
      setTimeout(() => { unprint(writing4) }, 1800);
      setTimeout(() => { print(chatDescription) }, 2000);
      setTimeout(() => { print(writing5) }, 2200);
      setTimeout(() => { unprint(writing5) }, 3600);
      setTimeout(() => { print(chatDescriptionOne) }, 4000);
      setTimeout(() => { print(inputDescription) }, 4100);
    }
  });
}

if (inputDescription) {
  inputDescription.addEventListener('keyup', (event) => {
    if (event.key === 'Enter') {
      print(writing6)
      setTimeout(() => { unprint(writing6) }, 1800);
      setTimeout(() => { print(chatDate) }, 2000);
      setTimeout(() => { print(writing7) }, 2200);
      setTimeout(() => { unprint(writing7) }, 3600);
      setTimeout(() => { print(chatDateOne) }, 4000);
      setTimeout(() => { inputDate.forEach(function(element) {
        print(element);
      }) }, 4100);
    }
  })
}

if (inputDate) {
  inputDate.forEach(function(element) {
    element.addEventListener('input', (event) => {
        print(writing8);
        setTimeout(() => { unprint(writing8) }, 1800);
        setTimeout(() => { print(chatPhoto) }, 2000);
        setTimeout(() => { print(writing9) }, 2200);
        setTimeout(() => { unprint(writing9) }, 3600);
        setTimeout(() => { print(chatPhotoOne) }, 4000);
        setTimeout(() => { print(inputPhoto) }, 4100);
    })
  })
}

if (inputPhoto) {
  inputPhoto.addEventListener('input', (event) => {
      print(writing10);
      setTimeout(() => { unprint(writing10) }, 1800);
      setTimeout(() => { print(chatSubmit) }, 2000);
      setTimeout(() => { print(writing11) }, 2200);
      setTimeout(() => { unprint(writing11) }, 3600);
      setTimeout(() => { print(chatSubmitOne) }, 4000);
      setTimeout(() => { print(inputSubmit) }, 4100);
  })
}




