#ifndef SLS_pset /* 重複定義防止 */
#define SLS_pset /* 重複定義防止マクロ */

#include <windows.h> /* HDC,SetPixelV */

void pset( /* 点関数  Point SETting function */
int x, /* x座標(0～639～)[dot] */
int y, /* y座標(0～399～)[dot] */
COLORREF c) /* 色番号(0～7～15) Color */
{
  extern HDC SLS_hdc; /* 表示装置構成ハンドル  Handle of Device Context */

  SetPixelV(SLS_hdc,x,y,c); /* 点を打つ */
} /* pset */


#endif