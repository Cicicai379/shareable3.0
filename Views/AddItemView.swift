import SwiftUI
import Combine

struct MyTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(20)
            .background(
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .stroke(Color.secondary, lineWidth: 1)
            )
            .padding(.leading, 15)
            .padding(.trailing, 20)
            .padding(.top, 10)
    }
}

struct AddItemView: View {
    @State private var isShowingImagePicker = false
    @State private var itemName = ""
    @State private var quantity = ""
    @State private var type: String? = nil
    @State private var selectedImage: UIImage?
    @State private var displayedImage: Image?
    var dismissAction: () -> Void
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Add Item")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top, 40)
                
                VStack {
                    TextField("Item Name", text: $itemName)
                        .textFieldStyle(MyTextFieldStyle())
                    
                    TextField("Quantity", text: $quantity)
                        .textFieldStyle(MyTextFieldStyle())
                        .padding(.bottom, 20)
                    
                    Picker("Type", selection: $type) {
                        Text("Item Type").tag(nil as String?)
                        Text("Food").tag("Food")
                        Text("Education").tag("Education")
                        Text("Sports").tag("Sports")
                        Text("Clothing").tag("Clothing")
                        Text("Toy").tag("Toy")
                        Text("Other").tag("Other")
                    }
                    .pickerStyle(MenuPickerStyle())
                    .textFieldStyle(MyTextFieldStyle())
                    
                    Button(action: {
                        isShowingImagePicker = true
                    }) {
                        Text("Select Image")
                    }
                    .padding(.bottom, 20)
                    
                   
                    
                    if let displayedImage = displayedImage {
                        displayedImage
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 600, height: 200).padding(.bottom, 20)
                    }else {
                        Rectangle()
                            .foregroundColor(Color.gray)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 600, height: 100).padding(.bottom, 20).padding(.bottom, 20)
                    }
                    
                    Button(action: {
                        dismissAction()
                    }) {
                        HStack {
                            Text("Upload")
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(15)
                    }
                    .padding(.bottom, 20)
                }
                .padding(.horizontal)
                .padding(.top, 80)
                
                Spacer()
            }
            .sheet(isPresented: $isShowingImagePicker, onDismiss: loadImage) {
                ImagePicker(selectedImage: $selectedImage)
                    .edgesIgnoringSafeArea(.all)
            }
            .navigationBarHidden(true)
        }
    }
    
    func loadImage() {
        guard let uiImage = selectedImage else {
            return
        }
        
        // Convert the UIImage to a SwiftUI Image
        let image = Image(uiImage: uiImage)
        
        // Update the displayedImage state variable to display the selected image
        displayedImage = image
    }
}
