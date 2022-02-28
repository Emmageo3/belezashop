@extends('master')
@section("content")
<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <img class="detail-img" src="{{$product['photo']}}" alt="">
        </div>
        <div class="col-sm-6">
        <a href="/">Retour</a>
        <h2>{{$product['nom']}}</h2>
        <h3>Prix : {{$product['prix']}} Fcfa</h3>
        <h4>Description : {{$product['description']}}</h4>
        <h4>Catégorie : {{$product['categorie']}}</h4>
        <br><br>
        <form action="/add_to_cart" method="POST">
        @csrf
        <input type="hidden" name="product_id" value="{{$product['id']}}">
        <button class="btn btn-primary">Ajouter au panier</button>
        </form>
        <br><br>
        <button class="btn btn-success">Valider mon achat</button>
        <br><br>
        </div>
    </div>
</div>
@endsection