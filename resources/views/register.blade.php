@extends('master')
@section("content")
    <div class="container custom-login">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
                <form action="register" method="POST">
                @csrf
                <div class="form-group">
                       
                       <label for="exampleInputEmail1">Nom</label>
                       <input type="text" name="nom" class="form-control" id="exampleInputEmail1" placeholder="nom">
                   </div>
                    <div class="form-group">
                       
                        <label for="exampleInputEmail1">Email</label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label for="exammpleInputPassword1">Mot de passe</label>
                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Mot de passe">
                    </div>
                    <button type="submit" class="btn btn-default">S'inscrire</button>
                </form>
            </div>
        </div>
    </div>
@endsection