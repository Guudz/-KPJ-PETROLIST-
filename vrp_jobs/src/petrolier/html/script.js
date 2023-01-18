const sliders = document.querySelectorAll('.keen-slider__slide');
const container = document.querySelector('#my-keen-slider');
const test = document.querySelector('.js-test');

var slider = new KeenSlider(container, {
  slidesPerView: 3,
  spacing: 0,
  loop: true,
  initial: 1,
  move: (e) => {
    update(e.details());
  },
})

function update(details) {
  sliders.forEach((item, index) => {
    const detail = details[index]
    
    // item.style.transform = '';
  })
}

$(function () {
  function display(bool) {
      if (bool) {
          $(".mainmenu").show();
          $(".bg").show();
      } else {
          $(".mainmenu").hide();
          $(".bg").hide();
      }
  }
  



  display(false)


  window.addEventListener('message', function(event) {
      var item = event.data;
      if (item.type === "ui") {
          if (item.status == true) {
              display(true)
          } else {
              display(false)
          }
      }
  })


  document.onkeyup = function(data) {
      if (data.which == 27) {
          $.post("http://nfr_jobs/exit", JSON.stringify({}));
          return
      }
  };

  $("#close").click(function () {
      $.post('http://nfr_jobs/exit', JSON.stringify({}));
      return
  })


  $(".button-1").click(function(data) {
    $.post('https://nfr_jobs/curier', JSON.stringify({
    }));
    return
  })
  
  $(".button-2").click(function () {
    $.post('https://nfr_jobs/electrician', JSON.stringify({
    }));
    return
  })
  $(".button-3").click(function () {
    $.post('https://nfr_jobs/miner', JSON.stringify({}));
    return
  })
  $(".button-4").click(function () {
    $.post('https://nfr_jobs/vanator', JSON.stringify({}));
    return
  })
  $(".button-5").click(function () {
    $.post('https://nfr_jobs/aviator', JSON.stringify({}));
    return
  })
  $(".button-6").click(function () {
    $.post('https://nfr_jobs/fermier', JSON.stringify({}));
    return
  })
  
})



