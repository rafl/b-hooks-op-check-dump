#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "hook_op_check.h"

STATIC OP *
my_op_dump (pTHX_ OP *op, void *user_data) {
	op_dump (op);
	return op;
}

MODULE = B::Hooks::OP::Check::Dump  PACKAGE = B::Hooks::OP::Check::Dump

PROTOTYPES: DISABLE

void
import (class)
	PREINIT:
		I32 i;
	CODE:
		for (i = 0; i < OP_max; i++) {
			(void)hook_op_check (i, my_op_dump, NULL);
		}
