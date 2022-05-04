document.addEventListener('DOMContentLoaded', (event) => {

    var input = document.querySelector('input');
    var form = document.querySelector('form');
    var sectionUp = document.getElementById('sectionUp')
    var sectionDown = document.getElementById('sectionDown')

    input.addEventListener('input', function() {

        // Si l'input est vide, alors on efface la liste avec les liens vers les espèces d'araignées
        if (input.value.length == 0) {

            var items = document.querySelectorAll('a')
            items.forEach(element => element.remove())


        } else { //si l'input n'est pas vide, on récupère le tableau avec les résultats 

            var data = new FormData();

            data.append('input', input.value)

            fetch('searchbar_controller.php?search='+input.value, {
                method: 'GET',
                body: null 

            }).then(response => {
                return response.json();

            }).then(response => {

                var items = document.querySelectorAll('a')
                var p = document.querySelectorAll('p')

                //Permet de reset la liste des suggestions à chaque fois que l'input est vidé ou modifié
                items.forEach(element => element.remove())
                p.forEach(element => element.remove())


                //Génère la liste des éléments qui commencent par l'input

                for (let i = 0 ; i< response['start'].length; i++) {
                    let a = document.createElement('a')
                    a.innerText = response['start'][i]['nom_commun']
                    a.href = 'recherche.php?search='+response['start'][i]['nom_commun']
                    a.classList.add('dropdown-item')
                    sectionUp.appendChild(a)
                }

                // Génère la liste des éléments qui contiennent
                for (let j = 0 ; j< response['contain'].length; j++)  {

                    let a = document.createElement('a')
                    a.innerText = response['contain'][j]['nom_commun']
                    a.href = 'recherche.php?search='+response['contain'][j]['nom_commun']
                    a.classList.add('dropdown-item')
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