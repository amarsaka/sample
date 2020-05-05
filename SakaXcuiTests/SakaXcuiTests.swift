//
//  SakaXcuiTests.swift
//  SakaXcuiTests
//
//  Created by Amaranth  Saka on 5/5/20.
//  Copyright © 2020 Code Pro. All rights reserved.
//  A basic class to run the UI Tests a given app and perform Asserts on fields and on validation message

import XCTest

class SakaXcuiTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
func testInvalidLoginSuccess(){
    
    
                               
   let user = "CodePro"
   let password = "abc123"
       
       
       XCUIApplication().navigationBars["Mockify Music"].buttons["Profile"].tap()
                                       
              
       
       let app = XCUIApplication()
      
       
       let username = app.textFields["Username"]
       XCTAssertTrue(username.exists)
       username.tap()
       username.typeText(user)
       
       let passwordField = app.secureTextFields["Password"]
       XCTAssertTrue(passwordField.exists)
       passwordField.tap()

       
       let LoginButton = app/*@START_MENU_TOKEN@*/.staticTexts["Login"]/*[[".buttons[\"Login\"].staticTexts[\"Login\"]",".staticTexts[\"Login\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
       XCTAssertTrue(LoginButton.exists)
       LoginButton.tap()
      

       let elementsQuery = app.alerts["Missing Credentials"]
       
       let Message = elementsQuery.staticTexts["Missing Credentials"]
       XCTAssertTrue(Message.exists)
       
       elementsQuery.buttons["Ok"].tap()
       
       }
       }

