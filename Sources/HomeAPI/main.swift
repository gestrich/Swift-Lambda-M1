import NIO
import AWSLambdaRuntime
import AWSLambdaEvents
import Foundation

Lambda.run(Handler())

struct Handler: EventLoopLambdaHandler {
    
    typealias In = APIGateway.Request
    typealias Out = APIGateway.Response
        
    func handle(context: Lambda.Context, event: APIGateway.Request) -> EventLoopFuture<APIGateway.Response> {
        return context.eventLoop.makeSucceededFuture(APIGateway.Response(statusCode: .ok))
    }
}
