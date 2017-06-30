//
//  HttpTool.h
//  test
//
//  Created by lee on 16/2/1.
//  Copyright © 2016年 sanchun. All rights reserved.
//



#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>


typedef void (^Success)(id responseObject);
typedef void (^Failure)(NSError* error);
typedef void (^Handler)(id responseObject,NSError *error);

@interface HttpTool : AFHTTPSessionManager


+ (NSURLSessionDataTask *)GET_JSON:(NSString *)URLString
                            parameters:(id)parameters
                              progress:(void (^)(NSProgress *downloadProgress))downloadProgress
                               success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                               failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

+ (NSURLSessionDataTask *)GET_DATA:(NSString *)URLString
                          parameters:(id)parameters
                            progress:(void (^)(NSProgress *downloadProgress))downloadProgress
                             success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                             failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

+ (NSURLSessionDataTask *)POST_JSON:(NSString *)URLString
                             parameters:(id)parameters
                               progress:(void (^)(NSProgress *uploadProgress))uploadProgress
                                success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                                failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

+ (NSURLSessionDataTask *)POST_DATA:(NSString *)URLString
                         parameters:(id)parameters
                           progress:(void (^)(NSProgress *uploadProgress))uploadProgress
                            success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                            failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

//网络状态
+ (AFNetworkReachabilityStatus)reachability;

//Get json
+ (void)httpGetJsonWithURL:(NSString *)urlString parameters:(NSDictionary *)params success:(Success)success failure:(Failure)failure;
+ (void)httpGetJsonWithURL:(NSString *)urlString parameters:(NSDictionary *)params handler:(Handler)handler;

+ (void)httpGetDataWithURL:(NSString *)urlString parameters:(NSDictionary *)params success:(Success)success failure:(Failure)failure;
+ (void)httpGetDataWithURL:(NSString *)urlString parameters:(NSDictionary *)params handler:(Handler)handler;

//post data
+ (void)httpPostDataWithURL:(NSString *)urlString parameters:(NSDictionary *)params success:(Success)success failure:(Failure)failure;
+ (void)httpPostDataWithURL:(NSString *)urlString parameters:(NSDictionary *)params handler:(Handler)handler;
//post json
+ (void)httpPostJsonWithURL:(NSString *)urlString parameters:(NSDictionary *)params success:(Success)success failure:(Failure)failure;
+ (void)httpPostJsonWithURL:(NSString *)urlString parameters:(NSDictionary *)params handler:(Handler)handler;
//获取文件类型
+ (NSString *)getMIMETypeWithCAPIAtFilePath:(NSString *)path;


@end
