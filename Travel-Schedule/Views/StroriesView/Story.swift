import SwiftUI

struct FullStory {
    private let mainTheme: UIImage
    let stories: [Story]
    
    static let fullStory1 = FullStory(
        mainTheme: .mainTheme1,
        stories: [.story11, .story12, .story13]
    )
    
    static let fullStory2 = FullStory(
        mainTheme: .mainTheme2,
        stories: [.story21, .story22, .story23]
    )
    
    static let fullStory3 = FullStory(
        mainTheme: .mainTheme3,
        stories: [.story31, .story32, .story33]
    )
}

struct Story: Identifiable, Hashable {
    let id = UUID()
    let image: UIImage
    let backgroundColor: Color
    let title: String
    let description: String
    
    static let story11 = Story(
        image: .story11,
        backgroundColor: .story1Background,
        title: "🎉 ⭐️ ❤️",
        description: "Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 "
    )
    
    static let story12 = Story(
        image: .story12,
        backgroundColor: .story2Background,
        title: "😍 🌸 🥬",
        description: "Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 "
    )
    
    static let story13 = Story(
        image: .story13,
        backgroundColor: .story3Background,
        title: "🧀 🥑 🥚",
        description: "Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 "
    )
    
    static let story21 = Story(
        image: .story21,
        backgroundColor: .story1Background,
        title: "🎉 ⭐️ ❤️",
        description: "Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 "
    )
    
    static let story22 = Story(
        image: .story22,
        backgroundColor: .story2Background,
        title: "😍 🌸 🥬",
        description: "Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 "
    )
    
    static let story23 = Story(
        image: .story23,
        backgroundColor: .story3Background,
        title: "🧀 🥑 🥚",
        description: "Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 "
    )
    
    static let story31 = Story(
        image: .story31,
        backgroundColor: .story1Background,
        title: "🎉 ⭐️ ❤️",
        description: "Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 Text1 "
    )
    
    static let story32 = Story(
        image: .story32,
        backgroundColor: .story2Background,
        title: "😍 🌸 🥬",
        description: "Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 Text2 "
    )
    
    static let story33 = Story(
        image: .story33,
        backgroundColor: .story3Background,
        title: "🧀 🥑 🥚",
        description: "Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 Text3 "
    )
}
