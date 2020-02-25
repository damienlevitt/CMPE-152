#include <string>
#include "LoopStatementParser.h"
#include "StatementParser.h"
#include "ExpressionParser.h"
#include "../PascalParserTD.h"
#include "../PascalToken.h"
#include "../PascalError.h"
#include "../../Token.h"
#include "../../../intermediate/ICodeNode.h"
#include "../../../intermediate/ICodeFactory.h"
#include "../../../intermediate/icodeimpl/ICodeNodeImpl.h"

namespace wci { namespace frontend { namespace pascal { namespace parsers {

using namespace std;
using namespace wci::frontend::pascal;
using namespace wci::intermediate;
using namespace wci::intermediate::icodeimpl;
ICodeNode *LoopStatementParser::parse_statement(Token *token)
    throw (string)
{
    // Create the LOOP and TEST nodes.
    ICodeNode *loop_node =
            ICodeFactory::create_icode_node((ICodeNodeType) NT_LOOP);
    ICodeNode *test_node =
            ICodeFactory::create_icode_node((ICodeNodeType) NT_TEST);

    token = next_token(token);  // consume the REPEAT


    
    // Parse the statement list terminated by the AGAIN token.
    // The LOOP node is the parent of the statement subtrees.
    StatementParser statement_parser(this);
    statement_parser.parse_list(token, loop_node, PT_AGAIN, MISSING_AGAIN);//must change MISSING_UNTIL

    token = current_token();
   
    return loop_node;
}

}}}}  // namespace wci::frontend::pascal::parsers
