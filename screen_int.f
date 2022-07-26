/* getmscrx.f */
#ifndef SLS_get_max_screen_x /* 重複定義防止 */
#define SLS_get_max_screen_x /* 重複定義防止マクロ */

#include <windows.h> /* SM_CXSCREEN,GetSystemMetrics */


int get_max_screen_x(void) /* 最大画面Xサイズ関数
                              GET MAX SCREEN X-size function */
/*
 * 最大画面Xサイズ(640～800～1024～1152～1280～1600～)[dot]
 */
{
  return GetSystemMetrics(SM_CXSCREEN);
} /* get_max_screen_x */


#endif /* SLS_get_max_screen_x */


/* getmscry.f */
#ifndef SLS_get_max_screen_y /* 重複定義防止 */
#define SLS_get_max_screen_y /* 重複定義防止マクロ */

#include <windows.h> /* SM_CYSCREEN,GetSystemMetrics */


int get_max_screen_y(void) /* 最大画面Yサイズ関数
                              GET MAX SCREEN Y-size function */
/*
 * 最大画面Xサイズ(400～480～600～768～864～1024～1200～)[dot]
 */
{
  return GetSystemMetrics(SM_CYSCREEN);
} /* get_max_screen_y */


#endif /* SLS_get_max_screen_y */


/* getscrnx.f */
#ifndef SLS_getscreenx /* 重複定義防止 */
#define SLS_getscreenx /* 重複定義防止マクロ */

#include <windows.h> /* HWND,RECT,GetClientRect */


int getscreenx(void) /* 現在画面Xサイズ関数  Get ScReeN X-size function */
/*
 * 画面Xサイズ(1～640～)[dot]
 */
{
  extern HWND SLS_hwnd; /* ウィンドウ・ハンドル  Handle of WiNDow */
  RECT d;
  GetClientRect(SLS_hwnd,&d); /* 描画領域座標 */
  return d.right;
} /* getscreenx */


#endif /* SLS_getscreenx */


/* getscrny.f */
#ifndef SLS_getscreeny /* 重複定義防止 */
#define SLS_getscreeny /* 重複定義防止マクロ */

#include <windows.h> /* HWND,RECT,GetClientRect */


int getscreeny(void) /* 現在画面Yサイズ関数  Get ScReeN Y-size function */
/*
 * 画面Yサイズ(1～400～)[dot]
 */
{
  extern HWND SLS_hwnd; /* ウィンドウ・ハンドル  Handle of WiNDow */
  RECT d;
  GetClientRect(SLS_hwnd,&d); /* 描画領域座標 */
  return d.bottom;
} /* getscreeny */


#endif /* SLS_getscreeny */


/* getwinx.f */
#ifndef SLS_getwinx /* 重複定義防止 */
#define SLS_getwinx /* 重複定義防止マクロ */

#include <windows.h> /* HWND,RECT,GetWindowRect */


int getwinx(void) /* ウィンドウXサイズ関数  Get WINdow X-size function */
/*
 * ウィンドウXサイズ(1～640～)[dot]=画面Xサイズ+枠X*2
 */
{
  extern HWND SLS_hwnd; /* ウィンドウ・ハンドル  Handle of WiNDow */
  RECT d;
  GetWindowRect(SLS_hwnd,&d); /* ウィンドウ長方形 */
  return d.right-d.left;
} /* getwinx */


#endif /* SLS_getwinx */


/* getwiny.f */
#ifndef SLS_getwiny /* 重複定義防止 */
#define SLS_getwiny /* 重複定義防止マクロ */

#include <windows.h> /* HWND,RECT,GetWindowRect */


int getwiny(void) /* ウィンドウYサイズ関数  Get WINdow Y-size function */
/*
 * ウィンドウYサイズ(1～400～)[dot]=画面Yサイズ+タイトルY+枠Y*2
 */
{
  extern HWND SLS_hwnd; /* ウィンドウ・ハンドル  Handle of WiNDow */
  RECT d;
  GetWindowRect(SLS_hwnd,&d); /* ウィンドウ長方形 */
  return d.bottom-d.top;
} /* getwiny */


#endif /* SLS_getwiny */


/* gint.f */
#ifndef SLS_gint /* 重複定義防止 */
#define SLS_gint /* 重複定義防止マクロ */

