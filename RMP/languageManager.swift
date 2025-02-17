//
//  languageManager.swift
//  RMP
//
//  Created by Neshwa on 16/02/25.
//

import Foundation

class LanguageManager {
    
    static let shared = LanguageManager()

    func setLanguage(_ language: String) {
        UserDefaults.standard.set(language, forKey: "AppLanguage")
        UserDefaults.standard.synchronize()
    }
    
    func getEnglishLanguage() -> String {
        if #available(iOS 16, *) {
            return UserDefaults.standard.string(forKey: "AppLanguage") ?? Locale.current.language.languageCode?.identifier ?? "en"
        } else {
            return UserDefaults.standard.string(forKey: "AppLanguage") ?? Locale.current.languageCode ?? "en"
        }
    }
    
    func getCurrentLanguage() -> String {
        return UserDefaults.standard.string(forKey: "AppLanguage") ?? Locale.current.languageCode ?? "en"
    }
    
    func localizedString(for key: String) -> String {
        let language = getEnglishLanguage()
        guard let path = Bundle.main.path(forResource: language, ofType: "lproj"),
            let bundle = Bundle(path: path) else {
            return NSLocalizedString(key, comment: "")
        }
        return NSLocalizedString(key, tableName: nil, bundle: bundle, value: "", comment: "")
    }
}


//class LanguageManager {
//    
//    static let shared = LanguageManager()
//
//    private init() {}
//    
//    func setLanguage(_ language: String) {
//        UserDefaults.standard.set([language], forKey: "AppleLanguages") // Save the language
//        UserDefaults.standard.synchronize()
//        
//        // Notify the app to reload
//        NotificationCenter.default.post(name: NSNotification.Name("LanguageChanged"), object: nil)
//    }
//    
//    func getCurrentLanguage() -> String {
//        return UserDefaults.standard.string(forKey: "AppLanguage") ?? Locale.current.languageCode ?? "en"
//    }
//
//    func localizedString(for key: String) -> String {
//        let language = getCurrentLanguage()
//        guard let path = Bundle.main.path(forResource: language, ofType: "lproj"),
//              let bundle = Bundle(path: path) else {
//            return NSLocalizedString(key, comment: "")
//        }
//        return NSLocalizedString(key, tableName: nil, bundle: bundle, value: "", comment: "")
//    }
//}

