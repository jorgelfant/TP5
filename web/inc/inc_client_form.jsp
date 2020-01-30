<%--
  Created by IntelliJ IDEA.
  User: jorge.carrillo
  Date: 1/27/2020
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<label for="nomClient">Nom <span class="requis">*</span></label>
<input type="text" id="nomClient" name="nomClient" value="<c:out value="${requestScope.client.nom}"/>" size="30" maxlength="30" />
<span class="erreur">${requestScope.form.listeErreurs['nomClient']}</span>
<br />

<label for="prenomClient">Prénom </label>
<input type="text" id="prenomClient" name="prenomClient" value="<c:out value="${requestScope.client.prenom}"/>" size="30" maxlength="30" />
<span class="erreur">${requestScope.form.listeErreurs['prenomClient']}</span>
<br />

<label for="adresseClient">Adresse de livraison <span class="requis">*</span></label>
<input type="text" id="adresseClient" name="adresseClient" value="<c:out value="${requestScope.client.adresse}"/>" size="30" maxlength="60" />
<span class="erreur">${requestScope.form.listeErreurs['adresseClient']}</span>
<br />

<label for="telephoneClient">Numéro de téléphone <span class="requis">*</span></label>
<input type="text" id="telephoneClient" name="telephoneClient" value="<c:out value="${requestScope.client.telephone}"/>" size="30" maxlength="30" />
<span class="erreur">${requestScope.form.listeErreurs['telephoneClient']}</span>
<br />

<label for="emailClient">Adresse email</label>
<input type="email" id="emailClient" name="emailClient" value="<c:out value="${requestScope.client.email}"/>" size="30" maxlength="60" />
<span class="erreur">${requestScope.form.listeErreurs['emailClient']}</span>
<br />
