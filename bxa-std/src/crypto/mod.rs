pub mod common;
pub mod ecdsa;

use super::Error;
use super::lib::*;
use super::sink::Sink;
use super::stream::Stream;
use self::common::{PublicKey, ECDSA256WithSHA256};
use self::ecdsa::EcPublicKey;

pub mod crypto {
    pub use self::super::common::{PublicKey, CryptoScheme, ECDSA256WithSHA256};

    pub use self::super::ecdsa::EcPublicKey;
}

pub fn deserialize_public_key(stream: &mut Stream) -> Result<Box<dyn PublicKey>, Error> {
    let crypto_scheme = stream.read_byte().unwrap();
    if crypto_scheme != common::ECDSA256WithSHA256 {
        return Err(Error::ErrUnKnownCryptoScheme);
    }
    let mut epk = EcPublicKey::new();
    epk.deserialize(stream);
    Ok(Box::new(epk))
}