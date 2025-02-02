import SwiftUI

struct CodeViewModifier: ViewModifier {

  func body(content: Content) -> some View {
    content
      .font(.caption)
      .foregroundColor(.secondary)
  }
}

extension View {
  func code() -> some View {
    modifier(CodeViewModifier())
  }
}

struct CodeViewModifier_Previews: PreviewProvider {
  static var previews: some View {
    Text("navigator.next(paths: [\"page1\"], items: [:], isAnimated: true)")
      .code()
  }
}
