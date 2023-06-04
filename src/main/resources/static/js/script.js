
/* Когда пользователь нажимает на кнопку,
переключение между скрытием и отображением раскрывающегося содержимого */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Закройте выпадающее меню, если пользователь щелкает за его пределами
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
        for (i = 0; i < dropdowns.length; i++) {
    var openDropdown = dropdowns[i];
        if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
};


  
function disable() {
    [...document.querySelectorAll(".score")].forEach(element => element.disabled = true);

    const groupId = document.getElementById("groupId").value;
    const subjectId = document.getElementById("subjectId").value;
    const userId = document.getElementById("userId").value;

    fetch('/user/' + userId + '?subjectId=' + subjectId + '&groupId=' + groupId, {
          method: 'GET'
    });
};

function enable() {
    [...document.querySelectorAll(".score")].forEach(element => element.disabled = false);
};

function send(event) {
    console.log('id: ' + event.target.id);
    console.log('val: ' + event.target.value);

    const groupId = document.getElementById("groupId").value;
    const subjectId = document.getElementById("subjectId").value;
    const userId = document.getElementById("userId").value;

    let response = fetch('/user/' + userId + '?subjectId=' + subjectId + '&groupId=' + groupId, {
          method: 'POST',
          headers: {
                'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            id: event.target.id,
            value: event.target.value
          })
    });
}

/* Когда пользователь нажимает на кнопку,
переключение между скрытием и отображением раскрывающегося содержимого */
function myFunction2() {
  document.getElementById("myDropdown2").classList.toggle("show");
}

// Закройте выпадающее меню, если пользователь щелкает за его пределами
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
        for (i = 0; i < dropdowns.length; i++) {
    var openDropdown = dropdowns[i];
        if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
};


/* Когда пользователь нажимает на кнопку,
переключение между скрытием и отображением раскрывающегося содержимого */
function myFunction3() {
  document.getElementById("myDropdown3").classList.toggle("show");
}

// Закройте выпадающее меню, если пользователь щелкает за его пределами
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
        for (i = 0; i < dropdowns.length; i++) {
    var openDropdown = dropdowns[i];
        if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
};

