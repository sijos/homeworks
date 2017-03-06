document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  const favoriteSubmit = event => {
    event.preventDefault();

    const placeInput = document.querySelector('.favorite-input');
    const place = placeInput.value;
    placeInput.value = "";

    const ul = document.getElementById("sf-places");
    const li = document.createElement("li");
    li.textContent = place;
    ul.appendChild(li);
  };

  const submitButton = document.querySelector('.favorite-submit');
  submitButton.addEventListener("click", favoriteSubmit);



  // adding new photos


  const togglePhotoForm = (e) => {
    const form = document.querySelector('.photo-form-container');
    if (Array.from(form.classList).includes("hidden")) {
      form.className = "photo-form-container";
    } else {
      form.className = "photo-form-container hidden";
    }
  };

  const pForm = document.querySelector('.photo-show-button');
  pForm.addEventListener("click", togglePhotoForm);

  const photoSubmit = document.querySelector('.photo-url-submit');
  photoSubmit.addEventListener("click", (e) => {
    e.preventDefault();
    
    const ul = document.querySelector(".dog-photos");
    const li = document.createElement("li");
    const img = document.createElement("img");
    img.src = document.querySelector('.photo-url-input').value;
    li.appendChild(img);
    ul.appendChild(li);
  });

});
