import NIO
import AWSLambdaRuntime
import AWSLambdaEvents
import Foundation

@main
struct HelloWorldHandler: AsyncLambdaHandler {
    
    typealias In = APIGateway.Request
    typealias Out = APIGateway.Response
    
    init(context: Lambda.InitializationContext) async throws {
        print("initialization comlete")
    }

    func handle(event: In, context: Lambda.Context) async throws -> Out {
        return APIGateway.Response(statusCode: .ok)
    }
}