#include <stdio.h> /* FILENAME_MAX,NULL */
#include <stdlib.h> /* EXIT_SUCCESS,exit */
#include <windows.h> /* CALLBACK,DWORD,HDC,HWND,LPARAM,LPMINMAXINFO,
  LRESULT,MSG,PAINTSTRUCT,POINT,RECT,SIZE,UINT,WNDCLASS,WPARAM,
  BLACK_BRUSH,CW_USEDEFAULT,FALSE,HWND_NOTOPMOST,HWND_TOPMOST,IDC_ARROW,
  MM_TEXT,SB_HORZ,SB_LINEDOWN,SB_LINELEFT,SB_LINERIGHT,SB_LINEUP,SB_VERT,
  SB_PAGELEFT,SB_PAGERIGHT,SB_PAGEDOWN,SB_PAGEUP,SB_THUMBPOSITION,
  SC_MAXIMIZE,SC_MINIMIZE,SC_RESTORE,
  SIMPLEREGION,SM_CXVSCROLL,SM_CYHSCROLL,
  SRCCOPY,STD_INPUT_HANDLE,SW_SHOWDEFAULT,SWP_NOMOVE,SWP_NOSIZE,TRUE,
  WM_CLOSE,WM_CREATE,WM_ERASEBKGND,WM_EXITSIZEMOVE,WM_GETMINMAXINFO,
  WM_HSCROLL,WM_NCHITTEST,WM_PAINT,WM_SIZE,WM_SIZING,WM_SYSCOMMAND,WM_VSCROLL,
  WMSZ_BOTTOM,WMSZ_BOTTOMLEFT,WMSZ_BOTTOMRIGHT,WMSZ_LEFT,WMSZ_RIGHT,WMSZ_TOP,
  WMSZ_TOPLEFT,WMSZ_TOPRIGHT,
  WS_CAPTION,WS_HSCROLL,WS_OVERLAPPED,WS_MAXIMIZEBOX,WS_MINIMIZEBOX,
  WS_SYSMENU,WS_THICKFRAME,WS_VSCROLL,
  HIWORD,LOWORD,
  AdjustWindowRect,BeginPaint,BitBlt,CreateCompatibleBitmap,CreateCompatibleDC,
  CreateRectRgn,CreateWindow,DefWindowProc,DeleteDC,DispatchMessage,
  DestroyWindow,EndPaint,FlushConsoleInputBuffer,GetClipBox,GetMapMode,
  GetMessage,GetModuleFileName,GetModuleHandle,GetStdHandle,GetStockObject,
  GetSystemMetrics,GetViewportExtEx,GetViewportOrgEx,GetWindowExtEx,
  GetWindowOrgEx,LoadCursor,PostQuitMessage,RegisterClass,ScrollWindow,
  SelectClipRgn,SetMapMode,SetRect,SetScrollPos,SetScrollRange,
  SetViewportExtEx,SetViewportOrgEx,SetWindowExtEx,SetWindowPos,SetWindowOrgEx,
  ShowScrollBar,ShowWindow,TranslateMessage,UpdateWindow,ValidateRect */

//#include "getmscrx.f" /* 最大画面Xサイズ関数  get_max_screen_x */
//#include "getmscry.f" /* 最大画面Yサイズ関数  get_max_screen_y */
//#include "getscrnx.f" /* 現在画面Xサイズ関数  getscreenx */
//#include "getscrny.f" /* 現在画面Yサイズ関数  getscreeny */
//#include "getwinx.f"  /* ウィンドウXサイズ関数 */
//#include "getwiny.f"  /* ウィンドウYサイズ関数 */


HDC SLS_hdc; /* 表示装置構成ハンドル  Handle of Device Context */
HWND SLS_hwnd; /* ウィンドウ・ハンドル  Handle of WiNDow */
int SLS_screen_x; /* 初期画面Xサイズ(1～640～)[dot](XMAX用) */
int SLS_screen_y; /* 初期画面Yサイズ(1～400～)[dot](YMAX用) */

#define hpaint     SLS_gint_hpaint /* 重複定義回避マクロ */
#define hdc2       SLS_gint_hdc2
#define window_x   SLS_gint_window_x
#define window_y   SLS_gint_window_y
#define window_sx  SLS_gint_window_sx
#define window_sy  SLS_gint_window_sy
#define gend_first SLS_gint_gend_first
static PAINTSTRUCT hpaint; /* 描画情報ハンドル  Handle of PAINTing */
static HDC hdc2; /* 画面保存用表示装置構成ハンドル  Handle of Device Context */
static int window_x; /* 初期ウィンドウXサイズ[dot] */
static int window_y; /* 初期ウィンドウYサイズ[dot] */
static int window_sx; /* スクロール・ウィンドウXサイズ[dot] */
static int window_sy; /* スクロール・ウィンドウYサイズ[dot] */
static int gend_first=1; /* gend実行(0:済, 1:未, 2:gmemory) */

