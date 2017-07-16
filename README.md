# Pokedex

This app is made for iPhone. The Pokedex shows in a CollectionView all the pokemons which are available in the resource data. Then, it uses a Detail Segue to pass the view to another which contains the datail information of the specific target got by the didSelectItemAt listener. 

The app uses Alamofire to perform asynchronous request from API. To avoid overload, CollectionViewCell is performed by reusing the cells and not loading all of them.

The data is obteined from the API http://pokeapi.co/ Version 1. 

Here some snapshots:

![alt text](https://raw.githubusercontent.com/saulrivera/Pokedex/master/snaps/front.png)
![alt text](https://raw.githubusercontent.com/saulrivera/Pokedex/master/snaps/details.png)
![alt text](https://raw.githubusercontent.com/saulrivera/Pokedex/master/snaps/search.png)
