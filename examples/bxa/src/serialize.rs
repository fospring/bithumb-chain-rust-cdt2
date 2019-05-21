use bxa_abi::types::*;
use bxa_abi::bxa::{AbiType,TYPE_STRUCT,Stream,Sink,Error};

#[derive(Clone)]
pub struct Student {
    pub name: String,
    pub score: u32,
}
impl AbiType for Student {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let mut student = Student{name: "".to_string(), score: 0,};
        student.name = String::decode(stream)?;
        student.score = u32::decode(stream)?;
        Ok(student)
    }
    fn encode(self, sink: &mut Sink) {
        self.name.encode(sink);
        self.score.encode(sink);
    }
    fn push_type(self, sink: &mut Sink) { sink.write_byte(TYPE_STRUCT); }
    fn get_type() -> u8 { TYPE_STRUCT }
    fn to_bxa_string(&self) -> String {
        let mut stustr = "{".to_string();
        stustr.push_str(&self.name);
        stustr.push(',');
        stustr.push_str(&self.score.to_string());
        stustr.push(',');
        stustr
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
}