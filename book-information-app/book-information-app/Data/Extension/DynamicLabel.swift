//
//  DynamicLabel.swift
//  book-information-app
//
//  Created by 이상윤 on 2023/05/30.
//

import UIKit

final class DynamicLabel: UILabel{

    var fullText: String?
    var isTruncated = true
    let truncatedLength = 100
    let attributedLength = 7

    func collapse() {
        if let fullText = fullText {
            let index = fullText.index(fullText.startIndex, offsetBy: truncatedLength)
            self.text = fullText[...index].description + MagicLiteral.moreDescriptionText
            isTruncated = true
        }
    }

    func expand() {
        if let fullText = fullText {
            self.text = fullText + MagicLiteral.lessDescriptionText
            isTruncated = false
        }
    }
}
