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

  }



});
