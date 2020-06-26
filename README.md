# Pokedex

This app is made for iPhone. The Pokedex shows in a CollectionView all the pokemons which are available in the resource data. Then, it uses a Detail Segue to pass the view to another which contains the datail information of the specific target got by the didSelectItemAt listener. 

The app uses Alamofire to perform asynchronous request from API. To avoid overload, CollectionViewCell is performed by reusing the cells and not loading all of them at the same time.

The data is obtained from the API http://pokeapi.co/ Version 1. 

<p align="center">
<img src="https://raw.githubusercontent.com/saulrivera/Pokedex/master/snaps/front.png" width="30%">
<img src="https://raw.githubusercontent.com/saulrivera/Pokedex/master/snaps/details.png" width="30%">
<img src="https://raw.githubusercontent.com/saulrivera/Pokedex/master/snaps/search.png" width="30%">
</p>
