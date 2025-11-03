import SwiftUI

struct ContentView: View {
    @State private var message = "Нажми кнопку 👇"

    var body: some View {
        VStack(spacing: 20) {
            Text(message)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()

            Button("Получить сообщение из C++") {
                message = String(cString: getMessage())
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
