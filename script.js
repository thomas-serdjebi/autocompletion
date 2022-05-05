document.addEventListener('DOMContentLoaded', (event) => {

    var input = document.querySelector('input');
    var form = document.querySelector('form');;


    input.addEventListener('input', function() {

        // Si l'input est vide, alors on efface la liste avec les liens vers les espèces d'araignées
        if (input.value.length == 0) {

            var items = document.getElementsByClassName('dropdown-item');
            while(items.length > 0){
                items[0].parentNode.removeChild(items[0]);
            }


        } else { //si l'input n'est pas vide, on récupère le tableau avec les résultats 

            var data = new FormData();

            data.append('input', input.value)

            fetch('searchbar_controller.php?search='+input.value, {
                method: 'GET',
                body: null 

            }).then(response => {
                return response.json();

            }).then(response => {

                
                var items = document.getElementsByClassName('dropdown-item');

                //Permet de reset la liste des suggestions à chaque fois que l'input est vidé ou modifié
                while(items.length > 0){
                    items[0].parentNode.removeChild(items[0]);
                }

                //Récupère la div dans laquelle vont être générées les listes
                var dropdown = document.getElementById('header_dropdown')


                //Génère la liste des éléments qui commencent par l'input

                var sectionUp = document.createElement('div')
                
                sectionUp.setAttribute('id', 'sectionUp')
                dropdown.appendChild(sectionUp)

                for (let i = 0 ; i< response['start'].length; i++) {
                    let a = document.createElement('a')
                    a.innerText = response['start'][i]['nom_commun']
                    a.href = 'recherche.php?search='+response['start'][i]['nom_commun']
                    a.classList.add('dropdown-item')
                    var dropdown = document.getElementById('header_dropdown')
                    var sectionUp = document.getElementById('sectionUp')
                    sectionUp.appendChild(a)
                }

                // Génère la liste des éléments qui contiennent

                var sectionDown = document.createElement('div')
                
                sectionDown.setAttribute('id', 'sectionDown')
                dropdown.appendChild(sectionDown)

                for (let j = 0 ; j< response['contain'].length; j++)  {
                    let a = document.createElement('a')
                    a.innerText = response['contain'][j]['nom_commun']
                    a.href = 'recherche.php?search='+response['contain'][j]['nom_commun']
                    a.classList.add('dropdown-item')
                    var dropdown = document.getElementById('header_dropdown')
                    var sectionDown = document.getElementById('sectionDown')
                    dropdown.appendChild(sectionDown)
                    sectionDown.appendChild(a)
                }

            })

        }

    })

    document.addEventListener('keypress', function(e) {
        if (e.key == 'Enter') {
            e.preventDefault()
            document.location.href='recherche.php?search='+input.value
            
        }
    })




})