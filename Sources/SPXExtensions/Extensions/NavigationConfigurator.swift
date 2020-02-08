//
//  NavigationConfigurator.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/8/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import SwiftUI

struct NavigationConfigurator: UIViewControllerRepresentable {
	var configure: (UINavigationController) -> Void = { _ in }

	func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
		UIViewController()
	}
	func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
		if let nc = uiViewController.navigationController {
			self.configure(nc)
		}
	}

}
