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

    /// write u32
    pub fn write_u32(&mut self, v: u32) {
        let value = v as u64;
        self.write_u64(value);
    }

    /// write u16
    pub fn write_u16(&mut self, v: u16) {
        let value = v as u64;
        self.write_u64(value);
    }

    /// write u8
    pub fn write_u8(&mut self, v: u8) {
        let value = v as u64;
        self.write_u64(value);
    }

    /// write bool
    pub fn write_bool(&mut self, b: bool) {
        self.preamble_mut().extend_from_slice(match b {
            true => &[1_u8; 1],
            false => &[0_u8; 1]
        });
    }

    /// write string
    pub fn write_string(&mut self, s: String) {
        let mut size: usize = 0;
        let data: [u8; 9] = utils::pad_u64((s.as_str().len()) as u64, &mut size);
        self.preamble_mut().extend_from_slice(&data[..size]);
        self.write_bytes(s.as_str().as_bytes());
    }

    /// write a byte
    pub fn write_byte(&mut self, b: u8) {
        self.preamble.push(b)
    }

    /// write fixed bytes
    pub fn write_fixed_bytes(&mut self, data: &[u8]) {
        self.preamble.extend_from_slice(data)
    }

    /// write bytes
    pub fn write_bytes(&mut self, data: &[u8]) {
        let l = data.len();
        let l = l as u32;
        self.write_u32(l);
        self.write_fixed_bytes(data);
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