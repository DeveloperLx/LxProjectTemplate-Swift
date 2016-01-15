//
//  LxTools.swift
//  LxProjectTemplateDemo
//
//  Created by 李晛 on 16/1/14.
//  Copyright © 2016年 DeveloperLx. All rights reserved.
//

import UIKit

// MARK: - size

let SCREEN_SIZE = UIScreen.mainScreen().bounds.size
let SCREEN_WIDTH = UIScreen.mainScreen().bounds.size.width
let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.size.height
let SCREEN_SCALE = UIScreen.mainScreen().scale

let SCREEN_LONGER_SIDE_LENGTH = SCREEN_WIDTH > SCREEN_HEIGHT ? SCREEN_WIDTH : SCREEN_HEIGHT
let SCREEN_SHORTER_SIDE_LENGTH = SCREEN_WIDTH > SCREEN_HEIGHT ? SCREEN_HEIGHT : SCREEN_WIDTH

let STATEBAR_HEIGHT = 20.0

let NAVIGATIONBAR_HEIGHT = 44.0
let NAVIGATIONBAR_PROMPT_HEIGHT = 30.0

let TOOLBAR_HEIGHT = 44.0

let TABBAR_HEIGHT = 49.0

let KEYBOARD_HEIGHT = 216.0
let KEYBOARD_HORIZONTAL_HEIGHT = 162.0
let KEYBOARD_CANDIDATEWORD_HEIGHT = 36.0

let BARBUTTONITEM_SIDELENGTH = 32.0

let BARBUTTONITEM_EDGE = 16.0

let NAVIGATIONBAR_ICON_SIDELENGTH = 20.0
let TABBAR_ICON_SIDELENGTH = 30.0

let PROGRESSVIEW_HEIGHT = 2.0
let SWITCH_WIDTH = 51.0
let SWITCH_HEIGHT = 31.0
let STEPPER_WIDTH = 94.0
let STEPPER_HEIGHT = 29.0
let SLIDER_WIDTH = 100.0
let SLIDER_HEIGHT = 34.0
let PICKERVIEW_WIDTH = 320.0
let PICKERVIEW_HEIGHT = 216.0
let SPILT_LIST_VIEWCONTROLLER_WIDTH = 320.0

let LABEL_DEFAULT_FONT_SIZE = 17.0
let BUTTON_DEFAULT_FONT_SIZE = 18.0
let ATTRIBUTED_STRING_DEFAULT_FONT_SIZE = 12.0
let ATTRIBUTED_STRING_DEFAULT_HEIGHT = 13.8

// MARK: - iOS version  (IR generation failure: program too clever: variable collides with existing symbol OBJC_CLASS_$_UIDevice)

//let IOS_VERSION_STRING = UIDevice.currentDevice().systemVersion
//let IOS_VERSION = Double(UIDevice.currentDevice().systemVersion)

// MARK: - device

let IS_IPAD = UI_USER_INTERFACE_IDIOM() == .Pad
let IS_IPHONE_OR_IPOD = UI_USER_INTERFACE_IDIOM() == .Phone

// MARK: - bundle info

let BUNDLE_ID = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleIdentifier")
let BUNDLE_NAME = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleName")
let BUNDLE_DISPLAY_NAME = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleDisplayName")
let BUNDLE_SHORT_VERSION_STRING = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleShortVersionString")

let MAIN_BUNDLE_PATH = NSBundle.mainBundle().bundlePath
let MAIN_BUNDLE_INFO_DICTIONARY = NSBundle.mainBundle().infoDictionary

let SANDBOX_PATH = NSHomeDirectory()
let SANDBOX_DOCUMENTS_PATH = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true).first
let SANDBOX_LIBRARY_PATH = NSSearchPathForDirectoriesInDomains(.LibraryDirectory, .UserDomainMask, true).first
let SANDBOX_CACHES_PATH = NSSearchPathForDirectoriesInDomains(.CachesDirectory, .UserDomainMask, true).first
let SANDBOX_TMP_PATH = NSTemporaryDirectory()

// MARK: - device orientation

//let DEVICE_ORIENTATION = UIDevice.currentDevice().orientation



// MARK: - singleton

