//
//  BookmarkManager.swift
//  NPS Browser
//
//  Created by JK3Y on 6/9/18.
//  Copyright © 2018 JK3Y. All rights reserved.
//

import Cocoa
import Foundation

class BookmarkManager {

//    let cd = Helpers().getCoreDataIO()
//    var entity: NSEntityDescription
//
//    init() {
//        self.entity = cd.getEntity(entityName: "Bookmarks")
//    }
//    
//    func getBookmarkList() -> [NSManagedObject?] {
//        return cd.getBookmarks()
//    }
//    
//    func getBookmark(uuid: UUID) -> NSManagedObject? {
//        return cd.getRecordByUUID(entityName: "Bookmarks", uuid: uuid)
//    }
//    
//    func addBookmark(bookmark: Bookmark, item: NSManagedObject) {
//        saveBookmark(bookmark: bookmark, item: item)
//    }
//    
//    func removeBookmark(_ bookmark: Bookmark) {
//        let obj = cd.getRecordByUUID(entityName: "Bookmarks", uuid: bookmark.uuid)
//        
//        do {
//            cd.getContext().delete(obj!)
//            try cd.getContext().save()
//        } catch let error as NSError {
//            print("Could not save. \(error), \(error.userInfo)")
//        }
//    }
//    
//    func saveBookmark(bookmark: Bookmark, item: NSManagedObject) {
//        let obj = cd.getObject(entity: self.entity)
//        obj.setValue(bookmark.name, forKey: "name")
//        obj.setValue(bookmark.title_id, forKey: "title_id")
//        obj.setValue(bookmark.type, forKey: "type")
//        obj.setValue(bookmark.zrif, forKey: "zrif")
//        obj.setValue(bookmark.download_link, forKey: "download_link")
//        obj.setValue(bookmark.uuid, forKey: "uuid")
//        obj.setValue(item, forKey: "item")
//        
//        do {
//            try cd.getContext().save()
//        } catch let error as NSError {
//            print("Could not save. \(error), \(error.userInfo)")
//        }
//    }
}
