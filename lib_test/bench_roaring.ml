open Core.Std
open Core_bench.Std

let main () =
    let bs = Roaring.create () in

    Command.run (Bench.make_command [
        Bench.Test.create ~name:"create"
            (fun () -> let _ = Roaring.create () in ());
        Bench.Test.create ~name:"set"
            (fun () -> let _ = Roaring.set bs 16 in ());
        Bench.Test.create ~name:"cardinality"
            (fun () -> let _ = Roaring.cardinality bs in ());
        ]
    )

let () = main()
