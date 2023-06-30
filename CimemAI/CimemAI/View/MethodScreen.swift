import SwiftUI

struct MethodScreen: View {
    var type: String
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var btnBack : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }){
            BackButton()
    }}
    
    var body: some View {
        NavigationStack {
            VStack (alignment: .center, spacing: 8) {
                Text("Qual método você prefere usar para encontrar qual \(type) assistir?")
                    .font(.system(size: 32))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Azul_Quase_Preto"))
                NavigationLink {
                    SearchView(type: type)
                } label: {
                    Text("Escrever uma descrição")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60, alignment: .center)
                        .background(Color("Azul_Escuro"))
                        .cornerRadius(16)
                }
                
                NavigationLink {
                    CategoriesView(type: type)
                } label: {
                    Text("Selecione entre opções")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60, alignment: .center)
                        .background(Color("Azul"))
                        .cornerRadius(16)
                }
                
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}

struct MethodScreen_Previews: PreviewProvider {
    static var previews: some View {
        MethodScreen(type: "filme")
    }
}
