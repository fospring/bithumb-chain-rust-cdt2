use {sink::Sink, stream::Stream};

pub trait Serializable: Serializer + Deserializer {}

pub trait Serializer {
    fn serialize(self, sink: Sink);
}

pub trait Deserializer {
    fn deserialize(self, stream: &mut Stream);
}
