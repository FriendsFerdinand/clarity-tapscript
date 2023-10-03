
import { Clarinet, Tx, Chain, Account, types } from 'https://deno.land/x/clarinet@v1.8.0/index.ts';
import { assertEquals } from 'https://deno.land/std@0.170.0/testing/asserts.ts';
import { hexToBytes, hexToUint256ToObj_32bit, hexToUint256_32bit } from './utils.ts';
import { Uint256Lib_32Bit } from './uint256-lib-32-bit-client.ts';

Clarinet.test({
    name: "Ensure that <...>",
    async fn(chain: Chain, accounts: Map<string, Account>) {
        let wallet_1 = accounts.get("wallet_1")!;
        let uint256Client = new Uint256Lib_32Bit(chain, wallet_1);

        const hex_1 = "0000000100000001000000010000000100000001000000010000000100000001";
        const val_1 = (hexToUint256_32bit(hex_1));

        let result = uint256Client.hexToUint256(hex_1);
        
        assertEquals(val_1, result.result.expectOk());

        const tuple_1 = result.result.expectOk().expectTuple();
        result = uint256Client.uint256ToHex([tuple_1["i0"],tuple_1["i1"],tuple_1["i2"],tuple_1["i3"],tuple_1["i4"],tuple_1["i5"],tuple_1["i6"],tuple_1["i7"]]);
        
        assertEquals(result.result.expectOk(), `0x${hex_1}`);
        const init = hexToUint256ToObj_32bit("afbd122d3c1dd8ada1cb727ef867ac6286401d81af2e18c471fc6ea7e769e21f");

        result = uint256Client.uint256RShiftOverflow(init.map((val) => `u${val}`), 148);
        
        const tuple_2 = result.result.expectOk().expectTuple();
        result = uint256Client.uint256ToHex([tuple_2["i0"],tuple_2["i1"],tuple_2["i2"],tuple_2["i3"],tuple_2["i4"],tuple_2["i5"],tuple_2["i6"],tuple_2["i7"]]);
        
        assertEquals(result.result.expectOk(), "0xd81af2e18c471fc6ea7e769e21f0000000000000000000000000000000000000");

        result = uint256Client.uint256AddShort(init.map((val) => `u${val}`), 6869401083663778);

        const tuple_3 = result.result.expectOk().expectTuple();
        result = uint256Client.uint256ToHex([tuple_3["i0"],tuple_3["i1"],tuple_3["i2"],tuple_3["i3"],tuple_3["i4"],tuple_3["i5"],tuple_3["i6"],tuple_3["i7"]]);

        assertEquals(result.result.expectOk(), "0xafbd122d3c1dd8ada1cb727ef867ac6286401d81af2e18c47214d656fad337c1");

        result = uint256Client.uint256Lt(
          init.map((val) => `u${val}`),
          [tuple_3["i0"],tuple_3["i1"],tuple_3["i2"],tuple_3["i3"],tuple_3["i4"],tuple_3["i5"],tuple_3["i6"],tuple_3["i7"]]
        );

        assertEquals(result.result.expectOk(), "true");

        result = uint256Client.uint256Sub(
          [tuple_3["i0"],tuple_3["i1"],tuple_3["i2"],tuple_3["i3"],tuple_3["i4"],tuple_3["i5"],tuple_3["i6"],tuple_3["i7"]],
          init.map((val) => `u${val}`),
        );

        const result_sub = result.result.expectOk().expectTuple();
        result = uint256Client.uint256ToHex([result_sub["i0"],result_sub["i1"],result_sub["i2"],result_sub["i3"],result_sub["i4"],result_sub["i5"],result_sub["i6"],result_sub["i7"]]);
        assertEquals(result.result.expectOk(), "0x000000000000000000000000000000000000000000000000001867af136955a2");


      let a = uint256Client.hexToUint256("afbd122d3c1dd8ada1cb727ef867ac6286401d81af2e18c471fc6ea7e769e21f").result.expectOk().expectTuple();
      let b = uint256Client.hexToUint256("000000000000000000000000000000000000000000000000208e440eb14c0780").result.expectOk().expectTuple();

      result = uint256Client.uint256Div(
        [a["i0"],a["i1"],a["i2"],a["i3"],a["i4"],a["i5"],a["i6"],a["i7"]],
        [b["i0"],b["i1"],b["i2"],b["i3"],b["i4"],b["i5"],b["i6"],b["i7"]],
      );

      const result_div_1 = result.result.expectOk().expectTuple();
      result = uint256Client.uint256ToHex([result_div_1["i0"],result_div_1["i1"],result_div_1["i2"],result_div_1["i3"],result_div_1["i4"],result_div_1["i5"],result_div_1["i6"],result_div_1["i7"]]);
      assertEquals(result.result.expectOk(), "0x000000000000000565e8dd0ba913ae1c9633008b0369155e6a806a05e76d8563");
      
    },
});
