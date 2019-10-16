/// Converts u64 to right aligned array of bytes.
pub fn pad_u64(value: u64, size: &mut usize) -> [u8; 9] {
    let mut data :[u8;9] = [0;9];
    match value {
        num if num < 0x80 => {
            data[0] = num as u8;
            *size = 1;
        },
        num if num < (1<<8) => {
            data[0] = 0x80 + 1;
            data[1] = num as u8;
            *size = 2;
        },
        num if num < (1<<16) => {
            data[0] = 0x80 + 2;
            data[1] = (num >> 8) as u8;
            data[2] = num as u8;
            *size = 3;
        },
        num if num < (1<<24) => {
            data[0] = 0x80 + 3;
            data[1] = (num >> 16) as u8;
            data[2] = (num >> 8) as u8;
            data[3] = num as u8;
            *size = 4;
        },
        num if num < (1<<32) => {
            data[0] = 0x80 + 4;
            data[1] = (num >> 24) as u8;
            data[2] = (num >> 16) as u8;
            data[3] = (num >> 8) as u8;
            data[4] = num as u8;
            *size = 5;
        },
        num if num < (1<<40) => {
            data[0] = 0x80 + 5;
            data[1] = (num >> 32) as u8;
            data[2] = (num >> 24) as u8;
            data[3] = (num >> 16) as u8;
            data[4] = (num >> 8) as u8;
            data[5] = num as u8;
            *size = 6;
        },
        num if num < (1<<48) => {
            data[0] = 0x80 + 6;
            data[1] = (num >> 40) as u8;
            data[2] = (num >> 32) as u8;
            data[3] = (num >> 24) as u8;
            data[4] = (num >> 16) as u8;
            data[5] = (num >> 8) as u8;
            data[6] = num as u8;
            *size = 7;
        },
        num if num < (1<<56) => {
            data[0] = 0x80 + 7;
            data[1] = (num >> 48) as u8;
            data[2] = (num >> 40) as u8;
            data[3] = (num >> 32) as u8;
            data[4] = (num >> 24) as u8;
            data[5] = (num >> 16) as u8;
            data[6] = (num >> 8) as u8;
            data[7] = num as u8;
            *size = 8;
        },
        num => {
            data[0] = 0x80 + 8;
            data[1] = (num >> 56) as u8;
            data[2] = (num >> 48) as u8;
            data[3] = (num >> 40) as u8;
            data[4] = (num >> 32) as u8;
            data[5] = (num >> 24) as u8;
            data[6] = (num >> 16) as u8;
            data[7] = (num >> 8) as u8;
            data[8] = num as u8;
            *size = 9;
        },
    }
    data
}