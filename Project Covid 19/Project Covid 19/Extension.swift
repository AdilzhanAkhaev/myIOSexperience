//
//  Extension.swift
//  Project Covid 19
//
//  Created by Adilzhan Akhayev on 4/19/20.
//  Copyright © 2020 Adilzhan Akhayev. All rights reserved.
//

import UIKit

extension UIColor {
    static func colorFor(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1)
    }
}

extension UIView {
    func autolayoutAddSubview(_ view: UIView) {
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension UIViewController {
    func presentOkAlertWithMessage(_ message: String) {
        let alertvc = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertvc.addAction(action)
        self.present(alertvc, animated: true, completion: nil)
    }
}

extension URL {
    func get<T: Codable>(type: T.Type, completion: @escaping (Result<T, ApiError>) -> Void) {
        let session = URLSession.shared
        let task = session.dataTask(with: self) { data, _, error in
            if let _ = error {
                DispatchQueue.main.async {
                    completion(.failure(.generic))
                }
                return
            }
            
            guard let unwrapped = data else {
                DispatchQueue.main.async {
                    completion(.failure(.generic))
                }
                return
            }
            
            if let result = try? JSONDecoder().decode(type, from: unwrapped) {
                DispatchQueue.main.async {
                    completion(.success(result))
                }
            }
            else {
                DispatchQueue.main.async {
                    completion(.failure(.generic))
                }
            }
        }
        
        task.resume()
    }
}

enum ApiError: Error {
    case generic
}

extension ApiError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .generic:
            return NSLocalizedString("Could not retrieve data.", comment: "")
        }
    }
}
