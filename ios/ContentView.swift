import SwiftUI

struct ContentView: View {
    @State private var message = "Нажми кнопку 👇"

    var body: some View {
        VStack(spacing: 20) {
            Text(message)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()

            Button(action: {
                message = getCppMessage()
            }) {
                Text("Показать сообщение")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.horizontal, 40)
        }
    }
}
