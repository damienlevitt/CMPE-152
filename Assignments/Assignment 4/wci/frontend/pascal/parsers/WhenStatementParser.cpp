
#include <string>
#include "WhenStatementParser.h"
#include "StatementParser.h"
#include "AssignmentStatementParser.h"
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

bool WhenStatementParser::INITIALIZED = false;

EnumSet<PascalTokenType> WhenStatementParser::WHEN_SET;

void WhenStatementParser::initialize()
{
    if (INITIALIZED) return;

    WHEN_SET = StatementParser::STMT_START_SET;
    WHEN_SET.insert(PascalTokenType::EXIT_ARROW);

    EnumSet<PascalTokenType>::iterator it;
    for (it  = StatementParser::STMT_FOLLOW_SET.begin();
         it != StatementParser::STMT_FOLLOW_SET.end();
         it++)
    {
        WHEN_SET.insert(*it);
    }

    INITIALIZED = true;
}

WhenStatementParser::WhenStatementParser(PascalParserTD *parent)
    : StatementParser(parent)
{
    initialize();
}

ICodeNode *WhenStatementParser::parse_statement(Token *token) throw (string)
{
    token = next_token(token);  // consume the WHEN

    // Create TEST node.
    ICodeNode *test_node =
            ICodeFactory::create_icode_node((ICodeNodeType) NT_TEST);


    // Parse the expression.
    // The TEST node adopts the expression subtree as its first child.
    ExpressionParser expression_parser(this);
    test_node->add_child(expression_parser.parse_statement(token));

    // Synchronize at the WHEN.
    token = synchronize(WHEN_SET);
    if (token->get_type() == (TokenType) PT_EXIT_ARROW)
    {
        token = next_token(token);  // consume the ==>
    }
    else {
        error_handler.flag(token, MISSING_EXIT_ARROW, this);
    }
    return test_node;
}

}}}}  // namespace wci::frontend::pascal::parsers