let APP_DELEGATE = UIApplication.sharedApplication().delegate as! AppDelegate
let SHARED_APPLICATION = UIApplication.sharedApplication()
//let CURRENT_DEVICE = UIDevice.currentDevice()
let MAIN_BUNDLE = NSBundle.mainBundle()
let MAIN_SCREEN = UIScreen.mainScreen()
let FILE_MANAGER = NSFileManager.defaultManager()
let USER_DEFAULTS = NSUserDefaults.standardUserDefaults()
let NOTIFICATION_CENTER = NSNotificationCenter.defaultCenter()
let GENERAL_PASTEBOARD = UIPasteboard.generalPasteboard()
let SHARED_MENUCONTROLLER = UIMenuController.sharedMenuController()

// MARK: - color

public func HSBA_COLOR(h: CGFloat, s: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {

    return UIColor(hue: h, saturation: s, brightness: b, alpha: a)
}

public func RGB_COLOR(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {

    return UIColor(red: r, green: g, blue: b, alpha: 1)
}

public func RGBA_COLOR(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {
    
    return UIColor(red: r, green: g, blue: b, alpha: a)
}

public func RGBHEX_COLOR(rgbValue: Int) -> UIColor {

    return UIColor(red: CGFloat(((rgbValue & 0xFF0000) >> 16))/255.0, green: CGFloat(((rgbValue & 0xFF00) >> 16))/255.0, blue: CGFloat(((rgbValue & 0xFF) >> 16))/255.0, alpha: 1)
}

public func RANDOM_COLOR(alpha: Float) -> UIColor {

    let standardizedAlpha = min(max(alpha, 0), 1)
    return UIColor(colorLiteralRed: Float(arc4random()%256)/255, green: Float(arc4random()%256)/255, blue: Float(arc4random()%256)/255, alpha: standardizedAlpha)
}

// MARK: - common string

let TABLE_CELL_REUSE_ID = "Table_Cell_Reuse_id"
let COLLECTION_CELL_REUSE_ID = "Collection_Cell_Reuse_id"

let METHOD_GET = "GET"
let METHOD_POST = "POST"
let Http_Prefix = "http://"
let Https_Prefix = "https://"
let Ftp_Prefix = "ftp://"
let Mailto_Prefix = "mailto://"

let kCATransitionMoveIn = "moveIn"
let kCATransitionReveal = "reveal"
let kCATransitionFade = "fade"
let kCATransitionPush = "push"
let kCATransitionCube = "cube"
let kCATransitionPageCurl = "pageCurl"
let kCATransitionPageUnCurl = "pageUnCurl"
let kCATransitionSuckEffect = "suckEffect"
let kCATransitionRippleEffect = "rippleEffect"
let kCATransitionOglFlip = "oglFlip"
let kCATransitionRotate = "rotate"
let kCATransitionCameraIrisHollowOpen = "cameraIrisHollowOpen"
let kCATransitionCameraIrisHollowClose = "cameraIrisHollowClose"

// MARK: - const value

 let HALF = 0.5
 let GOLD_RATIO = ((sqrt(5.0) - 1)/2)
 let NSCFRangeZero = CFRange(location: 0, length: 0)
 let NSRangeZero = NSRange(location: 0, length: 0)

 let BITS_PER_BYTE = 8
 let BYTES_PER_KILOBYTE = 1024
 let BYTES_PER_MEGABYTE = (1024 * 1024)
 let BYTES_PER_GIGABYTE = (1024 * 1024 * 1024)
 let BYTES_PER_TERABYTE = (1024 * 1024 * 1024)
 let BYTES_PER_PETABYTE = (1024 * 1024 * 1024)

 let SECONDS_PER_MINUTE = 60
 let SECONDS_PER_HOUR = (60 * 60)
 let SECONDS_PER_DAY = (24 * 60 * 60)
 let SECONDS_PER_WEEK = (7 * 24 * 60 * 60)
 let SECONDS_PER_MOUTH = (30 * 24 * 60 * 60)
 let SECONDS_PER_SEASON = (3 * 30 * 24 * 60 * 60)
 let SECONDS_PER_YEAR = (365 * 24 * 60 * 60)

// MARK: - keyboard

public func Hide_Keyboard() {

    UIApplication.sharedApplication().sendAction(Selector("resignFirstResponder"), to: nil, from: nil, forEvent: nil)
}