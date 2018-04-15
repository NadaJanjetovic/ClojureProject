
function addDentist(){
    $.confirm({
        title: 'Kreiraj zubara',
        content: '<form action="/dbManager/dentist/insert" method="post">' +
        '<div class="form-group">'+
        '<label>Ime i prezime:</label>'+
        ' <input type="text" class="form-control" name="namesurname" placeholder="Ime i prezime">'+
        ' </div>'+
        '<div class="form-group">'+
        '<label>Telefon:</label>' +
        '<input type="text" class="form-control" name="phone" placeholder="Telefon">' +
        '</div>' +
        '<div class="form-group">' +
        ' <label>RadniStaz:</label>' +
        '<input type="text" class="form-control" name="yearsofworking" placeholder="Radni staz">' +
        '</div>'+
        '<div class="form-group">' +
        ' <label>Termin:</label>' +
        '<input type="text" class="form-control" name="workingtime" placeholder="Radno vreme">' +
        '</div>'+
        '<button style="float: left" type="submit" class="btn btn-success" style="float:right">Novi zubar</button>' +
        '</form>',

        cancel: function(){

        }
    });
}

function addNewService(){
    $.confirm({
        title: 'Kreiraj novu uslugu',
        content: '<form action="/dbManager/services/insert" method="post">' +
        '<div class="form-group">'+
        '<label>Naziv usluge</label>'+
        ' <input type="text" class="form-control" name="ServiceName" placeholder="Naziv usluge">'+
        ' </div>'+
        '<div class="form-group">'+
        '<label>Cena</label>' +
        '<input type="number" class="form-control" name="price" placeholder="Cena">' +
        '</div>' +
        '<div class="form-group">' +
        ' <label>Opis:</label>' +
        '<input type="text" class="form-control" name="description" placeholder="Opis">' +
        '</div>'+
        '<button style="float: left" type="submit" class="btn btn-success" style="float:right">Nova usluga</button>' +
        '</form>',

        cancel: function(){

        }
    });
}

function addBlog(){
    $.confirm({
        title: 'Kreiraj novi clanak',
        content: '<form action="/dbManager/blogs/insert" method="post" id="formBlog">' +
        '<div class="form-group">'+
        '<label>Naslov</label>'+
        ' <input type="text" class="form-control" name="Title" placeholder="Naslov">'+
        ' </div>'+
        '<div class="form-group">'+
        '<label>Tekst:  </label>' +
        '<textarea name="description" rows="5" cols="70" form="formBlog"></textarea>'+
        '</div>' +
        '<button style="float: left" type="submit" class="btn btn-success" style="float:right">Novi clanak</button>' +
        '</form>',

        cancel: function(){

        }
    });
}