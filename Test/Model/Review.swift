/// Модель отзыва.
struct Review: Decodable {

    /// Текст отзыва.
    let text: String
    /// Время создания отзыва.
    let created: String
    
    let first_name: String
    let last_name: String
    let rating: Int   

}
