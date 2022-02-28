@extends('master')
@section("content")
<div class="custom-product">
     <div class="col-sm-10">
        <table class="table">
         
            <tbody>
              <tr>
                <td>Montant</td>
              <td>{{$total}} Fcfa</td>
              </tr>
              <tr>
                <td>livraison</td>
                <td>1500 Fcfa</td>
              </tr>
              <tr>
                <td>Montant total</td>
              <td>{{$total+1500}} Fcfa</td>
              </tr>
            </tbody>
          </table>
          <div>
            <form action="/orderplace" method="POST" >
              @csrf
                <div class="form-group">
                  <textarea name="address" placeholder="Veuillez indiquer votre adresse" class="form-control" ></textarea>
                </div>
                <div class="form-group">
                  <label for="pwd">Méthode de paiement</label> <br> <br>
                  <input type="radio" value="cash" name="payment"> <span>Paiement en ligne</span> <br> <br>
                  <input type="radio" value="cash" name="payment"> <span>Paiement à la livraison</span> <br> <br>

                </div>
                <button type="submit" class="btn btn-default">Valider</button>
              </form>
          </div>
     </div>
</div>
@endsection 