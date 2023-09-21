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
  return `{i0: ${parts[0]}, i1: ${parts[1]}, i2: ${parts[2]}, i3: ${parts[3]}}`;
};
