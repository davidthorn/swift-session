import XCTest
@testable import DTSession

final class DTSessionTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DTSession().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