#define window_proc SLS_gint_window_proc /* 重複定義回避マクロ */
static LRESULT CALLBACK window_proc( /* ウィンドウ入力処理関数 */
  HWND hwnd,UINT uMsg,WPARAM wParam,LPARAM lParam);

//HBRUSH hback_brush; // 背景ブラシ・ハンドル

int gint( /* グラフィックス初期化関数（スクロール版）
             Graphics INiTializing function */
/*
 * 0:成功(EXIT_SUCCESS)
 * 1:失敗(ウィンドウ・クラス登録失敗)
 */
int rx, /* 画面Xサイズ(1～640～)[dot] Resolution-X */
int ry, /* 画面Yサイズ(1～400～)[dot] Resolution-Y */
COLORREF back)
{
  char fn[FILENAME_MAX]; /* 実行ファイル名  File Name */
  RECT ws; /* ウィンドウ・サイズ  Window Size */
  WNDCLASS wc; /* ウィンドウ・クラス  Window Class */

  DWORD wstyle /* ウィンドウ・スタイル  Window STYLE */
  =WS_OVERLAPPED  /* 自動表示位置 */
  |WS_CAPTION     /* タイトル・バー,移動可能 */
  |WS_SYSMENU     /* 閉じる可能 */
  |WS_THICKFRAME  /* ウィンドウ・サイズ可変灰太枠 */
  |WS_MINIMIZEBOX /* 最小化可能 */
  |WS_MAXIMIZEBOX /* 最大化可能 */
  |WS_HSCROLL     /* 水平スクロール */
  |WS_VSCROLL;    /* 垂直スクロール */
  /*
   *［解説］自動表示位置移動可能可変灰太枠スクロールウィンドウ
   *（タイトル・バー,灰太境界,大きさ可変,表示位置不定,移動可能,閉じる可能,
   * 最小化可能,最大化可能,スクロール可能）
   */

  wc.lpszClassName="gint"; /* ウィンドウ・クラス名 */
  wc.lpszMenuName =NULL; /* クラス・メニュー・リソース名 */
  wc.hInstance    =GetModuleHandle(NULL); /* インスタンス・ハンドル */
  wc.lpfnWndProc  =window_proc; /* ウィンドウ・プロシージャ */
  wc.hCursor      =LoadCursor(NULL,IDC_ARROW); /* クラス・カーソル */
  wc.hIcon        =NULL; /* クラス・アイコン（定義せず） */
  if(back==CLR_INVALID)
    wc.hbrBackground // クラス背景ブラシ
              =NULL; // 論理ブラシなし
  else
    wc.hbrBackground // クラス背景ブラシ
      =CreateSolidBrush(back); // 論理ブラシ生成

  wc.style        =0; /* クラス・スタイル（指定せず） */
  wc.cbClsExtra   =0; /* 補足クラス・メモリ[バイト] */
  wc.cbWndExtra   =0; /* 補足ウィンドウ・メモリ[バイト] */
  if(!RegisterClass(&wc))return 1; /* ☆ウィンドウ・クラス登録失敗 */

  gend_first=1; /* gend関数未実行 */
  SetRect(&ws,0,0,rx,ry); /* 長方形値設定 */
  AdjustWindowRect(&ws,wstyle,0); /* ウィンドウ・サイズ計算 */
  rx=ws.right-ws.left; /* ウィンドウXサイズ[dot](枠含む) */
  ry=ws.bottom-ws.top; /* ウィンドウYサイズ[dot](枠,タイトル・バー含む) */
  if(rx>get_max_screen_x())rx=get_max_screen_x(); /* 最大画面Xサイズ以内 */
  if(ry>get_max_screen_y())ry=get_max_screen_y(); /* 最大画面Yサイズ以内 */
  window_x=rx; /* 初期ウィンドウXサイズ[dot] */
  window_y=ry; /* 初期ウィンドウYサイズ[dot] */
  window_sx /* スクロール・ウィンドウXサイズ[dot] */
    =window_x+GetSystemMetrics(SM_CXVSCROLL);
  window_sy /* スクロール・ウィンドウYサイズ[dot] */
    =window_y+GetSystemMetrics(SM_CYHSCROLL);

  GetModuleFileName(NULL,fn,FILENAME_MAX); /* 実行ファイル名 */

  SLS_hwnd=CreateWindow( /* ウィンドウ生成 */
    wc.lpszClassName, /* クラス名 */
    fn,               /* ウィンドウ名（実行ファイル名） */
    wstyle,           /* ウィンドウ・スタイル */
    CW_USEDEFAULT,    /* ウィンドウ表示X位置（自動） */
    CW_USEDEFAULT,    /* ウィンドウ表示Y位置（自動） */
    rx,               /* ウィンドウXサイズ[dot](枠含む) */
    ry,               /* ウィンドウYサイズ[dot](枠,タイトル・バー含む) */
    NULL,             /* 親ウィンドウ・ハンドル */
    NULL,             /* メニューハンドル */
    wc.hInstance,     /* アプリケーション・インスタンス・ハンドル */
    NULL);            /* ウィンドウ作成データ */

  SetWindowPos( /* 可能な限りウィンドウを手前に表示 */
    SLS_hwnd,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE|SWP_NOSIZE);
  ShowWindow(SLS_hwnd,SW_SHOWDEFAULT); /* ウィンドウ表示状態設定 */

  SLS_screen_x=getscreenx(); /* 初期画面Xサイズ[dot](XMAX用) */
  SLS_screen_y=getscreeny(); /* 初期画面Yサイズ[dot](YMAX用) */
/*
 *［解説］ShowWindow関数を呼び出して、スクロール・バーの問題を解決してから、
 * SLS_screen_x,SLS_screen_yを設定。
 */

  SLS_hdc=BeginPaint(SLS_hwnd,&hpaint); /* 描画開始 */

  FlushConsoleInputBuffer( /* キー入力バッファ吐出（keyread関数対策） */
    GetStdHandle(STD_INPUT_HANDLE));

  return 0; /* ☆成功終了(EXIT_SUCCESS) */
} /* gint */



