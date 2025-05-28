import SwiftUI

struct Story: Identifiable {
    let id = UUID()
    let image: UIImage
    let backgroundColor: Color
    let title: String
    let description: String
    
    static let story1 = Story(
        image: .story1,
        backgroundColor: .story1Background,
        title: "🎉 ⭐️ ❤️",
        description: "Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 "
    )
    
    static let story2 = Story(
        image: .story2,
        backgroundColor: .story2Background,
        title: "😍 🌸 🥬",
        description: "Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 "
    )
    
    static let story3 = Story(
        image: .story3,
        backgroundColor: .story3Background,
        title: "🧀 🥑 🥚",
        description: "Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 "
    )
}
