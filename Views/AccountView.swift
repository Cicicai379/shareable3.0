import SwiftUI

struct AccountView: View {
    @State var notificationToggle: Bool = false
    @State var locationUsage: Bool = false
    @State var email: String = ""
    @State var phoneNumber: String = ""
    @State var location: String = ""
    @State var name: String = ""
    @State var age: Int = 0
    @State var username: String = ""
    
    var body: some View {
        GeometryReader { g in
            VStack {
                Image("eagle")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding(.bottom, 10)
                Text("John Appleseed")
                    .font(.system(size: 20))
                    
                Form {
                    Section(header: Text("Contact Information")) {
                        TextField("Email", text: self.$email)
                        TextField("Phone Number", text: self.$phoneNumber)
                        TextField("Location", text: self.$location)
                    }
                    
                    Section(header: Text("Personal Information")) {
                        TextField("Name", text: self.$name)
                        Stepper("Age: \(self.age)", value: self.$age, in: 0...150)
                        TextField("Username", text: self.$username)
                        
                        Button(action: {
                            self.saveInformation()
                        }) {
                            Text("Save Information")
                        }
                    }
                    
                    Section(footer: Text("Allow push notifications to get latest travel and equipment deals")) {
                        Toggle(isOn: self.$locationUsage) {
                            Text("Location Usage")
                        }
                        Toggle(isOn: self.$notificationToggle) {
                            Text("Notifications")
                        }
                    }
                        
                }.background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                .navigationBarTitle("Settings")
            }
        }
    }
    
    func saveInformation() {
        // Add code to save the user information
        print("User information saved")
    }
}
