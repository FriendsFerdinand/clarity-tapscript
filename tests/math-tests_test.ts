
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
            types.buff(hexToBytes("0100000000000004010000000000000301000000000000020100000000000001"))
          ],
          wallet_1.address
        );

        // console.log(val_1);
        assertEquals(val_1, result.result.expectOk());

        const tuple_1 = result.result.expectOk().expectTuple();

        result = chain.callReadOnlyFn(
          'uint256-lib',
          "uint256-to-hex",
          [
            types.tuple({
              i0: types.uint(tuple_1["i0"]),
              i1: types.uint(tuple_1["i1"]),
              i2: types.uint(tuple_1["i2"]),
              i3: types.uint(tuple_1["i3"])
            })
          ],
          wallet_1.address
        );
        
        assertEquals(result.result.expectOk(), `0x${hex_1}`);
    },
});
