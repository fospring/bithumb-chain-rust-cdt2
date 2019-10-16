//! Sink module;

use lib::*;
use utils;
/// Sink for returning number of arguments
pub struct Sink {
    // capacity: usize,
    preamble: Vec<u8>,
}

impl Sink {
    /// New sink with known capacity
    pub fn new(capacity: usize) -> Self {
        Sink {
            // capacity: 12 * capacity,
            preamble: Vec::with_capacity(12 * capacity),
        }
    }

    /// write u64
    pub fn write_u64(&mut self, v: u64) {
        let mut size: usize = 0;
        let data: [u8; 9] = utils::pad_u64(v, &mut size);
        self.preamble_mut().extend_from_slice(&data[..size]);
    }

    /// write a byte
    pub fn write_byte(&mut self, b: u8){
        self.preamble.push(b)
    }

    /// write bytes
    pub fn write_bytes(&mut self, data: &[u8]) {
        self.preamble.extend_from_slice(data)
    }

    /// Drain current Sink to the target vector
    pub fn drain_to(self, target: &mut Vec<u8>) {
        let preamble = self.preamble;
        target.reserve(preamble.len());
        target.extend_from_slice(&preamble);
    }

    /// Consume current Sink to produce a vector with content.
    /// May panic if declared number of arguments does not match the resulting number of bytes should be produced.
    pub fn finalize_panicking(self) -> Vec<u8> {
        let result = self.preamble;
        result
    }

    /// Mutable reference to the Sink preamble
    pub fn preamble_mut(&mut self) -> &mut Vec<u8> {
        &mut self.preamble
    }
}