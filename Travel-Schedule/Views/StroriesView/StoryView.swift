import SwiftUI

struct StoryView: View {
    let story: Story

    var body: some View {
        story.backgroundColor
            .ignoresSafeArea()
            .overlay(
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 10) {
                        Text(story.title)
                            .font(.bold34)
                            .foregroundColor(.white)
                        Text(story.description)
                            .font(.regular20)
                            .lineLimit(3)
                            .foregroundColor(.white)
                    }
                    .padding(.init(top: 0, leading: 16, bottom: 40, trailing: 16))
                }
            )

    }
}

#Preview {
    StoryView(story: .story1)
}
