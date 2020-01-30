<%--
  Created by IntelliJ IDEA.
  User: jorge.carrillo
  Date: 1/29/2020
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                             TP Fil rouge - Étape 3
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Avant d'aller plus loin, retour sur le fil rouge à travers lequel vous tenez une belle occasion de mettre en pratique
tout ce que vous venez de découvrir dans ces deux chapitres. Vous allez reprendre le code que vous avez développé au
cours des étapes précédentes pour y ajouter des vérifications sur le contenu des champs, et l'adapter pour qu'il
respecte MVC.

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                   Objetifs
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Fonctionnalités
***************

Pour commencer, vous allez devoir modifier vos pages et servlets afin d'utiliser la méthode POST pour l'envoi des données
depuis vos formulaires de création de clients et de commandes, et non plus la méthode GET. Au passage, vous allez en
profiter pour appliquer la pratique que je vous avais communiquée lorsque nous avions découvert MVC : vous allez déplacer
toutes vos JSP sous le répertoire /WEB-INF, et gérer leur accès entièrement depuis vos servlets. Je ne vous l'avais pas
fait faire dans les premières étapes pour ne pas vous embrouiller, mais le moment est venu !

Deuxièmement, je vous demande de mettre en place des vérifications sur les champs des formulaires :

      * chaque champ marqué d'une étoile dans les formulaires devra obligatoirement être renseigné ;

      * les champs nom et prenom devront contenir au moins 2 caractères ;

      * le champ adresse devra contenir au moins 10 caractères ;

      * le champ telephone devra être un nombre et contenir au moins 4 numéros ;

      * le champ email devra contenir une adresse dont le format est valide ;

      * le montant devra être un nombre positif, éventuellement décimal ;

      * les champs modePaiement, statutPaiement, modeLivraison et statutLivraison devront contenir au moins 2 caractères ;

      * le champ date restera désactivé.

Troisièmement, je vous demande de changer le principe de votre petite application :

     * en cas d'erreur lors de la validation (champs manquants ou erronés), vous devrez faire retourner l'utilisateur
       au formulaire de saisie en lui réaffichant - sans faille XSS ! - les données qu'il a saisies, et en précisant
       un message signalant les erreurs sur chaque champ qui pose problème ;

     * en cas de succès, vous devrez envoyer l'utilisateur vers la page qui affiche la fiche récapitulative.

Enfin bien évidemment, tout cela se fera en respectant MV

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                   Conseils
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Concernant le changement de méthode d'envoi de GET vers POST et le déplacement des JSP sous /WEB-INF, il vous suffit
de bien penser à ce que cela va impliquer dans vos formulaires, dans vos servlets et dans votre menu ! Typiquement,
vous allez devoir faire en sorte que vos servlets affichent les formulaires en cas de réception d'une requête GET,
et traitent les données envoyées en cas de réception d'une requête POST. Côté formulaire, vous allez devoir modifier
un attribut de la balise <form>... Et dans votre menu, vous allez devoir remplacer les URL des deux pages JSP par
celles de leurs servlets respectives.

Concernant les vérifications sur le contenu des champs, vous pouvez bien évidemment grandement vous inspirer des
méthodes de validation que nous avons mises en place dans le chapitre précédent dans notre système d'inscription.
Le principe est très semblable, seules certaines conditions de vérification changent. De même, afin de respecter MVC,
vous pourrez prendre exemple sur la conception utilisée dans le chapitre précédent : beans, objets métiers et servlets
"nettoyées" !

Voici à la figure suivante l'arborescence que vous êtes censés créer.

Enfin, concernant le renvoi vers le formulaire de création en cas d'erreur(s), avec affichage des erreurs spécifiques
à chaque champ posant problème, là encore vous pouvez vous inspirer de ce que nous avons développé dans le chapitre
précédent !

Bref, vous l'aurez compris, ce TP est une application pure et simple de ce que vous venez de découvrir à travers la
mise en place de notre système d'inscription. Je m'arrête donc ici pour les conseils, vous avez toutes les informations
et tous les outils en main pour remplir votre mission ! Lancez-vous, ne vous découragez pas et surpassez-vous ! :)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                   Correction
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


--%>




</body>
</html>
