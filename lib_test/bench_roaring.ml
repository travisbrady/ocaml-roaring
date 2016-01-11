open Core.Std
open Core_bench.Std

let main () =
    let bs = Roaring.create () in

    Command.run (Bench.make_command [
        Bench.Test.create ~name:"create"
            (fun () -> let b = Roaring.create () in Roaring.free b);
        Bench.Test.create ~name:"set"
            (fun () -> let _ = Roaring.set bs 16 in ());
        Bench.Test.create ~name:"unset"
            (fun () -> let _ = Roaring.unset bs 16 in ());
        Bench.Test.create ~name:"cardinality"
            (fun () -> let _ = Roaring.cardinality bs in ());
        ]
    );
    Roaring.free bs

let () = main()
