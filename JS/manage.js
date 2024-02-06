window.addEventListener("load", function(){
    
    var ajax = new XMLHttpRequest();
    ajax.open("GET", "items.php?manage=true" );
    ajax.send();
    ajax.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            if (data.length === 0) {
                var p = document.createElement("p");
                p.textContent = "Sorry, you have no items listed";
                document.querySelector("#items").appendChild(p);
            } else {
                for (var i = 0; i < data.length; i++) {
                    var item = document.createElement("div");
                    var form = document.createElement("form");
                    form.action = "update.php?itemID=" + data[i].itemID;
                    form.method = "post";
                    
                    var name = document.createElement("input");
                    name.value = data[i].itemName;
                    name.name = "name";
                    form.appendChild(name);
                    
                    var price = document.createElement("input");
                    price.value = data[i].price;
                    price.name = "price";
                    price.style.display = 'block';
                    form.appendChild(price);
                    
                    var img = document.createElement("img");
                    img.src = "Images/item" + (data[i].itemID) + ".jpg";
                    form.appendChild(img);
                    
                    var description = document.createElement("textarea");
                    description.textContent = data[i].description;
                    description.name = "description";
                    description.rows = "4";
                    description.cols="50";
                    description.style.display = 'block';
                    form.appendChild(description);
                    
                    var update = document.createElement("input");
                    update.type = "submit";
                    update.value = "Update";
                    form.appendChild(update);
                    
                    item.appendChild(form);
                    
                    var form2 = document.createElement("form");
                    form2.action = "unlist.php";
                    form2.method = "post";
                    
                    var itemID = document.createElement("input");
                    itemID.type = "hidden";
                    itemID.name = "itemID";
                    itemID.value = data[i].itemID;
                    form2.appendChild(itemID);
                    
                    var unlist = document.createElement("input");
                    unlist.type = "submit";
                    unlist.value = "Unlist item";
                    unlist.name = data[i].itemID;
                    form2.appendChild(unlist);
                    
                    item.appendChild(form2);
                    
                    item.appendChild(document.createElement("p"));
                    document.querySelector("#items").appendChild(item);
                }
            }
        }
    };
});