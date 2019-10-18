use {sink::Sink, stream::Stream};

pub trait Serializable: Serializer + Deserializer {}

pub trait Serializer {
    fn serialize(&self, sink: &mut Sink);
}

pub trait Deserializer {
    fn deserialize(&mut self, stream: &mut Stream);
}