void gend(void) /* グラフィックス終了関数  Graphics ENDing function */
{
  void gmemory(int mode);
  MSG msg; /* メッセージ  MeSsaGe */
  gmemory(1); /* グラフィックス画面記憶 */
  gend_first=0; /* gend実行済 */

  while(GetMessage(&msg,NULL,0,0)) /* メッセージ取得（すべて） */
  {
    TranslateMessage(&msg); /* 仮想キー・メッセージ変換 */
    DispatchMessage(&msg); /* ウィンドウ・プロシージャにメッセージを送出 */
  } /* while */

  gmemory(0); /* グラフィックス画面記憶消去 */
  EndPaint(SLS_hwnd,&hpaint); /* 描画終了(SLS_hwnd,SLS_hdcを削除) */
  UnregisterClass("gint",GetModuleHandle(NULL)); /* ウィンドウ・クラス削除 */
} /* gend */



void gmemory( /* グラフィックス記憶関数  Graphics MEMORY function */
int mode) /* モード(1:記憶, 0:記憶消去) */
{
  static int map_mode=MM_TEXT; /* 写像モード */
  static int clip_box_mode=SIMPLEREGION; /* 可視領域モード */
  static HBITMAP hbitmap; /* 画面保存用画像 */
  static RECT cb; /* 限定描画領域 Clip Box */
  static POINT worg; /* ウィンドウ原点  Window ORiGin */
  static POINT vorg; /* ビューポート原点  Viewport ORiGin */
  static SIZE wext; /* ウィンドウ範囲  Window EXTent */
  static SIZE vext; /* ビューポート範囲  Viewport EXTent */

  if(mode==0) /* 記憶消去 */
  {
    if(gend_first==1)return; /* ☆未記録 */

    SetWindowPos( /* 可能な限りウィンドウを手前に表示 */
      SLS_hwnd,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE|SWP_NOSIZE);
    UpdateWindow(SLS_hwnd); /* WM_PAINTメッセージを送出 */
    gend_first=1; /* gend関数未実行 */
    DeleteDC(hdc2); /* 画面保存用装置構成削除 */
    DeleteObject(hbitmap); /* 画面保存用画像削除 */

    if(map_mode!=MM_TEXT)
    { /* 非標準写像 */
      SetMapMode(SLS_hdc,map_mode); /* 写像復帰(base_screen関数対策) */
      SetWindowOrgEx(SLS_hdc,worg.x,worg.y,NULL); /* ウィンドウ原点設定 */
      SetWindowExtEx(SLS_hdc,wext.cx,wext.cy,NULL); /* ウィンドウ範囲設定 */
      SetViewportOrgEx(SLS_hdc,vorg.x,vorg.y,NULL); /* ビューポート原点設定 */
      SetViewportExtEx(SLS_hdc,vext.cx,vext.cy,NULL); /* ビューポート範囲設定*/
    }
    if(clip_box_mode==SIMPLEREGION) /* 単一長方形 */
      SelectClipRgn( /* 限定描画領域設定(view関数対策) */
        SLS_hdc,CreateRectRgn(cb.left,cb.top,cb.right,cb.bottom));
    /*
     *［解説］呼出順序注意
     * SetWindowPos→UpdateWindow→gend_first
     * UpdateWindow→SetMapMode→SetWindowExtEx→SetViewportExtEx
     *  →SelectClipRgn
     */
    return; /* ☆ */
  }

  if(gend_first==2)return; /* ☆記録済 */
#if 1 /* 0 にすると、gend関数呼出前からスクロール可能になる */
  SLS_screen_x=getscreenx(); /* 現在x解像度[dot] */
  SLS_screen_y=getscreeny(); /* 現在y解像度[dot] */
#endif

  map_mode=GetMapMode(SLS_hdc); /* 写像モード取得 */
  if(map_mode!=MM_TEXT)
  { /* 非標準写像 */
    GetWindowOrgEx(SLS_hdc,&worg); /* ウィンドウ原点取得 */
    GetWindowExtEx(SLS_hdc,&wext); /* ウィンドウ範囲取得 */
    GetViewportOrgEx(SLS_hdc,&vorg); /* ビューポート原点取得 */
    GetViewportExtEx(SLS_hdc,&vext); /* ビューポート範囲取得 */
    SetMapMode( /* 写像標準化（他の写像になっていると画像が崩れる）*/
      SLS_hdc,MM_TEXT);
  }

  clip_box_mode=GetClipBox(SLS_hdc,&cb); /* 限定描画領域取得 */
  /*［解説］GetClipRgn関数(Win32 API)は使用できない */
  SelectClipRgn( /* 限定描画領域削除（描画領域全体を保存するため）*/
    SLS_hdc,NULL);

  hdc2=CreateCompatibleDC(SLS_hdc); /* 互換装置構成生成 */
  hbitmap=CreateCompatibleBitmap( /* 互換ビットマップ作成 */
    SLS_hdc, /* 元装置構成 */
    SLS_screen_x,SLS_screen_y); /* 解像度 */
  SelectObject(hdc2,hbitmap); /* 画面保存用装置構成設定 */

  BitBlt( /* 画面保存 */
    hdc2,    /* 転送先装置構成 */
    0,0,     /* 転送先座標 */
    SLS_screen_x,SLS_screen_y, /* 解像度 */
    SLS_hdc, /* 転送元装置構成 */
    0,0,     /* 転送元座標 */
    SRCCOPY); /* 元のままコピー SouRCe COPY */

  SetWindowPos( /* 他のウィンドウの下にもなれるように */
    SLS_hwnd,HWND_NOTOPMOST,0,0,0,0,SWP_NOMOVE|SWP_NOSIZE);

#if 1 /* 0 にすると、gend関数呼出前からスクロール可能になる */
  window_x=getwinx(); /* 現在ウィンドウXサイズ[dot] */
  window_y=getwiny(); /* 現在ウィンドウYサイズ[dot] */
  hpaint.rcPaint.right =window_x; /* 描画x範囲 */
  hpaint.rcPaint.bottom=window_y; /* 描画y範囲 */
  window_sx /* スクロール・ウィンドウXサイズ[dot] */
    =window_x+GetSystemMetrics(SM_CXVSCROLL);
  window_sy /* スクロール・ウィンドウYサイズ[dot] */
    =window_y+GetSystemMetrics(SM_CYHSCROLL);
#else
  hpaint.rcPaint.right =window_x; /* 描画x範囲 */
  hpaint.rcPaint.bottom=window_y; /* 描画y範囲 */
#endif

  gend_first=2; /* gmemory実行(SetWindowPos呼出以後で設定) */
} /* gmemory */


