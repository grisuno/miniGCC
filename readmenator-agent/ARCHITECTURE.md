# Architecture

## Internal Dependencies

- `test_include.c` -> `my_library.h`
- `tests/t_include.c` -> `tests/t_outer_h.h`
- `tests/t_inline.c` -> `tests/t_inline_h.h`
- `tests/t_outer_h.h` -> `tests/t_inner_h.h`

## External Imports

- `minigcc.c` -> `errno.h`
- `minigcc.c` -> `stdio.h`
- `minigcc.c` -> `stdlib.h`
- `minigcc.c` -> `string.h`
- `test_for.c` -> `stdio.h`
- `test_include.c` -> `stdio.h`
- `tests/t_args.c` -> `stdio.h`
- `tests/t_arith.c` -> `stdio.h`
- `tests/t_arrays.c` -> `stdio.h`
- `tests/t_asm.c` -> `stdio.h`
- `tests/t_compound.c` -> `stdio.h`
- `tests/t_dowhile.c` -> `stdio.h`
- `tests/t_enum.c` -> `stdio.h`
- `tests/t_float.c` -> `stdio.h`
- `tests/t_for.c` -> `stdio.h`
- `tests/t_globinit.c` -> `stdio.h`
- `tests/t_goto.c` -> `stdio.h`
- `tests/t_hexoct.c` -> `stdio.h`
- `tests/t_if.c` -> `stdio.h`
- `tests/t_include.c` -> `stdio.h`
- `tests/t_include.c` -> `t_outer_h.h`
- `tests/t_inline.c` -> `stdio.h`
- `tests/t_inline.c` -> `t_inline_h.h`
- `tests/t_logic.c` -> `stdio.h`
- `tests/t_macros.c` -> `stdio.h`
- `tests/t_outer_h.h` -> `t_inner_h.h`
- `tests/t_pointers.c` -> `stdio.h`
- `tests/t_recursion.c` -> `stdio.h`
- `tests/t_scope.c` -> `stdio.h`
- `tests/t_sizeof.c` -> `stdio.h`
- `tests/t_strings.c` -> `stdio.h`
- `tests/t_struct.c` -> `stdio.h`
- `tests/t_switch.c` -> `stdio.h`
- `tests/t_typedef.c` -> `stdio.h`
- `tests/t_while.c` -> `stdio.h`
