//
//  ActivitiesMockStore.swift
//  SwiftUIStarterKitApp
//
//  Created by Osama Naeem on 06/08/2019.
//  Copyright © 2019 NexThings. All rights reserved.
//

import SwiftUI

class ActivitiesMockStore {
    
    static let activities: [ActivitiesItem] = [
        ActivitiesItem(id: 0, activityName: "CLOTHING", activityNameLabel: "Clothing", activityImage: "clothing", selectedActivity: false),
        ActivitiesItem(id: 1, activityName: "Entertainment", activityNameLabel: "Toys", activityImage: "toys", selectedActivity: false),
        ActivitiesItem(id: 2, activityName: "EDUCATION", activityNameLabel: "Educational", activityImage: "education", selectedActivity: false),
        
    ]
    
    static let activityData: [ActivitiesData] = [
        
        ActivitiesData(id: 0, activitiesPlaces:
            [ActivitiesPlaces(id: 0, activityPlace: "Shirts + Jackets", activityPlaceImage: "shirts", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Gap Shirt", pointImage: "GAP", pointDescription: "Shirt size: 13-14 \n Quality: Slightly Worn \n Brand: Gap \n Contact Number: xxxxxxxxxxx"),
                                                                                                                       
            ActivitiesFamousPoints(id: 1, pointName: "Nike Jacket", pointImage: "NIKE", pointDescription: "Jacket size: 15-16 \n Quality: Brand new \n Brand: Nike \n Contact Number: xxxxxxxxxxxxx"),
            
            ActivitiesFamousPoints(id: 2, pointName: "Ralph Lauren Sweater", pointImage: "SWEATER", pointDescription: "Sweater size: 14-16 \n Quality: Very Worn \n Brand: Ralph Lauren \n Contact Number: xxxxxxxxxxxxx")
            ]),
             
             ActivitiesPlaces(id: 1, activityPlace: "Pants", activityPlaceImage: "pants", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Jeans", pointImage: "JEANS", pointDescription: "Jean Size: 15-16 \n Quality: Slightly Worn \n Brand: Agolde \n Contact Number: xxxxxxxxxxxxx"),
             
            ActivitiesFamousPoints(id: 1, pointName: "Gap Shorts", pointImage: "SHORTS", pointDescription: "Short Size: M \n Quality: Slightly Worn \n Brand: Gap \n Contact Number: xxxxxxxxxxxxx"),
            ActivitiesFamousPoints(id: 2, pointName: "Two Addidas Trousers", pointImage:"ADDIDAS", pointDescription:"Short Size: 14-15 and 15-16 \n Quality: Both slightly worn \n Brand: Addidas \n Contact Number: xxxxxxxxxxxxx")
                
             ]),
             
             ActivitiesPlaces(id: 2, activityPlace: "Hats", activityPlaceImage: "hats", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Under Armour Hat", pointImage: "UAHAT", pointDescription: "Hat Size: 10-11 \n Quality: Very Worn \n Brand: Under Armour \n Contact Number: xxxxxxxxxxxxx"),
                 
            ActivitiesFamousPoints(id: 1, pointName: "Beanie", pointImage: "BEANIE", pointDescription: "Hat Size: M \n Quality: Very Worn \n Brand: Unkown \n Quality: Slightly Worn \n Contact Number: xxxxxxxxxxxxx"),
                 ActivitiesFamousPoints(id: 2, pointName: "Halloween Cowboy Hat", pointImage:"TEXAS", pointDescription: "Hat Size: S \n Brand: Unkown \n Quality: Nearly Brand New \n Contact Number: xxxxxxxxxxxxx")
             ])],
                      
            activityResources:
        
            [ActivityResource(id: 0, resourceName: "New Items", resourceDescription: "Items that have just been posted!", resources:
                [ActivityResourcesItem(id: 0, resourceName: "Item 1", resourceImage: "NewItem1", resourceDescription: "Article"),
                 ActivityResourcesItem(id: 1, resourceName: "Item 2", resourceImage: "NewItem2", resourceDescription: "Article"),
                 ActivityResourcesItem(id: 2, resourceName: "Item 3", resourceImage: "NewItem3", resourceDescription: "Tutorial")]),
                
                ActivityResource(id: 1, resourceName: "Recomended", resourceDescription: "Find your dream items", resources: [ActivityResourcesItem(id: 1, resourceName: "Item 1", resourceImage: "NewItem1", resourceDescription: ""),
                     ActivityResourcesItem(id: 2, resourceName: "Item 2", resourceImage: "NewItem2", resourceDescription: ""),
                     ActivityResourcesItem(id: 3, resourceName: "Item 3", resourceImage: "NewItem3", resourceDescription: "")]),
                
                
                ]),
       
        ActivitiesData(id: 1, activitiesPlaces: [
        
            ActivitiesPlaces(id: 1, activityPlace: "Toys", activityPlaceImage: "TOYS", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Marvel Lego Set", pointImage: "TOWER", pointDescription: "Description: \n 18+ Lego set. Mint Condition / Unopened. 5201 Pieces. Set 76269. \n Contact Number: xxxxxxxxx"),
                ActivitiesFamousPoints(id: 1, pointName: "Pikachu Stuffed Toy", pointImage: "PIKA", pointDescription: "Description: \n Very big stuffed Pikachu. 68 cm tall, 40 cm wide. 5 Years Old. \n Contact Number: xxxxxxxxx"),
                ActivitiesFamousPoints(id: 2, pointName: "Barbie Dream House", pointImage: "BARBIE", pointDescription: "Description: \n 2 year old Barbie Dream House. No figurines or pool included, just the house \n Contact Number: xxxxxxxxxx")
            ]),
            
            ActivitiesPlaces(id: 2, activityPlace: "Gaming", activityPlaceImage: "GAMES", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Wii U", pointImage: "WII", pointDescription: "Description: \n 32GB Wii U console. 8 Years Old. No games included. \n Contact Number: xxxxxxxxxx"),
                ActivitiesFamousPoints(id: 1, pointName: "Gaming Controller", pointImage: "PS5", pointDescription: "Description: \n Controller for playstation 5. Square Button and lights does not work, everything else does. \n Contact Number: xxxxxxxxxx"),
                ActivitiesFamousPoints(id: 2, pointName: "Old Gaming Keyboard", pointImage: "Keyboard", pointDescription: "Description: \n Keyboard I found in the attic. About 7-9 years old. All the buttons work. \n Contact: xxxxxxxxxx")
            ]),
            
            ActivitiesPlaces(id: 3, activityPlace: "Other", activityPlaceImage: "Black", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Warriors Series 5 books", pointImage: "MEOW", pointDescription: "Description: \n 6 books. The complete version of the 5 series of Warrios by Erin Hunter \n Contact: xxxxxxx"),
                ActivitiesFamousPoints(id: 1, pointName: "Hasbro Classic Monopoly", pointImage: "MONO", pointDescription: "Description: \n Classic version of Monoply. 5 years old. \nContact Number: xxxxxxxxx"),
                ActivitiesFamousPoints(id: 2, pointName: "Chess set", pointImage: "Chess", pointDescription: "Description: \n Old chess set made out of wood. High quality, 14 years old. White knight and Black rook is missing. \n Contact Number: xxxxxxxxx")]),
            

        
        ],
                      
                      
            activityResources:
       
           [ActivityResource(id: 0, resourceName: "New Items", resourceDescription: "New Items that have just been posted!", resources:
               [ActivityResourcesItem(id: 0, resourceName: "Chess Set", resourceImage: "Chess", resourceDescription: "Article"),
                ActivityResourcesItem(id: 1, resourceName: "Barbie Playhouse", resourceImage: "BARBIE", resourceDescription: "Article"),
                ]),
               
               ActivityResource(id: 1, resourceName: "Recommended", resourceDescription: "Recommended for you", resources: [ActivityResourcesItem(id: 1, resourceName: "Pikachu Doll", resourceImage: "PIKA", resourceDescription: ""),
                    ActivityResourcesItem(id: 2, resourceName: "Barbie Playhouse", resourceImage: "BARBIE", resourceDescription: ""),
                    ActivityResourcesItem(id: 3, resourceName: "Monopoly classic", resourceImage: "MONO", resourceDescription: "")]),
               
               ]),
       
       
        ActivitiesData(id: 2, activitiesPlaces: [
        
            ActivitiesPlaces(id: 1, activityPlace: "Books", activityPlaceImage: "BOOKS", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "5th Grade SAT book", pointImage: "SAT", pointDescription: "Description: Slightly Worn SAT book for 5th grade. Includes grammar, vocabulary and words. \n Contact Number:x"),
            
                ActivitiesFamousPoints(id: 1, pointName: "Notebook", pointImage: "notebooks", pointDescription: "Description: \n 4 notebooks. \n Contact: x"),
                ActivitiesFamousPoints(id: 2, pointName: "Grade 12 Math Notebook", pointImage: "Math", pointDescription: "Description: \nMath notebook for grade 12 students. \nContact Number:x")
            ]),
            
            ActivitiesPlaces(id: 2, activityPlace: "Stationary", activityPlaceImage: "STATIONARY", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Marker Set", pointImage: "MARKER", pointDescription: "Description: Marker Set. Yellow marker is missing. \n Contact Number: x"),
                
                ActivitiesFamousPoints(id: 1, pointName: "Notebook and pen", pointImage: "NOTEBOOK", pointDescription: "Description: Brand new notebook with a pen. \n Contact Number: x"),
                ActivitiesFamousPoints(id: 2, pointName: "Fountain Pen", pointImage: "PEN", pointDescription: "Description: Slightly use fountain Pen. \n Contact Number: x")
            
            ]),
            ActivitiesPlaces(id: 3, activityPlace: "Other", activityPlaceImage: "black", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Whiteboard", pointImage: "WHITEBOARD", pointDescription: "Description: Used whiteboard \n Contact Number: x"),
                  
                ActivitiesFamousPoints(id: 1, pointName: "Math block kits", pointImage: "blocks", pointDescription: "Description: Old Math block kit, with blocks representing 1, 10, 100 and 1000. One 100 block is missing. \n Conctact NUmber: x")

            ])],
                      
                      
            activityResources:
       
           [ActivityResource(id: 0, resourceName: "New Items", resourceDescription: "New Items that have just been posted", resources:
               [ActivityResourcesItem(id: 0, resourceName: "5th Grade SAT book", resourceImage: "SAT", resourceDescription: "Article"),
                ActivityResourcesItem(id: 1, resourceName: "Math block kits", resourceImage: "blocks", resourceDescription: "Article"),
                ActivityResourcesItem(id: 2, resourceName: "Hikers Parties", resourceImage: "hikersparties", resourceDescription: "Fun")]),
               
               ActivityResource(id: 1, resourceName: "Reccomended", resourceDescription: "Recomended for you", resources: [ActivityResourcesItem(id: 1, resourceName: "Whiteboard", resourceImage: "WHITEBOARD", resourceDescription: ""),
                    ActivityResourcesItem(id: 2, resourceName: "Fountain pen", resourceImage: "PEN", resourceDescription: ""),
                    ActivityResourcesItem(id: 3, resourceName: "Notebook and Pen", resourceImage: "NOTEBOOK", resourceDescription: "")]),
               ])
       
    ]
    
    static let shoppingCartData: [ActivitiesCartItem] = [
           ActivitiesCartItem(itemID: "1", itemName: "Snow board", itemPrice: 450, itemColor: "Red", itemManufacturer: "Elan Explore", itemImage: "snowboardred"),
           ActivitiesCartItem(itemID: "2", itemName: "Camping Tent", itemPrice: 235, itemColor: "Yellow", itemManufacturer: "Explorers", itemImage: "campingtent"),
           ActivitiesCartItem(itemID: "3", itemName: "Surf board", itemPrice: 825, itemColor: "Black", itemManufacturer: "WaveExplore", itemImage: "surfboard")
       ]
    
}
