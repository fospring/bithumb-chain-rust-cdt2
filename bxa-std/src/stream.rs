//! Stream module

use lib::*;
use Error;

/// Stream interpretation of incoming payload
pub struct Stream<'a> {
    payload: &'a [u8],
    position: usize,
}

impl<'a> Stream<'a> {
    /// New stream for known payload
    pub fn new(raw: &'a [u8]) -> Self {
        Stream {
            payload: raw,
            position: 0,
        }
    }

    /// Current position for the stream
    pub fn position(&self) -> usize { self.position }

    /// Advance stream position for `amount` bytes
    pub fn advance(&mut self, amount: usize) -> Result<usize, Error> {
        if self.position + amount > self.payload.len() {
            return Err(Error::UnexpectedEof);
        }

        let old_position = self.position;
        self.position += amount;
        Ok(old_position)
    }

    /// Stream payload
    pub fn payload(&self) -> &[u8] {
        self.payload
    }

    /// read into
    pub fn read_into(&mut self, arr: &mut [u8]) -> Result<(), Error> {
        let bytes = self.read_bytes(arr.len())?;
        arr.copy_from_slice(bytes);
        Ok(())
    }

    /// read u64
    pub fn read_u64(&mut self) -> Result<u64, Error> {
        let mut d: [u8; 1] = [0; 1];
        self.read_into(d.as_mut())?;
        let p = d[0] as u64;
        if p <= 0x80 {
            return Ok(p);
        }
        let result: u64;
        match p - 0x80 {
            1 => {
                d = [0; 1];
                self.read_into(d.as_mut())?;
                result = d[0] as u64;
            }
            2 => {
                let mut d = [0; 2];
                self.read_into(d.as_mut())?;
                result =
                    ((d[1] as u16) | (d[0] as u16) << 8) as u64;
            }
            3 => {
                let mut d = [0; 3];
                self.read_into(d.as_mut())?;
                result =
                    ((d[2] as u32) | (d[1] as u32) << 8 | (d[0] as u32) << 16) as u64;
            }
            4 => {
                let mut d = [0; 4];
                self.read_into(d.as_mut())?;
                result =
                    ((d[3] as u32) | (d[2] as u32) << 8 | (d[1] as u32) << 16 | (d[0] as u32) << 24) as u64;
            }
            5 => {
                let mut d = [0; 5];
                self.read_into(d.as_mut())?;
                result =
                    ((d[4] as u64) | (d[3] as u64) << 8 | (d[2] as u64) << 16 | (d[1] as u64) << 24 | (d[0] as u64) << 32) as u64;
            }
            6 => {
                let mut d = [0; 6];
                self.read_into(d.as_mut())?;
                result =
                    ((d[5] as u64) | (d[4] as u64) << 8 | (d[3] as u64) << 16 | (d[2] as u64) << 24 | (d[1] as u64) << 32 | (d[0] as u64) << 40) as u64;
            }
            7 => {
                let mut d = [0; 7];
                self.read_into(d.as_mut())?;
                result =
                    ((d[6] as u64) | (d[5] as u64) << 8 | (d[4] as u64) << 16 | (d[3] as u64) << 24 | (d[2] as u64) << 32 | (d[1] as u64) << 40 | (d[0] as u64) << 48) as u64;
            }
            8 => {
                let mut d = [0; 8];
                self.read_into(d.as_mut())?;
                result =
                    ((d[7] as u64) | (d[6] as u64) << 8 | (d[5] as u64) << 16 | (d[4] as u64) << 24 | (d[3] as u64) << 32 | (d[2] as u64) << 40 | (d[1] as u64) << 48 | (d[0] as u64) << 56) as u64;
            }
            _ => return Err(Error::InvalidU64),
        }
        Ok(result)
    }

    /// reade u32
    pub fn read_u32(&mut self) -> Result<u32, Error> {
        let result = self.read_u64()?;
        if result > 1 << 32 - 1 {
            return Err(Error::InvalidU32)
        }
        let n = result as u32;
        Ok(n)
    }

    /// read u16
    pub fn read_u16(&mut self) -> Result<u16, Error> {
        let result = self.read_u64()?;
        if result > 1 << 16 - 1 {
            return Err(Error::InvaliadUintRange)
        }
        let n = result as u16;
        Ok(n)
    }

    /// read u8
    pub fn read_u8(&mut self) -> Result<u8, Error> {
        let result = self.read_byte()?;
        Ok(result)
    }

    pub fn read_bool(&mut self) -> Result<bool, Error> {
        let n = self.read_u64()?;
        let res = n as u8;
        match res {
            0 => Ok(false),
            1 => Ok(true),
            _ => Err(Error::InvalidBool),
        }
    }


    /// read bytes
    pub fn read_bytes(&mut self, len: usize) -> Result<&[u8], Error> {
        if self.position + len > self.payload.len() {
            Err(Error::UnexpectedEof)
        } else {
            let bytes = &self.payload[self.position..self.position + len];
            self.position += len;
            Ok(bytes)
        }
    }

    /// read byte as u8
    pub fn read_byte(&mut self) -> Result<u8, Error> {
        if self.position >= self.payload.len() {
            Err(Error::UnexpectedEof)
        } else {
            let b = self.payload[self.position];
            match self.advance(1) {
                Ok(_) => Ok(b),
                Err(err) => Err(err),
            }
        }
    }
}
