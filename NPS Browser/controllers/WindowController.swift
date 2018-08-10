//
//  WindowController.swift
//  NPS Browser
//
//  Created by JK3Y on 5/6/18.
//  Copyright © 2018 JK3Y. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController, NSToolbarDelegate, WindowDelegate {
    @IBOutlet weak var tbReload: NSButton!
    @IBOutlet weak var progressSpinner: NSProgressIndicator!
    @IBOutlet weak var toolbar: NSToolbar!
    @IBOutlet weak var tbType: NSPopUpButton!
    @IBOutlet weak var tbRegion: NSPopUpButton!
    @IBOutlet weak var tbSearchBar: NSSearchField!
    var delegate: ToolbarDelegate?
    var loadingViewController: LoadingViewController?

    override func windowDidLoad() {
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        super.windowDidLoad()
        let vc: LoadingViewController = self.storyboard?.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: "loadingVC")) as! LoadingViewController
        loadingViewController = vc
    }
    
    @IBAction func onTypeChanged(_ sender: Any) {
        self.delegate = getDataController()

        delegate?.setArrayControllerContent(content: nil)

//        if (Helpers().getCoreDataIO().recordsAreEmpty()) {
//            NetworkManager().makeHTTPRequest()
//        } else {
//            let content = Helpers().getCoreDataIO().getRecords()
//            delegate?.setArrayControllerContent(content: content)
//        }
    }
    
    @IBAction func onRegionChanged(_ sender: Any) {
//        self.delegate = getDataController()
//        let content = CoreDataIO().getRecords()
//        delegate?.setArrayControllerContent(content: content)
    }

    @IBAction func btnReloadClicked(_ sender: Any) {
        startBtnReloadAnimation()
        NetworkManager().makeHTTPRequest()
    }
    
    @IBAction func onFilterSearchBar(_ sender: NSSearchField) {
//        self.delegate = getDataController()
//        let searchString = tbSearchBar.stringValue
//
//        if (searchString.isEmpty) {
//            let content = CoreDataIO().getRecords()
//            delegate?.setArrayControllerContent(content: content)
//        } else {
//            let content = CoreDataIO().searchRecords(searchString: searchString)
//            delegate?.setArrayControllerContent(content: content)
//        }
    }
    
    func getDataController() -> DataViewController {
        let splitViewController = self.window!.contentViewController! as! NSSplitViewController
        let vc: DataViewController = splitViewController.splitViewItems[0].viewController as! DataViewController
        return vc
    }
    
    func getLoadingViewController() -> LoadingViewController {
        return loadingViewController!
    }

    
    
    
    func getType() -> String {
        let type = tbType.selectedItem?.title.replacingOccurrences(of: " ", with: "")
        return type!
    }
    
    func getItemType() -> ItemType {
        return ItemType.parseString((tbType.selectedItem?.title)!)
    }
    
//    func getConsole() -> Console {
//        let c = getType().prefix(3)
//        return Console(prefix: String(c))
//    }
    
//    func getType() -> FileType {
//        let type = tbType.selectedItem?.title.replacingOccurrences(of: " ", with: "")
//        let ft = FileType(ddlSelectedType: type!)
//        return ft
//    }
    
    func getRegion() -> String {
        let region = tbRegion.selectedItem?.title
        return region!
    }
    
    func startBtnReloadAnimation() {
        self.tbReload.isHidden = true
        self.progressSpinner.usesThreadedAnimation = true
        self.progressSpinner.startAnimation(nil)
    }
    
    func stopBtnReloadAnimation() {
        self.progressSpinner.stopAnimation(nil)
        self.tbReload.isHidden = false
    }
    
    
//    func getVCFromStoryboard<T>(identifier: String, type: T) -> T {
//        return self.storyboard?.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: identifier)) as! T
//    }
}
