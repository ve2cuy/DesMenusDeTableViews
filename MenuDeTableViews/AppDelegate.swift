//
//  AppDelegate.swift
//  MenuDeTableViews
//
//  Created by Alain on 17-11-27.
//  Copyright © 2017 Alain. All rights reserved.
//
//  --------------------------------------------------------------------------------------------
//  MARK: - Note importante!
//  ============================================================================================
//  À l'usage exclusif des étudiants et étudiantes de
//  Techniques d'Intégration Multimédia
//  du cégep de Saint-Jérôme.
//  --------------------------------------------------------------------------------------------
//  Il est interdit de reproduire, en tout ou en partie, à des fins commerciales,
//  le code source, les scènes, les éléments graphiques, les classes et
//  tout autre contenu du présent projet sans l’autorisation écrite de l'auteur.
//
//  Pour obtenir l’autorisation de reproduire ou d’utiliser, en tout ou en partie,
//  le présent projet, veuillez communiquer avec:
//
//  Alain Boudreault, aboudrea@cstj.qc.ca, alain.boudreault@me.com
//
//  ============================================================================================

import UIKit
import os.log
// http://blog.safedk.com/technology/nslog-os_log-multiple-ios-versions/

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    //TODO: Faire fonctionner les logs
    static let appDelegate_log = OSLog(subsystem: "ca.qc.cstj.tim-MenuDeTableViews", category: "APP")

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        NSLog("didFinishLaunchingWithOptions")
        os_log("didFinishLaunchingWithOptions")
        os_log("Cutting down trees to turn them into logs", log: AppDelegate.appDelegate_log, type: .info)
        os_log("B-b-b-b-b-b-b-bomb!", log: AppDelegate.appDelegate_log, type: .error)
        return true
    } // didFinishLaunchingWithOptions
} // AppDelegate

