import Foundation

struct Response: Codable {
    let id: String
    let title: String
    let image: String
    let releaseDate: String
    let originalTitle: String?
    let duration: String?
    let plot: String
    let type: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case image = "image"
        case releaseDate = "releaseDate"
        case originalTitle = "originalTitle"
        case duration = "runtimeStr"
        case plot = "plotLocal"
        case type = "type"
    }
}
