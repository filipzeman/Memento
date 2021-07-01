import SwiftUI
//import Firebase
//import FirebaseAuth

struct RootView: View {
    @State var signInToggle = true
    @State var email = ""
    @State var password = ""
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color.black)
//        FirebaseApp.configure()
    }
    
    var body: some View {
        ZStack {
            Image("root_mountain")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Color("BackgroundOverlay")
                .opacity(0.8)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing:50) {
                AppTitle()
                Spacer()
                EmailField(email: $email)
                PasswordField(password: $password)
                ActionButton(toggle: $signInToggle)
                Caption(toggle: $signInToggle)
            }
            .padding(40)
        }
    }
    
//    func signup() {
//        Auth.auth().createUser(withEmail: email, password: password) { result, error in
//            guard error == nil else {
//                print(error!.localizedDescription)
//                return
//            }
//            print("User signed up!")
//        }
//    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

struct FormFieldInner: ViewModifier {
    func body(content: Content) -> some View {
        content
            .colorScheme(.dark)
            .foregroundColor(Color.white.opacity(0.7))
            .autocapitalization(.none)
    }
}

struct FormFieldOuter: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height:52)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.white, lineWidth: 1.0)
                    .blendMode(.overlay)
            )
            .background(
                Color("BackgroundOverlay")
                    .cornerRadius(16.0)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            )
    }
}

struct ActionButton: View {
    @Binding var toggle: Bool
    var body: some View {
        NavigationLink(destination:AgendaView()) {
            Text(toggle ? "Sign in" : "Create account")
            .font(.title2)
        }
        .frame(width:250)
        .padding(.horizontal, 30)
        .padding(.vertical, 15)
        .foregroundColor(.white)
        .background(Color("Primary"))
        .cornerRadius(50)
    }
}

struct EmailField: View {
    @Binding var email: String
    var body: some View {
        HStack(spacing: 8.0) {
            Image(systemName: "envelope.open.fill")
                .foregroundColor(.white)
                .padding(.horizontal, 16)
            TextField("Email", text: $email)
                .modifier(FormFieldInner())
                .textContentType(.emailAddress)
        }
        .modifier(FormFieldOuter())
    }
}

struct PasswordField: View {
    @Binding var password: String
    var body: some View {
        HStack(spacing: 8.0) {
            Image(systemName: "key.fill")
                .foregroundColor(.white)
                .padding(.horizontal, 16)
            SecureField("Password", text: $password)
                .modifier(FormFieldInner())
                .textContentType(.password)
        }
        .modifier(FormFieldOuter())
    }
}

struct AppTitle: View {
    var body: some View {
        Text("Memento")
            .foregroundColor(.white)
            .fontWeight(.bold)
            .font(.system(size:45))
            .textCase(.uppercase)
            .padding(.top, 60)
    }
}

struct Caption: View {
    @Binding var toggle: Bool
    var body: some View {
        HStack {
            Text(toggle ? "Don't have an account?" : "Already have account ?")
                .foregroundColor(.gray)
    
            Button(action: {
                withAnimation(.easeInOut(duration: 0.7)) {
                    toggle.toggle()
                }
            }, label: {
                Text(toggle ? "Sign up" : "Sign in")
                    .foregroundColor(.white)
            })
            
        }
    }
}
