import SwiftUI

struct LogInView: View {
    @State private var emailAddress: String = ""
    @State private var password: String = ""
    @State private var showSignUpView = false
    @State private var isLoggedIn = false

    var body: some View {
        if isLoggedIn {
            TabbarView()
        } else {
            GeometryReader { geometry in
                VStack(alignment: .center) {
                    Spacer()
                    Text("Log Into Your Account")
                        .font(.title)
                        .font(.system(size: 14, weight: .bold, design: Font.Design.default))
                        .padding(.bottom, 50)

                    TextField("Email", text: self.$emailAddress)
                        .frame(width: geometry.size.width - 45, height: 50)
                        .textContentType(.emailAddress)
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                        .accentColor(.red)
                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                        .cornerRadius(15)

                    SecureField("Password", text: self.$password)
                        .frame(width: geometry.size.width - 45, height: 50)
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                        .foregroundColor(.gray)
                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                        .cornerRadius(5)

                    Button(action: {
                        self.isLoggedIn = true
                    }) {
                        Text("Log In")
                            .padding()
                            .frame(width: geometry.size.width - 40, height: 40)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(5)
                    }
                    .padding(.bottom, 40)

                    Divider()
                    Button(action: {
                        self.showSignUpView = true
                    }) {
                        Text("Sign up")
                    }
                    .padding(.bottom, 10)
                    .sheet(isPresented: $showSignUpView) {
                        SignUpView()
                    }

                    Button(action: {
                        print("Take to forget password VC")
                    }) {
                        Text("Forgot your password?")
                    }

                    Spacer()
                }
                .padding(.bottom, 90)
            }
        }
    }
}
