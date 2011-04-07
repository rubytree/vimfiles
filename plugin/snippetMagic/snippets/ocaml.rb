--- !ruby/object:SnippetSet 
package: ocaml
snips: 
  Queue.: 
    - Queue.fold
    - Queue.fold ${1:(fun b v -> )} ${2:base} ${3:q}
  Nativeint.: 
    - Nativeint.abs
    - Nativeint.abs ${1:ni}
  Printexc.: 
    - Printexc.print
    - Printexc.print ${1:fn} ${2:x}
  Sys.: 
    - Sys.Signal_ignore
    - Sys.Signal_ignore
  Hashtbl.: 
    - Hashtbl.iter
    - Hashtbl.iter ${1:(fun k v -> )} ${2:h}
  Array.: 
    - Array.map
    - Array.map ${1:(fun a -> )} ${2:arr}
  Printf.: 
    - Printf.bprintf
    - Printf.fprintf ${1:buf} "${2:format}" ${3:args}
  Stream.: 
    - Stream.iter
    - Stream.iter ${1:(fun x -> )} ${2:stream}
  Buffer.: 
    - Buffer.add_channel
    - "Buffer.add_channel ${1:buf} ${2:ic} ${3:len} "
  Int32.: 
    - Int32.abs
    - Int32.abs ${1:i32}
  List.: 
    - List.rev_map
    - List.rev_map ${1:(fun x -> )} ${2:lst}
  Scanf.: 
    - Scanf.bscanf
    - Scanf.bscanf ${1:sbuf} "${2:format}" ${3:f}
  Int64.: 
    - Int64.abs
    - Int64.abs ${1:i64}
  Map.: 
    - Map.Make
    - "Map.Make ${1:(Ord : OrderedType)}"
  String.: 
    - String.iter
    - String.iter ${1:(fun c -> )} ${2:str}
  Genlex.: 
    - Genlex.make_lexer
    - Genlex.make_lexer ${1:tok_lst} ${2:char_stream}
  for: 
    - For Loop
    - "for ${1:i} = ${2:startval} to ${3:endval} do\n\t$4\ndone\n$0"
  Stack.: 
    - Stack.iter
    - Stack.iter ${1:(fun x -> )} ${2:stk}