//
//  DTSession.swift
//  DTSession
//
//  Created by Thorn, David on 16.08.20.
//

import Foundation

// MARK: - Extension - URLSession -

extension URLSession: DTSessionProtocol {
    
    
}

// MARK: - Protocol -

/// @mockable
public protocol DTSessionProtocol {

    /*
     * data task convenience methods.  These methods create tasks that
     * bypass the normal delegate calls for response and data delivery,
     * and provide a simple cancelable asynchronous interface to receiving
     * data.  Errors will be returned in the NSURLErrorDomain,
     * see <Foundation/NSURLError.h>.  The delegate, if any, will still be
     * called for authentication challenges.
     */
    func dataTask(with request: URLRequest, completionHandler: @escaping @Sendable  (Data?, URLResponse?, (any Error)?) -> Void) -> URLSessionDataTask

    func dataTask(with url: URL, completionHandler: @escaping @Sendable (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask


    /*
     * upload convenience method.
     */
    func uploadTask(with request: URLRequest, fromFile fileURL: URL, completionHandler: @escaping @Sendable (Data?, URLResponse?, (any Error)?) -> Void) -> URLSessionUploadTask

    func uploadTask(with request: URLRequest, from bodyData: Data?, completionHandler: @escaping @Sendable (Data?, URLResponse?, (any Error)?) -> Void) -> URLSessionUploadTask


    /*
     * download task convenience methods.  When a download successfully
     * completes, the NSURL will point to a file that must be read or
     * copied during the invocation of the completion routine.  The file
     * will be removed automatically.
     */
    func downloadTask(with request: URLRequest, completionHandler: @escaping @Sendable (URL?, URLResponse?, (any Error)?) -> Void) -> URLSessionDownloadTask

    func downloadTask(with url: URL, completionHandler: @escaping @Sendable (URL?, URLResponse?, (any Error)?) -> Void) -> URLSessionDownloadTask

    func downloadTask(withResumeData resumeData: Data, completionHandler: @escaping @Sendable (URL?, URLResponse?, (any Error)?) -> Void) -> URLSessionDownloadTask
}
