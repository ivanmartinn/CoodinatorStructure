//
//  PrimeroView.swift
//  CoordinatorStructure
//
//  Created by Ivan Martin on 01/12/2022.
//

import Foundation

protocol PrimeroView: BaseView {
    var onDismiss: (()->Void)? { get set }
}
