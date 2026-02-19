unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Clipbrd, ShellApi, FileCtrl;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel3: TPanel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    LtBF: TListBox;
    LtAF: TListBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton7: TSpeedButton;
    LtFiles: TListBox;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure LtFilesClick(Sender: TObject);
  private
    { Private 宣言 }
    g_saFileName: AnsiString;
    procedure ChangeRedComponentsToRandomColors;
  public
    { Public 宣言 }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// アプリケーション起動時にRandomizeを呼び出して乱数ジェネレータを初期化
procedure TForm1.FormCreate(Sender: TObject);
var
  sl, sll: TStringList;
  iw: Word;
begin
  Randomize;

  // ランダムな色に変更する関数を呼び出す
  ChangeRedComponentsToRandomColors;
  
  sl := TStringList.Create;
  sll := TStringList.Create;
  try
    sl.LoadFromFile(ExtractFilePath(Application.ExeName) + '変換.csv');
    for iw := 0 to Pred(sl.Count) do begin
      sll.CommaText := sl[iw];
      Memo1.Lines.Add(sll[0]);
      Memo2.Lines.Add(sll[1]);
    end;
  finally
    sl.Free;
    sll.Free;
  end;
end;

// ランダムな色を生成する関数
function GetRandomColor: TColor;
begin
  // RGB値をランダムに生成 (0-255の範囲)
  Result := RGB(Random(256), Random(256), Random(256));
end;

// 赤色のコンポーネントをランダムな色に変更する関数
procedure TForm1.ChangeRedComponentsToRandomColors;
begin
  // SpeedButton4 のフォント色をランダムな色に変更
  SpeedButton4.Font.Color := GetRandomColor;
  
  // SpeedButton6 のフォント色をランダムな色に変更
  SpeedButton6.Font.Color := GetRandomColor;
  
  // Label4 のフォント色をランダムな色に変更
  Label4.Font.Color := GetRandomColor;
  
  // Label5 のフォント色をランダムな色に変更
  Label5.Font.Color := GetRandomColor;
  
  // Label6 のフォント色をランダムな色に変更
  Label6.Font.Color := GetRandomColor;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  LtBF.Width := Panel1.Width div 2;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  iw1, iw2: Word;
  sa1, sa2: AnsiString;
begin
  ListBox1.Items.Clear;
  ListBox2.Items.Clear;

  for iw1 := 0 to Pred(LtBF.Items.Count) do begin
    sa1 := LtBF.Items[iw1];
    for iw2 := 0 to Pred(Memo1.Lines.Count) do begin
      sa2 := Memo1.Lines[iw2];
      if AnsiPos(sa2, sa1) <> 0 then begin
        ListBox1.Items.Add(sa1);
        ListBox2.Items.Add(IntToStr(iw1));
      end;
    end;
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  iw1, iw2: Word;
  sa1, sa2: AnsiString;
begin
  LtAF.Items.Clear;
  LtAF.Visible := False;
  Application.ProcessMessages;
  try
    for iw1 := 0 to Pred(LtBF.Items.Count) do begin
      sa1 := LtBF.Items[iw1];
      for iw2 := 0 to Pred(Memo1.Lines.Count) do begin
        sa2 := Memo1.Lines[iw2];
        if Pos(sa2, sa1) <> 0 then begin
          sa1 := StringReplace(sa1, sa2, Memo2.Lines[iw2], [rfReplaceAll]);
        end;
      end;
      LtAF.Items.Add(sa1);
    end;
  finally
    LtAF.Visible := True;
  end;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
var
  i : integer;
  S : string;
begin
  //クリップボードの内容がテキストだったら、
  if Clipboard.HasFormat(CF_TEXT) then begin
    //クリップボードのサイズ取得
    i := GlobalSize(Clipboard.GetAsHandle(CF_TEXT));
    SetLength(S, i);
    //クリップボードの内容取得
    Clipboard.GetTextBuf(PChar(S), i);
    SetLength(S, StrLen(PChar(S)));
    //メモに表示
    LtBF.Items.Text := S;
  end;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var
  i, iFileCount : integer;
  hDrop : THandle;
  szFile : array[0..MAX_PATH - 1] of Char;
