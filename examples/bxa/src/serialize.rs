use bxa_abi::types::*;
use bxa_abi::bxa::{AbiType,TYPE_STRUCT,Stream,Sink,Zero,Error};

use bxa_abi_derive::abi_struct;


abi_extends!{
    pub struct Student {
        pub name: String,
        pub score: u32
    }
}

#[test]
fn serialize(){

    let student1 = Student{name: "ABC".to_string(),score: 90};
    let mut sink = Sink::new(4);
    sink.push(student1.clone());
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);
    let sam_student = stream.pop::<Student>().unwrap();
    assert_eq!(student1.name,sam_student.name);
    assert_eq!(student1.score,sam_student.score);
    assert_eq!(student1.to_bxa_string(),"{name:ABC,score:90}")
}