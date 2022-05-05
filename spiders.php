
<?php
class Spider {

    public $id, $com_name, $latin_name, $description, $image ;
    private $db;

    public function __construct() {

        try{
            $db = new PDO("mysql:host=localhost;dbname=autocompletion", 'root', '');
            $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $db->exec('SET NAMES utf8');
            $this->connexion = $db;
        }
          
        catch(PDOException $e){
            echo "Erreur : " . $e->getMessage();
        }
        
    }


    public function getAll():array {


        $query = "SELECT * FROM spiders";
        $getAll= $this->connexion->prepare($query);
        $getAll->setFetchMode(PDO::FETCH_ASSOC);
        $getAll->execute();

        $all = $getAll->fetchAll();

       return $all;

    }

    public function getOne($id): array{

        $query = "SELECT * FROM spiders WHERE id = :id";
        $getOne= $this->connexion->prepare($query);
        $getOne->setFetchMode(PDO::FETCH_ASSOC);
        $getOne->execute(['id'=>$id]);

        $one = $getOne->fetch();

        return $one;

    }

    public function research($word) {


        //Création d'un tableau avec deux clés => liste des elements qui commence par $word et liste de ceux qui contiennet $word
        $results = array(
            'start'=>[],
            'contain'=>[]
        );

        //Requete pour récup les éléments qui commencent par $word
        $queryStart = "SELECT * from spiders WHERE nom_commun LIKE CONCAT (:input, '%')";
        $start = $this->connexion->prepare($queryStart);
        $start->execute(array(
            'input' => htmlspecialchars($word)
        ));

        $startResults = $start->fetchAll();

        //Ajout des éléments dans l'entrée start
        if(!empty($startResults)) {
            $results = array(
                'start'=>$startResults,
                'contain'=>[]
            );
        }

        //Requete pour récup les éléments qui contiennent $word
        $queryContain = " SELECT * FROM spiders WHERE nom_commun LIKE CONCAT('%', :input, '%')";
        $contain = $this->connexion->prepare($queryContain);
        $contain->execute(array(
            ':input'=>htmlspecialchars($word)
        ));

        $containResults = $contain->fetchAll();

        //Ajout des éléments dans l'entrée contain
        if(!empty($containResults)) {
            $results = array(
                'start'=>$startResults,
                'contain'=>$containResults
            );
        }

        //Trie des éléments pour effacer les doublons du start dans le contain
        for ( @$i = 0; $i< @$results['contain'][$i]; @$i++) {

            foreach ($results['start'] as $element ) {
        
                if ($element['nom_commun'] == $results['contain'][$i]['nom_commun']) {
                    array_splice($results['contain'], $i, 1);
                   
                }
            }
        
        }

    
        return $results ;

        

    }



}