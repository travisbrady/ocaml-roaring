let printf = Printf.printf

let () =
    let bs = Roaring.create () in
    printf "cardinality: %d\n" (Roaring.cardinality bs);
    Roaring.set bs 1;
    printf "cardinality: %d\n" (Roaring.cardinality bs)

