program num57a;

{$APPTYPE CONSOLE}

uses
  SysUtils;

label end_if, print4;

var
    a, res: smallint;

begin
    write(' a = ');
    readln(a);

    asm
               mov  bx, [a]
               cmp  bx, 127
               jge  print4      // JG <=> " >= "
               cmp  bx, -127
               jl   print4      // JL <=> " < "
               mov ax, bx
               imul bx
               mov res, ax
               jmp  end_if

        print4:
               mov res, 4

        end_if:

    end;

    write(res);
    readln;
end.
