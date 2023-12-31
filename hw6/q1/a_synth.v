/* Generated by Yosys 0.7 (git sha1 61f6811, i686-w64-mingw32.static-gcc 4.9.3 -Os) */

(* top =  1  *)
(* src = "hw6\\q1\\a.v:1" *)
module comp_1(A, W);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  (* src = "hw6\\q1\\a.v:1" *)
  input [7:0] A;
  (* src = "hw6\\q1\\a.v:1" *)
  output [7:0] W;
  NOR _28_ (
    .A(A[0]),
    .B(A[1]),
    .Y(_00_)
  );
  NOT _29_ (
    .A(A[1]),
    .Y(_01_)
  );
  NOT _30_ (
    .A(A[0]),
    .Y(_02_)
  );
  NOR _31_ (
    .A(_02_),
    .B(_01_),
    .Y(_03_)
  );
  NOR _32_ (
    .A(_03_),
    .B(_00_),
    .Y(W[1])
  );
  NAND _33_ (
    .A(_02_),
    .B(_01_),
    .Y(_04_)
  );
  NOR _34_ (
    .A(_04_),
    .B(A[2]),
    .Y(_05_)
  );
  NOT _35_ (
    .A(A[2]),
    .Y(_06_)
  );
  NOR _36_ (
    .A(_00_),
    .B(_06_),
    .Y(_07_)
  );
  NOR _37_ (
    .A(_07_),
    .B(_05_),
    .Y(W[2])
  );
  NAND _38_ (
    .A(_00_),
    .B(_06_),
    .Y(_08_)
  );
  NOR _39_ (
    .A(_08_),
    .B(A[3]),
    .Y(_09_)
  );
  NOT _40_ (
    .A(A[3]),
    .Y(_10_)
  );
  NOR _41_ (
    .A(_05_),
    .B(_10_),
    .Y(_11_)
  );
  NOR _42_ (
    .A(_11_),
    .B(_09_),
    .Y(W[3])
  );
  NAND _43_ (
    .A(_05_),
    .B(_10_),
    .Y(_12_)
  );
  NOR _44_ (
    .A(_12_),
    .B(A[4]),
    .Y(_13_)
  );
  NOT _45_ (
    .A(A[4]),
    .Y(_14_)
  );
  NOR _46_ (
    .A(_09_),
    .B(_14_),
    .Y(_15_)
  );
  NOR _47_ (
    .A(_15_),
    .B(_13_),
    .Y(W[4])
  );
  NAND _48_ (
    .A(_09_),
    .B(_14_),
    .Y(_16_)
  );
  NOR _49_ (
    .A(_16_),
    .B(A[5]),
    .Y(_17_)
  );
  NOT _50_ (
    .A(A[5]),
    .Y(_18_)
  );
  NOR _51_ (
    .A(_13_),
    .B(_18_),
    .Y(_19_)
  );
  NOR _52_ (
    .A(_19_),
    .B(_17_),
    .Y(W[5])
  );
  NAND _53_ (
    .A(_13_),
    .B(_18_),
    .Y(_20_)
  );
  NOR _54_ (
    .A(_20_),
    .B(A[6]),
    .Y(_21_)
  );
  NOT _55_ (
    .A(A[6]),
    .Y(_22_)
  );
  NOR _56_ (
    .A(_17_),
    .B(_22_),
    .Y(_23_)
  );
  NOR _57_ (
    .A(_23_),
    .B(_21_),
    .Y(W[6])
  );
  NOT _58_ (
    .A(A[7]),
    .Y(_24_)
  );
  NAND _59_ (
    .A(_17_),
    .B(_22_),
    .Y(_25_)
  );
  NAND _60_ (
    .A(_25_),
    .B(_24_),
    .Y(_26_)
  );
  NAND _61_ (
    .A(_21_),
    .B(A[7]),
    .Y(_27_)
  );
  NAND _62_ (
    .A(_27_),
    .B(_26_),
    .Y(W[7])
  );
  assign W[0] = A[0];
endmodule
