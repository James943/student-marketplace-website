window.addEventListener("load", function(){
    
    var ajax0 = new XMLHttpRequest();
    ajax0.open("GET", "checkLoggedIn.php", true);
    ajax0.send();
    ajax0.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            if (this.responseText.length > 0) {
                document.querySelector("#welcomeP").textContent = "Welcome " + this.responseText;
                document.querySelector(".loggedIn").style.display = 'block';
                document.querySelector(".loggedOut").style.display = 'none';
            }
        }
    };
    
    var page = location.href.split("/").slice(-1).toString().replace("s.html", "").split("?")[0];
    var ajax = new XMLHttpRequest();
    if (page == "index.html" || page === "") {
        ajax.open("GET", "items.php", true);
    } else if (page == "search.html") {
        ajax.open("GET", "items.php?search=" + new URLSearchParams(location.search).get('s'), true);
    } else {
        ajax.open("GET", "items.php?catagory=" + page, true);
    }
    ajax.send();
    ajax.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            var item_ary = [];
            for (var i = 0; i < data.length; i++) {
                item_ary[i] = document.createElement("a");
                
                var item = document.createElement("div");
                item.setAttribute("class", "item");
                item_ary[i].appendChild(item);
                var title = document.createElement("h3");
                title.textContent = data[i].itemName + " £" + data[i].price;
                item.appendChild(title);
                var img = document.createElement("img");
                img.src = "Images/item" + (data[i].itemID) + ".jpg";
                item.appendChild(img);
                var description = document.createElement("p");
                description.textContent = data[i].description;
                item.appendChild(description);
                
                var seller = document.createElement("div");
                seller.setAttribute("class", "seller");
                seller.classList.add("hide");
                item_ary[i].appendChild(seller);
                var title2 = document.createElement("h3");
                title2.textContent = data[i].itemName + " £" + data[i].price;
                seller.appendChild(title2);
                displayLine(seller, "------------Seller contact details------------");
                displayLine(seller, "Name: " + data[i].firstName + " " + data[i].lastName);
                displayLine(seller, "Email: " + data[i].email);
                displayLine(seller, "Phone Number: " + data[i].phoneNumber);
                displayLine(seller, "Location: " + data[i].location);
                displayLine(seller, "--------------Click agian to hide--------------");
                displayLine(seller, data[i].description);
                
                item.addEventListener("click", itemClickAction);
                seller.addEventListener("click", sellerClickAction);
            }
            
            if (item_ary.length === 0) {
                if (page == "search.html") {
                    displayLine(document.querySelector("#items"),"Sorry, no items match your search");
                } else {
                    displayLine(document.querySelector("#items"),"Sorry, we are unable to show you any items right now");
                }
            }
            if (page != "index.html" && page !== "") {
                shuffle(item_ary);
                for (var i = 0; i < item_ary.length; i++) {
                    document.querySelector("#items").appendChild(item_ary[i]);
                    document.querySelector("#items").appendChild(document.createElement("br"));
                }
            } else {
                document.querySelector("#scrollmenu2").appendChild(item_ary.pop());
                shuffle(item_ary);
                for (var i = 0; i < item_ary.length; i++) {
                    var target;
                        if (i === 0) {
                            target = document.querySelector("#scrollmenu1");
                        } else if (i == 1) {
                            target = document.querySelector("#scrollmenu3");
                        } else {
                            var randomNumber = Math.floor(Math.random() * 3) + 1;
                            if (randomNumber == 1) {
                                target = document.querySelector("#scrollmenu1");
                            } else if (randomNumber == 2){
                                target = document.querySelector("#scrollmenu2");
                            } else {
                                target = document.querySelector("#scrollmenu3");
                            }
                        }
                target.appendChild(item_ary[i]);
                }
            }
        }
    };
});

function logOut() {
    var ajax0 = new XMLHttpRequest();
    ajax0.open("GET", "logout.php", true);
    ajax0.send();
    ajax0.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            console.log(this.responseText);
        }
    };
}

function searchAction() {
    window.location.href = "search.html?s=" + document.querySelector("#searchBox").value;
}

function itemClickAction() {
    this.classList.toggle("hide");
    this.nextSibling.classList.toggle("hide");
    this.parentNode.classList.toggle("wide");
}

function sellerClickAction() {
    this.classList.toggle("hide");
    this.previousSibling.classList.toggle("hide");
    this.parentNode.classList.toggle("wide");
}

function displayLine(target, text) {
    var p = document.createElement("p");
    p.textContent = text;
    target.appendChild(p);
}

function shuffle(array) {
  let currentIndex = array.length,  randomIndex;

  // While there remain elements to shuffle.
  while (currentIndex !== 0) {

    // Pick a remaining element.
    randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex--;

    // And swap it with the current element.
    [array[currentIndex], array[randomIndex]] = [
      array[randomIndex], array[currentIndex]];
  }

  return array;
}