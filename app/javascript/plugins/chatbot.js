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
const inputDate = document.getElementById('chatbot_input_date');
const chatPhoto = document.getElementById('chatbot_chat_photo');
const chatPhotoOne = document.getElementById('chatbot_chat_photo_1');
const inputPhoto = document.getElementById('chatbot_input_photo');
const chatSubmit = document.getElementById('chatbot_chat_submit');
const chatSubmitOne = document.getElementById('chatbot_chat_submit_1');
const inputSubmit = document.getElementById('chatbot_submit');

const writing1 = document.getElementById('writing1')

function print(element) {
  element.classList.remove('d-none');
}

function unprint(element) {
  element.remove();
}

init.addEventListener('click', (event) => {
  print(writing1);
  setTimeout(() => { unprint(writing1) }, 1500);
  setTimeout(() => { print(intro) }, 2000);
  setTimeout(() => { print(introOne) }, 4000);
  setTimeout(() => { print(chatTitle) }, 6000);
  setTimeout(() => { print(inputTitle) }, 7000);
});

inputTitle.addEventListener('keyup', (event) => {
  if (event.key === 'ArrowRight') {
    setTimeout(() => { print(chatDescription) }, 2000);
    setTimeout(() => { print(chatDescriptionOne) }, 4000);
    setTimeout(() => { print(inputDescription) }, 5000);
  }
});

inputDescription.addEventListener('keyup', (event) => {
  if (event.key === 'ArrowRight') {
    setTimeout(() => { print(chatDate) }, 2000);
    setTimeout(() => { print(chatDateOne) }, 4000);
    setTimeout(() => { print(inputDate) }, 5000);
  }
})

inputDate.addEventListener('keyup', (event) => {
  if (event.key === 'ArrowRight') {
    setTimeout(() => { print(chatPhoto) }, 2000);
    setTimeout(() => { print(chatPhotoOne) }, 4000);
    setTimeout(() => { print(inputPhoto) }, 5000);
  }
})

inputPhoto.addEventListener('keyup', (event) => {
  if (event.key === 'ArrowRight') {
    setTimeout(() => { print(chatSubmit) }, 2000);
    setTimeout(() => { print(chatSubmitOne) }, 4000);
    setTimeout(() => { print(inputSubmit) }, 5000);
  }
})




