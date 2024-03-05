//
//  TabBarView.swift
//  SwiftUIStarterKitApp
//
//  Created by Osama Naeem on 02/08/2019.
//  Copyright © 2019 NexThings. All rights reserved.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            NavigationView {
                ActivitiesContentView(activtiesData: Activities(data: ActivitiesMockStore.activityData, items: ActivitiesMockStore.activities))
            }
            .tag(0)
            .tabItem {
                Image("activity-1")
                    .resizable()
                Text("Activities")
            }
            
            NavigationView {
                SearchView()
            }
            .tag(1)
            .tabItem {
                Image(systemName: "magnifyingglass")
                    .resizable()
                Text("Search")
            }
            
            NavigationView {
                ItemsList()
            }
            .tag(2)
            .tabItem {
                Image("shopping-cart-icon")
                Text("Cart")
            }
            
            NavigationView {
                     AccountView()
                  }
                   .tag(3)
                    .tabItem {
                    Image("profile-glyph-icon")
                    Text("Account")
                }
        }
    }
}
