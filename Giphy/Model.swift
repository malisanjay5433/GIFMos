//
//  Model.swift
//  Giphy
//
//  Created by Sanjay Mali on 02/11/16.
//  Copyright © 2016 Sanjay. All rights reserved.
//

import Foundation
import UIKit
class Model: NSObject {

    var images:[UIImage] = []
    var status:[String] = []
    var name:[String] = []
    
     func dataSource(){
    
        let image1 = UIImage(named: "sanjay")
        _ = UIImage(named: "10years")
        let image3 = UIImage(named: "p")
        let image4 = UIImage(named: "followed Dream")
        let image5 = UIImage(named: "10years")
        let image6 = UIImage(named: "followed Dream")
        let image7 = UIImage(named: "sanjay")
        let image8 = UIImage(named: "10years")
        let image9 = UIImage(named: "p")
        let image10 = UIImage(named: "10years")
        let image11 = UIImage(named: "followed Dream")
        _ = UIImage(named: "inspir")
        let image13 = UIImage(named: "followed Dream")
        let image14 = UIImage(named: "10years")
        let image15 = UIImage(named: "p")
        let image16 = UIImage(named: "followed Dream")
        let image17 = UIImage(named: "10years")
        let image18 = UIImage(named: "me")
        

        images.append(image1!)
        name.append("Preeti")
        status.append("Do not take life too seriously. You will never get out of it alive. ~ Elbert Hubbard")
      
        images.append(image18!)
        name.append("Sanjay")
        status.append("was looking for someone that can improve my life, but then I met you.")
      
        images.append(image3!)
        name.append("Jp")
        status.append("Those who snore always fall asleep first. ~ Anonymous ")
       
        images.append(image4!)
        name.append("Shree")
        status.append("A loving heart is the beginning of all knowledge.")
      
        images.append(image5!)
        name.append("Vivek")
        status.append("A Boss is like a diaper....... always on your ass, and usually full of sh**it")
     
        images.append(image6!)
        name.append("Shiva")
        status.append("Love is the strongest force the world possesses, yet it is the humblest imaginable – Gandhi")
        
        images.append(image7!)
        name.append("Sanjay")
        status.append("I was looking for someone that can improve my life, but then I met you and found my life in you which were already perfect.")
       
        images.append(image8!)
        name.append("Mahesh")
        status.append("Every time you texts me my cheeks hurt! I guess I smile too big.")
       
        images.append(image9!)
        name.append("Niklesh")
        status.append("How come there's only one monopolies commission? ~ Nigel Rees  ")
        
        images.append(image10!)
        name.append("Tanmay")
        status.append("When the angels ask what I most loved about life, I’ll say you.")
        
      
        images.append(image11!)
        name.append("Lalit")
        status.append("Love is like the sun coming out of the clouds and warming your soul. - Anonymous")
        
        images.append(image7!)
        name.append("Preeti")
        status.append("Never trust your heart because it’s on the right side.")
        
        images.append(image13!)
        name.append("Love")
        status.append("Life isn’t about getting and having, it’s about giving and being. –Kevin Kruse")
        
        images.append(image14!)
        name.append("Apporva")
        status.append("Love cures people, both the one who give it and the one who receive it- Dr. Karl")
        
        images.append(image15!)
        name.append("Nikita")
        status.append("One must be a wise reader to quote wisely and well. ` Amos Bronson Alcott")
       
        images.append(image16!)
        name.append("Raju")
        status.append("I'd like to run away from you, but if you didn't come and find me.... I would die. ~ Shirly Bassey")
       
        images.append(image17!)
        name.append("Nilesh")
        status.append("Your cute smile is all I need to battle all struggles in my life.")

    }
}
