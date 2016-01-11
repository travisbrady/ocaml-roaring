let printf = Printf.printf

let () =
    let bs = Roaring.create () in
    let bsb = Roaring.create () in
    printf "cardinality: %d\n" (Roaring.cardinality bs);
    Roaring.set bs 1;
    printf "cardinality: %d\n" (Roaring.cardinality bs);
    Roaring.set bsb 7;
    let union = Roaring.bitset_or bs bsb in
    printf "union cardinality: %d\n" (Roaring.cardinality union);
    Roaring.free bs;
    Roaring.free bsb;
    Roaring.free union
