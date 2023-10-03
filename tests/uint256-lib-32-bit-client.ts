
import { Clarinet, Tx, Chain, Account, types } from 'https://deno.land/x/clarinet@v1.0.3/index.ts';
import { hexToBytes, hexToUint256_32bit } from './utils.ts';

export class Uint256Lib_32Bit {
  chain: Chain;
  deployer: Account;

  constructor(chain: Chain, deployer: Account) {
      this.chain = chain;
      this.deployer = deployer;
  }

  shortToUint(b: number) {
    let result = this.chain.callReadOnlyFn(
      'uint256-lib-32-bit',
      "short-to-uint256",
      [
        types.uint(b)
      ],
      this.deployer.address
    );

    return result;
  }

  hexToUint256(hexNum: string) {
    let result = this.chain.callReadOnlyFn(
      'uint256-lib-32-bit',
      "hex-to-uint256",
      [
        types.buff(hexToBytes(hexNum))
      ],
      this.deployer.address
    );

    return result;
  }
  
  uint256ToHex(words: number[]) {
    let result = this.chain.callReadOnlyFn(
      'uint256-lib-32-bit',
      "uint256-to-hex",
      [
        types.tuple({ i0: words[0], i1: words[1], i2: words[2], i3: words[3], i4: words[4], i5: words[5], i6: words[6], i7: words[7] })
      ],
      this.deployer.address
    );

    return result;
  }

  uint256RShiftOverflow(
    words: string[],
    nBits: number) {
    let result = this.chain.callReadOnlyFn(
      'uint256-lib-32-bit',
      "uint256-rshift-overflow",
      [
        types.tuple({ i0: words[0], i1: words[1], i2: words[2], i3: words[3], i4: words[4], i5: words[5], i6: words[6], i7: words[7] }),
        types.uint(nBits)
      ],
      this.deployer.address
    );

    return result;
  }

  uint256AddShort(
    words: string[],
    nBits: number) {
    let result = this.chain.callReadOnlyFn(
      'uint256-lib-32-bit',
      "uint256-add-short",
      [
        types.tuple({ i0: words[0], i1: words[1], i2: words[2], i3: words[3], i4: words[4], i5: words[5], i6: words[6], i7: words[7] }),
        types.uint(nBits)
      ],
      this.deployer.address
    );
    return result;
  }

  uint256Lt(
    wordsA: string[],
    wordsB: string[],) {
    let result = this.chain.callReadOnlyFn(
      'uint256-lib-32-bit',
      "uint256<",
      [
        types.tuple({ i0: wordsA[0], i1: wordsA[1], i2: wordsA[2], i3: wordsA[3], i4: wordsA[4], i5: wordsA[5], i6: wordsA[6], i7: wordsA[7] }),
        types.tuple({ i0: wordsB[0], i1: wordsB[1], i2: wordsB[2], i3: wordsB[3], i4: wordsB[4], i5: wordsB[5], i6: wordsB[6], i7: wordsB[7] }),
      ],
      this.deployer.address
    );
    return result;
  }


  uint256Sub(
    wordsA: string[],
    wordsB: string[],) {
    let result = this.chain.callReadOnlyFn(
      'uint256-lib-32-bit',
      "uint256-sub",
      [
        types.tuple({ i0: wordsA[0], i1: wordsA[1], i2: wordsA[2], i3: wordsA[3], i4: wordsA[4], i5: wordsA[5], i6: wordsA[6], i7: wordsA[7] }),
        types.tuple({ i0: wordsB[0], i1: wordsB[1], i2: wordsB[2], i3: wordsB[3], i4: wordsB[4], i5: wordsB[5], i6: wordsB[6], i7: wordsB[7] }),
      ],
      this.deployer.address
    );
    return result;
  }


  uint256Div(
    wordsA: string[],
    wordsB: string[],) {
    let result = this.chain.callReadOnlyFn(
      'uint256-lib-32-bit',
      "uint256-div",
      [
        types.tuple({ i0: wordsA[0], i1: wordsA[1], i2: wordsA[2], i3: wordsA[3], i4: wordsA[4], i5: wordsA[5], i6: wordsA[6], i7: wordsA[7] }),
        types.tuple({ i0: wordsB[0], i1: wordsB[1], i2: wordsB[2], i3: wordsB[3], i4: wordsB[4], i5: wordsB[5], i6: wordsB[6], i7: wordsB[7] }),
      ],
      this.deployer.address
    );
    return result;
  }

}