static LRESULT CALLBACK window_proc( /* ウィンドウ入力処理関数 */
HWND     hwnd, /* ウィンドウ・ハンドル  Handle of the WiNDow */
UINT     uMsg, /* メッセージID          Unsigned MeSsaGe identifier */
WPARAM wParam, /* 第1メッセージ・パラメータ Word PARAMeter(無符号) */
LPARAM lParam) /* 第2メッセージ・パラメータ Long int PARAMeter(有符号) */
{
  switch(uMsg)
  {
    static int rollx;  /* 水平スクロール値(0～)[dot]  ROLL X */
    static int rolly;  /* 垂直スクロール値(0～)[dot]  ROLL Y */
    static int maxrlx; /* 最大水平スクロール(0～)[dot]  MAXimum scRoLl X */
    static int maxrly; /* 最大垂直スクロール(0～)[dot]  MAXimum scRoLl Y */
    static int sbarx;  /* 水平スクロール表示(0:なし,1:あり)  Scroll BAR X */
    static int sbary;  /* 垂直スクロール表示(0:なし,1:あり)  Scroll BAR Y */
    static int cont_scroll; /* 連続スクロール(0:なし,1:あり)CONTinuity SCROLL*/

    case WM_PAINT: /* 描画要求 */
    ValidateRect(hwnd,NULL); /* 更新描画領域削除、描画領域有効化 */
    /*
     *［解説］ValidateRect関数呼出がないと、WM_PAINTメッセージが送られ続ける。
     */
    if(gend_first==1)return 0; /* ☆gend,gmemory関数呼出前 */
    {
    RECT *p=&hpaint.rcPaint;
    BitBlt( /* 画面復活 */
      SLS_hdc,        /* 転送先装置構成 */
      p->left,p->top, /* 転送先座標 */
      p->right-p->left,p->bottom-p->top, /* スクロール画面内画面解像度 */
      hdc2,     /* 転送元装置構成 */
      p->left+rollx,p->top+rolly, /* 転送元座標 */
      SRCCOPY); /* 元のままコピー SouRCe COPY */
    }
    return 0; /* ☆ */

    case WM_SYSCOMMAND: /* システムコマンド要求 */
    switch(wParam)
    {
      case SC_MINIMIZE: /* 最小化 */
      if(maxrlx>0)sbarx=1;else sbarx=0;
      if(maxrly>0)sbary=1;else sbary=0;
      break;
      case SC_MAXIMIZE: /* 最大化 */
      sbarx=sbary=0; /* スクロールバー非表示 */
      rollx=rolly=0; /* スクロール位置原点 */
      SetScrollPos(hwnd,SB_HORZ,0,FALSE); /* 水平スクロールバー原点 */
      SetScrollPos(hwnd,SB_VERT,0,FALSE); /* 垂直スクロールバー原点 */
      /*
       *［解説］「復元ボタン」対策
       */
      ShowScrollBar(hwnd,SB_HORZ,FALSE); /* 水平スクロールバー非表示 */
      ShowScrollBar(hwnd,SB_VERT,FALSE); /* 垂直スクロールバー非表示 */
      /*
       *［解説］最大化されたウィンドウはサイズ変更できない。
       */
      break;
      case SC_RESTORE:  /* 復元 */
      if(maxrlx>0)sbarx=1;else sbarx=0;
      if(maxrly>0)sbary=1;else sbary=0;
    } /* switch */
    break; /* ☆ */

    case 0x214: /* WM_SIZING:サイズ変更中 */
    switch(wParam)
    {
      case 1 /* WMSZ_LEFT   */: /* 左端 */
      case 2 /* WMSZ_RIGHT  */: /* 右端 */
      sbarx=1;
      break;
      case 3 /* WMSZ_TOP    */: /* 上端 */
      case 6 /* WMSZ_BOTTOM */: /* 下端 */
      sbary=1;
      break;
      case 4 /* WMSZ_TOPLEFT     */: /* 左上端 */
      case 5 /* WMSZ_TOPRIGHT    */: /* 右上端 */
      case 7 /* WMSZ_BOTTOMLEFT  */: /* 左下端 */
      case 8 /* WMSZ_BOTTOMRIGHT */: /* 右下端 */
      sbarx=sbary=1;
    } /* switch */
    break; /* ☆ */

    case WM_SIZE: /* ウィンドウサイズ変更 */
#if 1 /* 0 にすると、gend関数呼出前からスクロール可能になる */
    if(gend_first==1) /* gend,gmemory関数呼出前 */
    {
      ShowScrollBar(hwnd,SB_HORZ,FALSE); /* 水平スクロールバー非表示 */
      ShowScrollBar(hwnd,SB_VERT,FALSE); /* 垂直スクロールバー非表示 */
      return 0; /* ☆ */
    }
#endif

    if(sbarx==0)
    {
      ShowScrollBar(hwnd,SB_HORZ,FALSE); /* 水平スクロールバー非表示 */
    }
    else
    { /* 水平スクロール・バー表示 */
      maxrlx=SLS_screen_x-LOWORD(lParam);
      if(maxrlx<0)maxrlx=0;

      SetScrollRange(hwnd,SB_HORZ,0,maxrlx,FALSE); /* 水平スクロール範囲設定 */
      if(maxrlx<=0)
      {
        sbarx=0;
      }
      else
      {
        if(rollx>maxrlx)rollx=maxrlx;
        SetScrollPos(hwnd,SB_HORZ,rollx,TRUE); /* 水平スクロールバー再描画 */
      }
    }

    if(sbary==0)
    {
      ShowScrollBar(hwnd,SB_VERT,FALSE); /* 垂直スクロールバー非表示 */
    }
    else
    { /* 垂直スクロール・バー表示 */
      maxrly=SLS_screen_y-HIWORD(lParam);
      if(maxrly<0)maxrly=0;

      SetScrollRange(hwnd,SB_VERT,0,maxrly,FALSE); /* 垂直スクロール範囲設定 */
      if(maxrly<=0)
      {
        sbary=0;
      }
      else
      {
        if(rolly>maxrly)rolly=maxrly;
        SetScrollPos(hwnd,SB_VERT,rolly,TRUE); /* 垂直スクロールバー再描画 */
      }
    }
    return 0; /* ☆ */

    case 0x232 /* WM_EXITSIZEMOVE */: /* 移動サイズ変更終了*/

#if 1 /* 0 にすると、gend関数呼出前からスクロール可能になる */
    if(gend_first==1)return 0; /* ☆gend,gmemory関数呼出前 */
#endif

    if(sbarx==1 && sbary==0)
    { /* X軸のみスクロール・バーあり */
      if(getwinx()>window_x) /* X軸が元より大きくなっている */
      SetWindowPos(SLS_hwnd,HWND_NOTOPMOST,0,0,window_x,window_sy,SWP_NOMOVE);
      else
      SetWindowPos(SLS_hwnd,HWND_NOTOPMOST,0,0,getwinx(),window_sy,SWP_NOMOVE);
    }

    if(sbarx==0 && sbary==1)
    { /* Y軸のみスクロール・バーあり */
      if(getwiny()>window_y) /* Y軸が元より大きくなっている */
      SetWindowPos(SLS_hwnd,HWND_NOTOPMOST,0,0,window_sx,window_y,SWP_NOMOVE);
      else
      SetWindowPos(SLS_hwnd,HWND_NOTOPMOST,0,0,window_sx,getwiny(),SWP_NOMOVE);
    }

    if(sbarx==0 && sbary==0) /* X軸Y軸共スクロール・バーなし */
      SetWindowPos(SLS_hwnd,HWND_NOTOPMOST,0,0,window_x,window_y,SWP_NOMOVE);
    return 0; /* ☆ */

    case WM_HSCROLL: /* 水平スクロール要求 */
    {
    int x;
    int dx; /* 変化量x */

    switch(LOWORD(wParam)) /* スクロール内容（wParam下位ワード）*/
    {
      case SB_LINELEFT : /* 1単位左スクロール */
      case SB_LINERIGHT: /* 1単位右スクロール */
      cont_scroll++; /* 連続スクロール */
      if(cont_scroll<10)
      {
        dx=1;
      }
      else
      {
        dx=cont_scroll-8; /* 加速 */
        if(dx>maxrlx/10)dx=maxrlx/10;
      }
    } /* switch */

    switch(LOWORD(wParam)) /* スクロール内容（wParam下位ワード）*/
    {
      case SB_PAGELEFT :x=rollx-maxrlx/10;break; /* 1幅左スクロール */
      case SB_PAGERIGHT:x=rollx+maxrlx/10;break; /* 1幅右スクロール */
      case SB_LINELEFT :x=rollx-dx;break; /* 1単位左スクロール */
      case SB_LINERIGHT:x=rollx+dx;break; /* 1単位右スクロール */
      case SB_THUMBPOSITION:x=HIWORD(wParam);break; /* 絶対位置スクロール */
      default:return 0; /* ☆変化なし */
    } /* switch */

    if(x<0)x=0;else if(x>maxrlx)x=maxrlx;
    if(x==rollx)return 0; /* ☆変化なし */

    ScrollWindow(hwnd,rollx-x,0,NULL,NULL); /* 水平スクロール */
    SetScrollPos(hwnd,SB_HORZ,x,TRUE); /* 水平スクロールバー再描画 */
    rollx=x;
    }
    return 0; /* ☆ */

    case WM_VSCROLL: /* 垂直スクロール要求 */
    {
    int y;
    int dy; /* 変化量y */
    switch(LOWORD(wParam)) /* スクロール内容（wParam下位ワード）*/
    {
      case SB_LINEUP   : /* 1行上スクロール */
      case SB_LINEDOWN : /* 1行下スクロール */
      cont_scroll++; /* 連続スクロール */
      if(cont_scroll<10)
      {
        dy=1;
      }
      else
      {
        dy=cont_scroll-8; /* 加速 */
        if(dy>maxrly/10)dy=maxrly/10;
      }
    } /* switch */

    switch(LOWORD(wParam)) /* スクロール内容（wParam下位ワード）*/
    {
      case SB_PAGEUP   :y=rolly-maxrly/10;break; /* 1ページ上スクロール */
      case SB_PAGEDOWN :y=rolly+maxrly/10;break; /* 1ページ下スクロール */
      case SB_LINEUP   :y=rolly-dy;break; /* 1行上スクロール */
      case SB_LINEDOWN :y=rolly+dy;break; /* 1行下スクロール */
      case SB_THUMBPOSITION:y=HIWORD(wParam);break; /* 絶対位置スクロール */
      default:return 0; /* ☆変化なし */
    } /* switch */

    if(y<0)y=0;else if(y>maxrly)y=maxrly;
    if(y==rolly)return 0; /* ☆変化なし */

    ScrollWindow(hwnd,0,rolly-y,NULL,NULL); /* 垂直スクロール */
    SetScrollPos(hwnd,SB_VERT,y,TRUE); /* 垂直スクロールバー再描画 */
    rolly=y;
    }
    return 0; /* ☆ */

    case WM_NCHITTEST: /* マウスカーソル位置 */
    cont_scroll=0; /* 連続スクロール停止 */
    break; /* ☆ */

    case WM_CLOSE: /* ウィンドウ・クローズ要求 */
    if(gend_first==0)
    { /* gend関数呼出済 */
      DestroyWindow(hwnd); /* ウィンドウ破棄 */
      PostQuitMessage(0); /* 実行を終了 */
      return 0; /* ☆ */
    }
    exit(EXIT_SUCCESS); /* ☆ */
    /*
     *［解説］gend関数呼出以前のkeyread関数による「閉じるボタン」認識
     */

    case WM_GETMINMAXINFO: /* 最大最小時サイズ情報要求 */
    ((LPMINMAXINFO)lParam)->ptMaxSize.x=window_x;
    ((LPMINMAXINFO)lParam)->ptMaxSize.y=window_y;
    /*
     *［解説］これがないと画面いっぱいになってしまう。
     */
    return 0; /* ☆ */

    case WM_ERASEBKGND: /* ウィンドウ背景消去要求 */
    if(gend_first!=1 && getwinx()<=window_x && getwiny()<=window_y)
      return 0; /* ☆gend(0),gmemory(2)関数呼出後 */
    /*
     *［解説］gend,gmemory関数呼出前は必要な部分だけ消去される。
     */
    break; /* ☆ */

    case WM_CREATE: /* ウィンドウ生成 */
    rollx=rolly=0; /* スクロール位置原点 */
    maxrlx=maxrly=0; /* スクロール量ゼロ */
    sbarx=sbary=0; /* スクロールバー非表示 */
    cont_scroll=0; /* 連続スクロール停止 */
    break; /* ☆ */
  } /* switch */

  return DefWindowProc(hwnd,uMsg,wParam,lParam); /* ☆ */
} /* window_proc */


#undef hpaint /* 重複定義回避マクロ */
#undef hdc2
#undef window_x
#undef window_y
#undef window_sx
#undef window_sy
#undef gend_first


#endif /* SLS_gint */


/* scrn_int.f */
#ifndef SLS_screen_int /* 重複定義防止 */
#define SLS_screen_int /* 重複定義防止マクロ */


#include <stdlib.h>   /* atexit */
//#include "gint.f"     /* グラフィックス初期化関数 gint,gend */


void screen_int( /* 画面初期化関数  Screen INiTializing function */
int x, /* 画面Xサイズ(1～640～)[dot] Resolution-X */
int y, /* 画面Yサイズ(1～400～)[dot] Resolution-Y */
COLORREF back) //背景色 Windowsフルカラー色
{
  gint(x,y,back); /* グラフィックス初期化 */
  atexit(gend); /* グラフィックス終了関数自動呼出予約 */
} /* screen_int */


#endif /* SLS_screen_int */
