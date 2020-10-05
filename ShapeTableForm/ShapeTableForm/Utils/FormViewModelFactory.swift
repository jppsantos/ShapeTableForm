//
//  FormViewModelFactory.swift
//  ShapeTableForm
//
//  Created by Joao Paulo Pereira dos Santos on 05/10/20.
//

/**
 # ViewModel, Factory & Coordinator
 
 ## English Version
 
 ### Creating a ViewModel with integration with a Factory and transition with other viewModels
 
 On one side I have a factory and on the other a viewModel. At the factory I need to implement the createForm method (because of the protocol), but in my logic for creating this method I need a concrete Food object. The problem here is as follows. What about when I want to pass data from one viewModel to another? My intention is to make a viewModel for each type of screen and make them talk to each other by passing data. So I need to create a way for a viewModel to call another without the view knowing what I'm transiting a model for.
 
 For this to be done we will make sure that our view model has a public method that will be called by the view when the user wants to go to a next specific screen (in this case the Food edit screen). The action of this method will be to instantiate the new viewModel desired, passing it the necessary data for the presentation of the content.
 
 Bearing in mind that the passage of data between screens could not be done by the view because we want to respect the principle of sole responsibility and also respect the architecture, in this case the MVVM. Remembering that in MVVM the view cannot know the model, but as I need to make the view pass data to another screen, the view should only ask the ViewModel to do this.
 
 It seems a little confusing at first, but in doing so we will be creating more organized and reusable code.
 
 The full implementation of these concepts will be shown below.
 
 ## Portuguese Version
 
 ### Criando uma ViewModel com integração com uma Factory e transiçao com outras views
 
 De um lado eu tenho um factory e do outro uma viewModel. No factory eu preciso implementar o método createForm (Por causa do protocolo), mas na minha lógica de criação desse método eu preciso de um objeto concreto Food. O problema aqui é o seguinte. E quando eu quiser passar dados de uma viewModel para outra? A minha intenção é fazer uma viewModel para cada tipo de tela e fazer com que elas conversem entre si passando dados. Entao eu preciso criar uma maneira de uma viewModel chamar a outra sem que a view saiba o que eu estou transitando uma model.
 
 Para isso ser feito nós vamos fazer com que nossa view model tenha um método publico que será chamado pela view quando o usuário quiser ir para uma próxima tela específica (nesse caso a tela de editar Food). A açao desse método será instanciar a nova viewModel desejada, passando para ela os dados necessários para a apresentação do conteúdo.
 
 Lembrando que a passagem de dados entre as telas não poderia ser feito pela view porque nós queremos respeitar o princípio da responsabilidade única e também respeitar a arquitetura, neste caso o MVVM. Lembrando que no MVVM a view não pode conhecer a model, mas como eu preciso fazer com que a view passe dados para uma outra tela, a view deve apenas solicitar que a ViewModel faça isso.
 
 Parece um pouco confuso no começo, mas fazendo isso estaremos criando um código mais organizado e reusável.
 
 Toda a implementaçao desses conceitos será mostrada logo abaixo.
 */

import UIKit

struct FoodInfoFormViewModelFactory: FormViewModelFactoryProtocol {
    var items: [FormViewModelItemProtocol] = []
    private var food: Food?

    init() {
        food = Food(id: UUID(), picture: UIImage(), name: "Hamburger", price: 12, doneIn: 15)
    }

    func createForm() -> FormViewModelFactoryProtocol? {
        guard let food = food else { return nil }
        
        var infoVM = self
        
        let picture = FormViewModelPictureItem(pictureImage: food.picture)
        let attributes = FormViewModelAttributeItem(attributes: food.generateAtributes())
        
        infoVM.items.append(picture)
        infoVM.items.append(attributes)
        
        return infoVM
    }
}

//struct FoodInfoFormViewModelFactory: FormViewModelFactoryProtocol {
//    var items: [FormViewModelItemProtocol] = []
//    private var food: Food
//
//    init() {
//        food = Food(id: UUID(), picture: UIImage(), name: "Hamburger", price: 12, doneIn: 15)
//    }
//
//    func createForm() -> FormViewModelFactoryProtocol {
//        var infoVM = self
//
//        let picture = FormViewModelPictureItem(pictureImage: food.picture)
//        let attributes = FormViewModelAttributeItem(attributes: food.generateAtributes())
//
//        infoVM.items.append(picture)
//        infoVM.items.append(attributes)
//
//        return infoVM
//    }
//
//}
