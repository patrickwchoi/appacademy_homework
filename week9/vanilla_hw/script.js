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

  // --- your code here!


  // adding new photos

  // --- your code here!
  const button = document.getElementById('photo-btn');
  const countSpan = document.getElementById('click-count');

  button.addEventListener('click', event => {
    console.log(event.target) // button#count-btn
    let curCount = parseInt(countSpan.innerText); // get current count from span
    countSpan.innerText = curCount + 1; // increment count by 1
  });


});