begin
  if Clipboard.HasFormat(CF_HDROP) then begin
    hDrop := Clipboard.GetAsHandle(CF_HDROP);
    iFileCount := DragQueryFile(hDrop, $FFFFFFFF, szFile, MAX_PATH);
    //ShowMessage('ファイル数＝' + IntToStr(iFileCount));

    //for i := 0 to iFileCount - 1 do begin
      DragQueryFile(hDrop, 0, szFile, MAX_PATH);
      g_saFileName := szFile;
      LtBF.Items.LoadFromFile(g_saFileName);
    //end;
  end;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  LtBF.ItemIndex := StrToInt(ListBox2.Items[ListBox1.ItemIndex]);
  if LtAF.Items.Count > LtBF.ItemIndex then begin
    LtAF.ItemIndex := StrToInt(ListBox2.Items[ListBox1.ItemIndex]);
  end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  Clipboard.AsText := LtAF.Items.Text;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  LtAF.Items.SaveToFile(g_saFileName);
end;

//下層フォルダ以下すべてのファイルの検索
procedure pSearchFiles(var sl: TStringList; saFolder: AnsiString);
var
  iFound : integer;
  SearchRec : TSearchRec;
begin
  iFound := FindFirst(saFolder + '*.*', faAnyFile, SearchRec);
  while iFound = 0 do begin
    if FileExists(saFolder + SearchRec.Name) then
      sl.Add(saFolder + SearchRec.Name);

    //検索したファイルが下層フォルダならば下層フォルダへ
    if (faDirectory and SearchRec.Attr > 0) and (SearchRec.Name[1] <> '.') then
      pSearchFiles(sl, saFolder + SearchRec.Name + '¥');

    iFound := FindNext(SearchRec);
  end;
  FindClose(SearchRec);
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
var
  i, iFileCount : integer;
  hDrop : THandle;
  szFile : array[0..MAX_PATH - 1] of Char;
  saFolder: AnsiString;
  sl: TStringList;
begin
  if Clipboard.HasFormat(CF_HDROP) then begin
    LtFiles.Items.Clear;

    hDrop := Clipboard.GetAsHandle(CF_HDROP);
    iFileCount := DragQueryFile(hDrop, $FFFFFFFF, szFile, MAX_PATH);
    DragQueryFile(hDrop, 0, szFile, MAX_PATH);

    saFolder := szFile;
    if DirectoryExists(saFolder) then begin
      sl := TStringList.Create;
      try
        pSearchFiles(sl, saFolder + '¥');

        for i := 0 to Pred(sl.Count) do begin
          g_saFileName := sl[i];
          LtBF.Items.LoadFromFile(g_saFileName);
          if LtBF.Items.Count > 0 then begin
            SpeedButton2Click(SpeedButton2);

            if ListBox1.Items.Count > 0 then begin
              LtFiles.Items.Add(g_saFileName);
            end;
          end;
        end;
      finally
        sl.Free;
      end;
    end;

    g_saFileName := '';
  end;
end;

procedure TForm1.LtFilesClick(Sender: TObject);
begin
  g_saFileName := LtFiles.Items[LtFiles.ItemIndex];
  LtBF.Items.LoadFromFile(g_saFileName);
end;

(*
var
  iw: Word;
  sl: TStringList;
begin
  sl := TStringList.Create;
  try
    for iw := 0 to Pred(Memo1.Lines.Count) do begin
      sl.CommaText := Memo1.Lines[iw];
      if sl[0] <> sl[1] then Memo2.Lines.Add(Memo1.Lines[iw]);
    end;
  finally
    sl.Free;
  end;
end;
*)

end.
