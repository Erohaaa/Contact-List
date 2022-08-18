
import Foundation


struct personalData {
    let name: String
    let surname: String
    let phone: String
    let mail: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension personalData {
    static func getData() -> [personalData] {
        return [
            personalData(name: "Максим", surname: "Синеок", phone: "000001", mail: "1@mail.ru"),
            personalData(name: "Дмитрий", surname: "Бреус", phone: "000002", mail: "2@mail.ru"),
            personalData(name: "Александр", surname: "Кушнаренко", phone: "000003", mail: "3@mail.ru"),
            personalData(name: "Юрий", surname: "Бабиюк", phone: "000004", mail: "4@mail.ru"),
            personalData(name: "Виталий", surname: "Ерошкин", phone: "000005", mail: "5@mail.ru"),
            personalData(name: "Владислав", surname: "Литвиненко", phone: "000006", mail: "6@mail.ru")
        ].shuffled()
        
    }
}
