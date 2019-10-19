use header::Header;
use lib::*;
use transaction::Transaction;
use stream::Stream;
use sink::Sink;

pub struct Block {
    pub header: Header,
    pub tx_list: Vec<Transaction>,
}

impl Block {
    pub fn new() -> Self {
        Block{
            header: Header::new(),
            tx_list: vec![],
        }
    }
    pub fn serialize(&self, sink: &mut Sink) {
        self.header.serialize(sink);
        let size = self.tx_list.len() as u64;
        sink.write_u64(size);
        for tx in &self.tx_list {
            tx.serialize(sink);
        }
    }
    pub fn deserialize(&mut self, stream: &mut Stream) {
        self.header.deserialize(stream);
        let size = stream.read_u64().unwrap();
        self.tx_list.clear();
        for _ in 0..size {
            let mut tx = Transaction::new();
            tx.deserialize(stream);
            self.tx_list.push(tx);
        }
    }
}

#[test]
fn block_serialize() {
    let hex_str = "0100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1009825c292807b319bff3cf23d49c488cf98d119071cd50d98d15f5acdbe3cb1009825c292807b319bff3cf23d49c488cf98d119071cd50d98d15f5acdbe3cc799aa40ab1edc2f7d34cc40b2991d7e2037c63aba3ff7971fa3cc9927b13cd8c799aa40ab1edc2f7d34cc40b2991d7e2037c63aba3ff7971fa3cc9927b13cd8847c2bac1d845d18dc8000000100000027178e5d8c56480007761454953b1ce93f134d28010103776933b620272510599da0dd3c817a68f7b5e01eb5adb989f6fe1346b0235218000d000002011400000000000000000000000000000000000000010458544152045854415203312e3000135854415220746f6b656e20636f6e74726163740100000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000104696e6974160a0127178e5d8c56480007761454953b1ce93f134d2800000000000000000000000000000000000000000000000002011400000000000000000000000000000000000000020a58746172556e6c6f636b045854415203312e3000145854415220756e6c6f636b20636f6e74726163740100000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000204696e697400000000000000000000000000000000000000000000000000020114000000000000000000000000000000000000000305546f6b656e045854415203312e300014546f6b656e20697373756520636f6e74726163740100000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000304696e69740000000000000000000000000000000000000000000000000002011400000000000000000000000000000000000000060d476c6f62616c20506172616d73045854415203312e30001e476c6f62616c20706172616d73206d616e6167657220636f6e74726163740100000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000604696e69748204450a0127178e5d8c56480007761454953b1ce93f134d280c260d02070a6d696e496e6974506f73070d313030303030303030303030300d02070b6d6178566f74654e6f64650701350d0207116d6178566f74654d756c7469706c696572070232300d02070c74656d704c6f636b54696d65070538363430300d02070e65706f6368426c6f636b536c6f7407063132303030300d02070e6d617850726f666974526f756e640701330d02071b636f6e73656e7375734e6f64657350726f66697450657263656e74070237300d02071b6170706c794172626974726174696f6e5369676e50657263656e74070232300d02071c636f6d6d69744172626974726174696f6e5369676e50657263656e74070235300d0207127265736f7572636557696e646f7753697a65070538363430300d02070e7365636f6e644e65744c696d69740707323039373135320d02070e7365636f6e644370754c696d697407063430303030300d0207116176657261676557696e646f7753697a65070236300d02070a74617267657452617465070231300d02070a72656475636552617465070239390d02070a657870616e645261746507033130310d02070d6d61784d756c7469706c69657207033130300d02070d61737365744c6f636b54696d6507063235393230300d0207106d6178426c6f636b4e657455736167650707323030303030300d02070d6d696e54784e6574557361676507033230300d02070d6d617854784e657455736167650704323030300d02070d6d696e54784370755573616765070234300d02070d6d61785478437075557361676507033430300d02070d6d61784e616d6573436f756e74070531303030300d020716617661696c61626c654e616d6550726963654c697374072b302c302c302c333030302c323030302c313030302c3530302c3230302c3130302c33302c32302c31302c300d02071272657365727665644e616d65436f6e6669670723636f6d3a352c636e3a352c6170703a352c737461723a352c646576656c6f7065723a350d0207167072696d6553657276696365436f756e744c696d697407033130300d0207157072696d6553657276696365416e6e75616c466565070c3130303030303030303030300d0207104d6178416374696f6e417574684e756d0701350d0207127379734d6f746976617465466565526174650701300d02071173797347656e6572616c466565526174650701350d0207116e6f646550726f66697450657263656e740701320d0207177072696d65466565446973636f756e7450657263656e74070238300d02071577697468647261774170706c795761697454696d65070231300d02070b616e63686f72417373657407225861677171466574786944623977626172744b447258676e714c616859654d3945670d02070d446578556e6c6f636b52617465070239380d020710636f6e73656e7375734e6f64654e756d0701310d02070d6261636b75704e6f64654e756d07013000000000000000000000000000000000000000000000000002011400000000000000000000000000000000000000050a476f7665726e616e6365045854415203312e3000185854415220676f7665726e616e636520636f6e74726163740100000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000504696e69744c0c010d0207000744303130333737363933336236323032373235313035393964613064643363383137613638663762356530316562356164623938396636666531333436623032333532313800000000000000000000000000000000000000000000000002011400000000000000000000000000000000000000090352616d045854415203312e300019585441522072616d206d616e6167657220636f6e74726163740100000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000904696e6974160a0127178e5d8c56480007761454953b1ce93f134d28000000000000000000000000000000000000000000000000020114000000000000000000000000000000000000000803584e53045854415203312e30001a58544152206e616d65207365727669636520636f6e74726163740100000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000804696e697482032f0c120d02070b787461722e73797374656d0a0100000000000000000000000000000000000000010d02071178746172756e6c6f636b2e73797374656d0a0100000000000000000000000000000000000000020d02071264657870726f746f636f6c2e73797374656d0a0100000000000000000000000000000000000000040d02070e7374616b696e672e73797374656d0a01000000000000000000000000000000000000000e0d02070a786e732e73797374656d0a0100000000000000000000000000000000000000080d020714617574686f72697a6174696f6e2e73797374656d0a01000000000000000000000000000000000000000d0d02070d7374617475732e73797374656d0a0100000000000000000000000000000000000000060d020711676f7665726e616e63652e73797374656d0a0100000000000000000000000000000000000000050d02070c7072696d652e73797374656d0a01000000000000000000000000000000000000000c0d020711666f756e646174696f6e2e73797374656d0a01000000000000000000000000000000000000000b0d02070c746f6b656e2e73797374656d0a0100000000000000000000000000000000000000030d02071265706f63687377697463682e73797374656d0a01000000000000000000000000000000000000000e0d02070a72616d2e73797374656d0a0100000000000000000000000000000000000000090d02070c74696d65722e73797374656d0a0100000000000000000000000000000000000000100d0207057072696d650a01000000000000000000000000000000000000000c0d02070a7072696d652e787461720a01000000000000000000000000000000000000000c0d02070a72656c61792e787461720a01000000000000000000000000000000000000000b0d02070773702e787461720a01000000000000000000000000000000000000000b0c020d020710696e697469616c302e73702e787461720a0127178e5d8c56480007761454953b1ce93f134d280d020704787461720a0127178e5d8c56480007761454953b1ce93f134d280d03070a7072696d652e787461720a01000000000000000000000000000000000000000c0801000000000000000000000000000000000000000000000000020114000000000000000000000000000000000000000c055072696d65045854415203312e30001358544152207072696d6520636f6e74726163740100000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000c04696e697400000000000000000000000000000000000000000000000000010114000000000000000000000000000000000000000b0a466f756e646174696f6e045854415203312e3000185854415220666f756e646174696f6e20636f6e7472616374010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010114000000000000000000000000000000000000000403444558045854415203312e300027446563656e7472616c697a652065786368616e67652070726f746f636f6c20636f6e7472616374010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020114000000000000000000000000000000000000000e075374616b696e67045854415203312e30001558544152207374616b696e6720636f6e74726163740100000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000e04696e6974160a0127178e5d8c56480007761454953b1ce93f134d28000000000000000000000000000000000000000000000000020114000000000000000000000000000000000000000d16536d61727420636f6e7472616374206163636f756e74045854415203312e300025536d61727420636f6e747261637420617574686f72697a6174696f6e20636f6e74726163740100000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000d04696e69740000000000000000000000000000000000000000000000000002011400000000000000000000000000000000000000100c53797374656d2074696d6572045854415203312e30000e54696d657220636f6e74726163740100000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000001004696e69748201100c070d030a0100000000000000000000000000000000000000020706756e6c6f636b02030d030a010000000000000000000000000000000000000005070b737769746368526f756e6402020d030a01000000000000000000000000000000000000000c0710616e6e6f756e63654c75636b79446f6702030d030a01000000000000000000000000000000000000000c071664697374726962757465496e7669746552657761726402010d030a01000000000000000000000000000000000000000c07076f6e4d6f6e746802050d030a01000000000000000000000000000000000000000407056f6e44617902030d030a01000000000000000000000000000000000000000407076f6e4d6f6e7468020500000000000000000000000000000000000000000000";
    let bs = hex::decode(hex_str).unwrap();
    let mut stream = Stream::new(&bs);
    let mut block = Block::new();
    block.deserialize(&mut stream);
    assert_eq!(block.header.height, 0);
    let mut sink = Sink::new(1);
    block.serialize(&mut sink);
    let nbs = sink.preamble_mut();
    let n_hex_str = hex::encode(nbs);
    assert_eq!(String::from(n_hex_str), String::from(hex_str));
}