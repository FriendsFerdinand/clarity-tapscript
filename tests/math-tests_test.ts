
import { Clarinet, Tx, Chain, Account, types } from 'https://deno.land/x/clarinet@v1.8.0/index.ts';
import { assertEquals } from 'https://deno.land/std@0.170.0/testing/asserts.ts';
import { hexToBytes, hexToUint256 } from './utils.ts';

Clarinet.test({
    name: "Ensure that <...>",
    async fn(chain: Chain, accounts: Map<string, Account>) {
        let wallet_1 = accounts.get("wallet_1")!;

        const hex_1 = "0100000000000004010000000000000301000000000000020100000000000001";
        const val_1 = (hexToUint256(hex_1));

        let result = chain.callReadOnlyFn(
          'uint256-lib',
          "hex-to-uint256",
          [
            types.buff(hexToBytes(hex_1))
          ],
          wallet_1.address
        );

        assertEquals(val_1, result.result.expectOk());

        const tuple_1 = result.result.expectOk().expectTuple();
        result = chain.callReadOnlyFn(
          'uint256-lib',
          "uint256-to-hex",
          [
            types.tuple({
              i0: tuple_1["i0"],
              i1: tuple_1["i1"],
              i2: tuple_1["i2"],
              i3: tuple_1["i3"]
            })
          ],
          wallet_1.address
        );

        assertEquals(result.result.expectOk(), `0x${hex_1}`);


        const x_hex = "79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798"
        const x = hexToUint256(x_hex);
        
        result = chain.callReadOnlyFn(
          'uint256-lib',
          "hex-to-uint256",
          [
            types.buff(hexToBytes(x_hex))
          ],
          wallet_1.address
        );

        const tuple_x = result.result.expectOk().expectTuple();

        result = chain.callReadOnlyFn(
          'point',
          "get-y",
          [
            types.tuple({
              i0: tuple_x["i0"],
              i1: tuple_x["i1"],
              i2: tuple_x["i2"],
              i3: tuple_x["i3"]
            })
          ],
          wallet_1.address
        );

        console.log(result.result);

        result = chain.callReadOnlyFn(
          'uint256-lib',
          "hex-to-uint256",
          [
            types.buff(hexToBytes("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"))
          ],
          wallet_1.address
        );

        result = chain.callReadOnlyFn(
          'point',
          'test-me',
          [],
          wallet_1.address
        );

        assertEquals(result.result, "(ok {i0: u4171892913627134758, i1: u5437512212843661688, i2: u4757116315435683333, i3: u13455795991904716124, i4: u4221096490488203606, i5: u736585429500254868, i6: u5102038406068984499, i7: u12220388447133411904})");

        // console.log(BigInt("115792089237316195423570985008687907853269984665640564039457584007908834671663").toString(16).toUpperCase());
        // console.log(result.result);

    },
});
