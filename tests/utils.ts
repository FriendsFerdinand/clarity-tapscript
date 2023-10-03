export function hexToBytes(hexString: string) {
  return Uint8Array.from(
    hexString.match(/.{1,2}/g)!.map((byte) => parseInt(byte, 16))
  );
}

export function  hexToUint256(str: string) {
  var re = /[0-9A-Fa-f]{64}/g;
  str = str.replace(/$0x/, "");
  str = str.padStart(64, "0");
  if (!re.test(str)) throw "Invalid hex string";
  let parts: any = [];
  for (let i = 0; i < 64; i += 16) {
    parts.push(BigInt("0x" + str.slice(i, i + 16)));
  }
  return `{i0: u${parts[0]}, i1: u${parts[1]}, i2: u${parts[2]}, i3: u${parts[3]}}`;
};


export function  hexToUint256_32bit(str: string) {
  var re = /[0-9A-Fa-f]{64}/g;
  str = str.replace(/$0x/, "");
  str = str.padStart(64, "0");
  if (!re.test(str)) throw "Invalid hex string";
  let parts: any = [];
  for (let i = 0; i < 64; i += 8) {
    parts.push(BigInt("0x" + str.slice(i, i + 8)));
  }
  return `{i0: u${parts[0]}, i1: u${parts[1]}, i2: u${parts[2]}, i3: u${parts[3]}, i4: u${parts[4]}, i5: u${parts[5]}, i6: u${parts[6]}, i7: u${parts[7]}}`;
};


export function hexToUint256ToObj_32bit(str: string) {
  var re = /[0-9A-Fa-f]{64}/g;
  str = str.replace(/$0x/, "");
  str = str.padStart(64, "0");
  if (!re.test(str)) throw "Invalid hex string";
  let parts: any = [];
  for (let i = 0; i < 64; i += 8) {
    parts.push(BigInt("0x" + str.slice(i, i + 8)));
  }
  return [ parts[0], parts[1], parts[2], parts[3], parts[4], parts[5], parts[6], parts[7] ];
};
