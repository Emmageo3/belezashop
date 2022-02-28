<?php

namespace Database\Seeders;


use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('products')->insert([
            [
                'nom'=>'Perruque Julia',
                'prix'=>'65000',
                'description'=>'Perruques cheveux raides naturels pour black middle lace front wig straight hair perruque vrai cheveux doux humain naturel perruque femme vrai cheveux bresilien (22 inch, Naturel)',
                'categorie'=>'Wigs',
                'photo'=>'https://images-na.ssl-images-amazon.com/images/I/61SDYWEzK-L._AC_SY355_.jpg'
            ],
            [
                'nom'=>'Cotten Candy',
                'prix'=>'7000',
                'description'=>'Hyper confortable',
                'categorie'=>'Shoes',
                'photo'=>'https://cdn.shopify.com/s/files/1/0401/7117/6092/products/image_4ebc4d93-e261-4697-9dd3-cedc5110106a_580x.jpg?v=1609011396'
            ],
            [
                'nom'=>'Mini sac effet python',
                'prix'=>'5000',
                'description'=>'dimensions : 150x110x5,9mm, Poignée portative + chaîne, Mini sac épaule ou main à bandoulière,Existe en 4 coloris ',
                'categorie'=>'Bags',
                'photo'=>'https://media.cdnws.com/_i/169562/10033/593/33/mini-petit-sac-carr-2020-nouvelle-mode-qualit-pu-cuir-femmes-sac-main-alligator-cuir-cha.jpeg'
            ],
            [
                'nom'=>'Collier Baddie',
                'prix'=>'4000',
                'description'=>'Collier en acier inoxydable avec pendentif en forme de lettre en forme de baddie',
                'categorie'=>'Jewelry',
                'photo'=>'https://images-na.ssl-images-amazon.com/images/I/71h2skd9uAL._AC_UL1500_.jpg'
            ]
        ]);
    }
}
