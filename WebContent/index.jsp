<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./styles/style.css">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!--Font Awesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    

    <title>Geek&Fashion</title>
</head>
<body>
    <!--En-t�te de Navigation-->

    <header >

        <!--Navigation Client-->
        <nav class="navbar navbar-expand-sm bg-light navbar-light">

            <!--LOGO-->
            <div>Vous souhaitez créer un Partenariat ?</div>
			<a href="https://amazon.fr"  target="_blank"><img alt="" src="./assets/amazon.jpg"></a>
            <!--LIENS-->
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a class="nav-link" href="./signup.jsp">Créer un compte</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="./signin.jsp">Se connecter</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="help">Aide</a>
              </li>
              <li class="nav-item shop-bag" >             
                <a id="bag" href="#" class="nav-link"  data-toggle="popover" title="Mon Panier" data-placement="top"  ><i class="fas fa-shopping-bag"></i></a>
                <span id="nb-produit" class="badge badge-danger">0</span>
            </li>
              <li class="nav-item">
                <a class="nav-link " href="./login.jsp">Administrateur</a>
              </li>
            </ul>

          </nav>

        
        <!--Navigation Produit-->
        <nav class="nav-produit navbar navbar-expand-sm bg-light navbar-light">

            <!--LOGO-->
            <div >
                <a href="./">Geek&Fashion</a>
            </div>

            <!--LIENS-->
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a id="new" class="nav-link heartbeat" href="#">Nouveautés</a>
              </li>
              <li class="nav-item">
                <a class="nav-link bold-text link-txt" href="#">Homme</a>
              </li>
              <li class="nav-item">
                <a class="nav-link bold-text link-txt" href="#">Femme</a>
              </li>
              <li class="nav-item">
                <a class="nav-link bold-text link-txt" href="#">Enfant</a>
              </li>
              <li class="nav-item">
                <a class="nav-link bold-text link-txt" href="Accessoires">Accessoires</a>
              </li>
            </ul>

            <!--SearchBar-->
            <form class="form-group has-search" action="/action_page.php">
                <span class="fa fa-search form-control-feedback"></span>
                <input class="form-control mr-sm-2" type="text" placeholder="Rechercher">
            </form>
          </nav>

          <!--Barre d'information-->
          <div class="info_livraison">
            <p class="info1_livraison">Livraison gratuite</p>
            <p class="info2_livraison">Profitez de la livraison gratuite à partir de 50€ d'achat</p>
          </div>
          <img class="img-main" src="https://i.picsum.photos/id/1005/1258/600.jpg"  alt="" width="100%"> 
          <div class="overlay">
              <p class="text-overlay">Découvre le Fashion Geek <br> qui est en toi</p>
              <button class="btn-overlay">Voir</button>
          </div>
    </header>


    <main>
    


        <!--Articles de la semaine-->
        <div id="article-new">
        <h2>Les Nouveautés de la Semaine</h2>
        <div class="row container_article" width="100%">

            <!-- <article >
                <div class="card" >
                    <img class="card-img-top" src="https://picsum.photos/id/237/200/200"  alt="Card image">
                    <div class="card-body">
                    <h4 class="card-title">G-Shirt Geek "Nintendo"</h4>
                    <p class="card-text">
                        <h6>Choisir la Taille</h6>
                        <div class="btn-group-vertical">
                            <button type="button" class="btn-size btn btn-light">S</button>
                            <button type="button" class="btn-size btn btn-light">M</button>
                            <button type="button" class="btn-size btn btn-light">L</button>
                        </div>
                    </p>
                    <button type="button" class="btn btn-dark disabled">Ajouter au panier</button>
                    </div>
                </div>
            </article> -->

            <article >
                <div class="card" >
                    <img class="card-img-top" src="https://media.giphy.com/media/l1J9EstrwjSvHHKQU/giphy.gif"  alt="Card image" width="200px" height="350px">
                    <div class="card-body">
                    <h6 class="card-title">G-Shirt Geek "Nintendo" Collection</h6>
                    <p class="card-text">
                        T-shirt Pour Homme
                    </p>
                    <p class="price">
                        20 € 
                    </p>
                    </div>
                </div>
            </article>

            <article >
                <div class="card" >
                    <img class="card-img-top" src="https://media.giphy.com/media/eapaidEJ3yVJS/giphy.gif"  alt="Card image" width="200px" height="350px">
                    <div class="card-body">
                    <h6 class="card-title">G-Shirt Geek "Nintendo" Collection</h6>
                    <p class="card-text">
                        T-shirt Pour Homme
                    </p>
                    <p class="price">
                        20 € 
                    </p>
                    </div>
                </div>
            </article>
           
            <article >
                <div class="card" >
                    <img class="card-img-top" src="https://media.giphy.com/media/3o7aCZMbZFIBloc1y0/giphy.gif"  alt="Card image" width="200px" height="350px">
                    <div class="card-body">
                    <h6 class="card-title">G-Shirt Geek "Je suis" Collection</h6>
                    <p class="card-text">
                        T-shirt Pour Homme
                    </p>
                    <p class="price">
                        20 € 
                    </p>
                    </div>
                </div>
            </article>

            <article >
                <div class="card" >
                    <img class="card-img-top" src="https://media.giphy.com/media/xUPGcufUYS0SxIRXYk/giphy.gif"  alt="Card image" width="200px" height="350px">
                    <div class="card-body">
                    <h6 class="card-title">G-Shirt Geek "J'ai console" Collection</h6>
                    <p class="card-text">
                        T-shirt Pour Homme
                    </p>
                    <p class="price">
                        20 € 
                    </p>
                    </div>
                </div>
            </article>

            <article >
                <div class="card" >
                    <img class="card-img-top" src="https://media.giphy.com/media/oUfLhNh4RsRuU/giphy.gif"  alt="Card image" width="200px" height="350px">
                    <div class="card-body">
                    <h6 class="card-title">G-Shirt Geek "Nintendo" Collection</h6>
                    <p class="card-text">
                        T-shirt Pour Homme
                    </p>
                    <p class="price">
                        20 € 
                    </p>
                    </div>
                </div>
            </article>

            <article >
                <div class="card" >
                    <img class="card-img-top" src="https://media.giphy.com/media/vBfxRdy53wzbW/giphy.gif"  alt="Card image" width="200px" height="350px">
                    <div class="card-body">
                    <h6 class="card-title">G-Shirt Geek "Je suis" Collection</h6>
                    <p class="card-text">
                        T-shirt Pour Homme
                    </p>
                    <p class="price">
                        20 € 
                    </p>
                    </div>
                </div>
            </article>

            <article >
                <div class="card" >
                    <img class="card-img-top" src="https://media.giphy.com/media/XbO6ji8UR8lglksSc0/giphy.gif"  alt="Card image" width="200px" height="350px">
                    <div class="card-body">
                    <h6 class="card-title">G-Shirt Geek "J'ai console" Collection</h6>
                    <p class="card-text">
                        T-shirt Pour Homme
                    </p>
                    <p class="price">
                        20 € 
                    </p>
                    </div>
                </div>
            </article>
        </div>
    </div>

        <!--Articles de blog-->
        <div id="article-blog"> 
            <h2>La Geek Lifestyle</h2>
            <div class="row">
                <article class="col-lg-6">
                    <h5>A la Maison</h5>
                    <img src="https://i.picsum.photos/id/1059/7360/4912.jpg" width="100%" alt="" srcset="">
                </article>

                <article class="col-lg-6">
                    <h5>Au bureau</h5>
                    <img src="https://i.picsum.photos/id/2/5616/3744.jpg" width="100%" alt="" srcset="">
                </article>
            </div>
        </div>


        <!--Video Promotion-->
        <div id="promo">
            <h2>Le défilé Geek Du Mois</h2>
            <div class="row">
                <iframe class="col-lg-6" width="1180" height="590" src="https://www.youtube.com/embed/SGkoj3qiPws" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="col-lg-6">
                    <h5>Recevez les dernières News</h5>
                    <h6>de Geek & Fashion en exclusivités</h6>
                    <div id="form-main">
                        <div id="form-div">
                          <form class="form" id="form1">
                            
                            <p class="name">
                              <input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" required placeholder="Votre Nom" id="name" />
                            </p>
                            
                            <p class="email">
                              <input name="email" type="text" class="validate[required,custom[email]] feedback-input" id="email" required placeholder="Votre Email" />
                            </p>
                            
                            <p class="text">
                              <textarea name="text" class="validate[required,length[6,300]] feedback-input" id="comment" placeholder="Votre Message (facultatif)"></textarea>
                            </p>
                            
                            
                            <div class="submit">
                              <input type="submit" value="Envoyer" id="button-blue"/>
                              <div class="ease"></div>
                            </div>
                          </form>
                        </div>
                </div>
            </div>

        </div>
        </div>

        <!-- Catégories -->
        <div id="categories">
            <h2>Assumes Qui Tu Es</h2>
            <div class="row">
                <article class="col-lg-4">
                    <h5>Homme</h5>
                    <a href="homme"><img src="https://media.giphy.com/media/7h0otzew0XnPy/giphy.gif" height="300px" alt="" srcset=""></a>
                </article>

                <article class="col-lg-4">
                    <h5>Femme</h5>
                    <a href="femme"><img src="https://media.giphy.com/media/ML3VODke4ETL2/giphy.gif" height="300px" alt="" srcset=""></a>
                </article>

                <article class="col-lg-4">
                    <h5>Enfant</h5>
                    <a href="enfant"><img src="https://media.giphy.com/media/3ohhwD22UUhJKyseeA/giphy.gif" height="300px" alt="" srcset=""></a>
                </article>
            </div>
        </div>

    </main>
    <!--Pied de Page-->
    <footer class="text-left">
        <div class="row">
            <nav class="col-lg-6">
                <ul>
                    <a href=""><li>Aide</li></a>
                    <a href=""><li class="light-text">Statut de la commande</li></a>
                    <a href=""><li class="light-text">Expédition et livraison</li></a>
                    <a href=""><li class="light-text">Retours</li></a>
                    <a href=""><li class="light-text">Modes de paiement</li></a>
                    <a href=""><li class="light-text">Nous contacter</li></a>
                </ul>

                <ul>
                    <a href=""><li>A props de MonTitle</li></a>
                    <a href=""><li class="light-text">Infos</li></a>
                    <a href=""><li class="light-text">Carrières</li></a>
                    <a href=""><li class="light-text">Investisseurs</li></a>
                    <a href=""><li class="light-text">Développement Durable</li></a>
                </ul>

            </nav>

            <nav class="social-network col-lg-6">
                <div class="social-group">
                    <a href=""><i class="fab fa-facebook"></i></a>
                    <a href=""><i class="fab fa-instagram"></i></a>
                    <a href=""><i class="fab fa-twitter"></i></a>
                  </div>
            </nav>
        </div>
        <div class="footer-bottom">
            <span class="light-text" class="text-left">© 2019 MonTitle , SAS Tous droits réservés</span>
            <nav>
                <ul class="text-right">
                    <a href=""><li class="light-text">Conditions de vente</li></a>
                    <a href=""><li class="light-text">Mentions légales</li></a>
                    <a href=""><li class="light-text">Politique de confidentialité</li></a>
                </ul>
            </nav>
        </div>

        <div>

        </div>
    </footer>

</body>
</html>