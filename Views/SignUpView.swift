//import SwiftUI
//
//
//
//struct SignUpView: View {
//    @EnvironmentObject var settings: UserSettings
//    @State var emailAddress: String = ""
//    @State var name: String = ""
//    @State var phone: String = ""
//    @State var password: String = ""
//
//    var body: some View {
//        GeometryReader { geometry in
//                VStack (alignment: .center){
//
//                    Spacer()
//
//                    Text("Create an Account")
//                        .font(.title)
//                        .font(.system(size: 14, weight: .bold, design: Font.Design.default))
//                        .padding(.bottom, 50)
//
//
//                Button(action: {
//                    print("Add photo")
//                }) {
//                    VStack {
//                        Text("+")
//                            .font(.system(size: 18))
//                        Text("Add Photo")
//                            .font(.system(size: 10))
//                    }
//                    .padding()
//                    .frame(width: 100, height: 100)
//                    .foregroundColor(.white)
//                    .background(Color.blue)
//                }
//                .clipShape(Circle())
//                .padding(.bottom, 10)
//
//                VStack {
//                    TextField("Name", text: self.$name)
//                        .frame(width: geometry.size.width - 45, height: 50)
//                        .textContentType(.emailAddress)
//                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
//                        .accentColor(.red)
//                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
//                        .cornerRadius(5)
//
//                    TextField("Email", text: self.$emailAddress)
//                        .frame(width: geometry.size.width - 45, height: 50)
//                        .textContentType(.emailAddress)
//                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
//                        .accentColor(.red)
//                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
//                        .cornerRadius(5)
//
//                    TextField("Phone", text: self.$phone)
//                        .frame(width: geometry.size.width - 45, height: 50)
//                        .textContentType(.emailAddress)
//                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
//                        .accentColor(.red)
//                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
//                        .cornerRadius(5)
//
//                    TextField("Password", text: self.$password)
//                        .frame(width: geometry.size.width - 40, height: 50)
//                        .textContentType(.emailAddress)
//                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
//                        .accentColor(.red)
//                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
//                        .cornerRadius(5)
//                }
//
//                Text("Terms of Service and Privacy Policy")
//                    .foregroundColor(.blue)
//                    .padding(.bottom, 40)
//                    .font(.system(size: 12))
//
//                Button(action: {
//                    // your action here
//                }) {
//                    HStack {
//                        Text("Create Account")
//                    }
//                    .padding()
//                    .frame(width: geometry.size.width - 40, height: 40)
//                    .foregroundColor(.white)
//                    .background(Color.blue)
//                    .cornerRadius(5)
//                }
//                .padding(.bottom, 40)
//
//                Button(action: {
//                    print("Sign up using Facebook Instead")
//                }) {
//                    HStack {
//                        Image("f_logo_RGB-Blue_58")
//                            .resizable()
//                            .frame(width: 20, height: 20)
//                        Text("Sign Up with Facebook")
//                    }
//                }
//
//                Spacer()
//            }
//        }
//    }
//}

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var settings: UserSettings
    @State var emailAddress: String = ""
    @State var name: String = ""
    @State var phone: String = ""
    @State var password: String = ""
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
    GeometryReader { geometry in
            VStack (alignment: .center){
                
                Spacer()
                Text("Create Your Account")
                    .font(.title)
                    .font(.system(size: 14, weight: .bold, design: Font.Design.default))
                    .padding(.bottom, 50)
                
                TextField("Username", text: self.$name)
                    .frame(width: geometry.size.width - 45, height: 50)
                    .textContentType(.name)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    .accentColor(.red)
                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                    .cornerRadius(15)
                
                TextField("Email", text: self.$emailAddress)
                    .frame(width: geometry.size.width - 45, height: 50)
                    .textContentType(.emailAddress)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    .accentColor(.red)
                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                    .cornerRadius(15)
                
                
                TextField("Password", text: self.$password)
                    .frame(width: geometry.size.width - 45, height: 50)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    .foregroundColor(.gray)
                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                    .textContentType(.password)
                    .cornerRadius(5)
                
                Button(action: {
                                   self.settings.loggedIn = true
                                   self.presentationMode.wrappedValue.dismiss()
                               }) {
                                   HStack {
                                       Text("Sign Up")
                                   }
                                   .padding()
                                   .frame(width: geometry.size.width - 40, height: 40)
                                   .foregroundColor(Color.white)
                                   .background(Color.blue)
                                   .cornerRadius(5)
                               }
                Divider()
              
               
                Spacer()
                
            }
            .padding(.bottom, 90)
            }
    }
}





