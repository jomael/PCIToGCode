unit UPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs,
  Menus, ExtCtrls, ExtDlgs, StdCtrls, fpimage, ComCtrls, LCLIntf, LCLType, IntfGraphics, types, crt;

type

  { TFrmPrincipal }

  TFrmPrincipal = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    MemoTemp: TMemo;
    MenuItem1: TMenuItem;
    SMFresar: TMenuItem;
    SMNaoFresar: TMenuItem;
    SMContorno: TMenuItem;
    SMMapaFresagemsf: TMenuItem;
    SMGeraFresagemsf: TMenuItem;
    SMSalvaGCodeRecorte: TMenuItem;
    SMGeraRecorte: TMenuItem;
    PageControl1: TPageControl;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    ScrollBar3: TScrollBar;
    ScrollBar4: TScrollBar;
    SMTamanhoCalculado: TMenuItem;
    SMSalvaGCodeUnico: TMenuItem;
    SMBorda: TMenuItem;
    SMBordaInterna: TMenuItem;
    SMBordaExterna: TMenuItem;
    SMEixoZ: TMenuItem;
    SMVelocidade: TMenuItem;
    SMMapaFresagem: TMenuItem;
    SMGeraCoordenadas: TMenuItem;
    SMSalvaConfig: TMenuItem;
    SMVirgula: TMenuItem;
    SMPonto: TMenuItem;
    SMSepDecimal: TMenuItem;
    SMSalvaGCodeFuros: TMenuItem;
    ProgressBar1: TProgressBar;
    SaveDialog1: TSaveDialog;
    SMGeraFuracao: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    MainMenu1: TMainMenu;
    MImagem: TMenuItem;
    MGerber: TMenuItem;
    MAjuda: TMenuItem;
    MVetor: TMenuItem;
    SMSalvaOtimizada: TMenuItem;
    SMGeraFresagem: TMenuItem;
    SMManual: TMenuItem;
    SMSobre: TMenuItem;
    SMSalvaVetorizada: TMenuItem;
    SMVetorizar: TMenuItem;
    SMAbrir: TMenuItem;
    SMSalvaGCodeFresagem: TMenuItem;
    SMTamanho: TMenuItem;
    SMTamanhoPlaca: TMenuItem;
    SMOtimizar: TMenuItem;
    SMTamanhoOtimizado: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;

    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image3MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Image3MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Image5Click(Sender: TObject);
    procedure Image5MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image5MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Image5MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SMFresarClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure ScrollBar4Change(Sender: TObject);
    procedure SMGeraFresagemsfClick(Sender: TObject);
    procedure SMGeraRecorteClick(Sender: TObject);
    procedure SMMapaFresagemsfClick(Sender: TObject);
    procedure SMNaoFresarClick(Sender: TObject);
    procedure SMSalvaGCodeRecorteClick(Sender: TObject);
    procedure SMSalvaGCodeUnicoClick(Sender: TObject);
    procedure SMBordaExternaClick(Sender: TObject);
    procedure SMBordaInternaClick(Sender: TObject);
    procedure SMPontoClick(Sender: TObject);
    procedure SMSalvaConfigClick(Sender: TObject);
    procedure SMSalvaGCodeFurosClick(Sender: TObject);
    procedure SMGeraFuracaoClick(Sender: TObject);
    procedure SMManualClick(Sender: TObject);
    procedure SMTamanhoCalculadoClick(Sender: TObject);
    procedure SMTamanhoOtimizadoClick(Sender: TObject);
    procedure SMGeraFresagemClick(Sender: TObject);
    procedure SMEixoZClick(Sender: TObject);
    procedure SMSalvaOtimizadaClick(Sender: TObject);
    procedure SMGeraCoordenadasClick(Sender: TObject);
    procedure SMAbrirClick(Sender: TObject);
    procedure SMSalvaGCodeFresagemClick(Sender: TObject);
    procedure SMTamanhoClick(Sender: TObject);
    procedure SMSalvaVetorizadaClick(Sender: TObject);
    procedure SMTamanhoPlacaClick(Sender: TObject);
    procedure SMOtimizarClick(Sender: TObject);
    procedure SMMapaFresagemClick(Sender: TObject);
    procedure SMSobreClick(Sender: TObject);
    procedure SMVelocidadeClick(Sender: TObject);
    procedure SMVetorizarClick(Sender: TObject);
    procedure SMVirgulaClick(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;
  // Variaveis Globais
  Imagem: string;  // Nome do arquivo a ser convertido
  PlacaX: string;  // Tamanho da placa em X
  PlacaY: string;  // Tamanho da placa em Y
  tpox: integer;   // Tamanho da TabSheet1 original em X em Pixels
  tpx: integer;    // Tamanho da TabSheet1 em X em Pixels
  tx: real;        // Numero de pixels por mm
  tpoy: integer;   // Tamanho da TabSheet1 original em Y em Pixels
  tpy: integer;    // Tamanho da TabSheet1 em Y em Pixels
  ty: real;        // Numero de pixels por mm
  Zp: real;        // Posi��o do eixo Z posicionando
  Zf: real;        // Posi��o do eixo Z fresando
  ZR: real;        // Profundidade do recorte
  ZRP: integer;    // N�mero de passses para o recorte
  ZRA: real;       // Profundidade do avan�o recortando.
  ZPF: real;       // Profundidade dos furos
  ZVS: integer;    // Velocidade do Spindle
  VRXY: Integer;   // Velocidade de Recorte eixo Z
  VFZ: integer;    // Velocidade de Fresagem eixo Z
  VFXY: integer;   // Velocidade de Fresagem eixo X e Y
  vetori: boolean; // Vetorisado sim ou n�o?
  OFator: integer; // Fator de otimiza��o
  ContaLinha: integer;
  Pixel_COR: array[0..10000, 0..10000] of integer; // Array com o valor da cor dos pixels da TabSheet1
  Pixel_IN: array[0..10000, 0..10000] of char; // Array com o valor dos pixels da TabSheet1
  Pixel_OUT: array[0..10000, 0..10000] of char; // Array com o valor dos pixels da TabSheet1
  b: TBitmap;
  pxi: Integer;   // Posi��o do Mouse em X na TabSheet1
  pyi: Integer;   // Posi��o do Mouse em Y na TabSheet1
  pcxi: Integer;  // Posi��o do clique do Mouse em X na TabSheet1
  pcyi: Integer;  // Posi��o do clique do Mouse em Y na TabSheet1
  ppx: Integer;   // Posi��o em Pixel em X na TabSheet1
  ppy: Integer;   // Posi��o em Pixel em Y na TabSheet1

  resourcestring
   Texto01 = 'Tamanho original da imagem';
   Texto02 = 'Tamanho otimizado da imagem';
   Texto03 = ' Pontos por mm';
   Texto04 = 'Tamanho de Imagem muito grande! Tente reduzir o tamanho.';
   Texto05 = 'Favor especificar o tamanho da placa antes!';
   Texto06 = '( Arquivo de Furos da PCI )';
   Texto07 = '( Gerado pelo programa PCIToGCode )';
   Texto08 = '( Arquivo Convertido: ';
   Texto09 = '( Tamanho da placa: X = ';
   Texto10 = '( Boa fura��o! )';
   Texto11 = '( Arquivo de Fresagem da PCI )';
   Texto13 = '( Boa Fresagem! )';
   Texto14 = 'Furo excluido!';
   Texto15 = 'Furo inexistente!';
   Texto16 = 'Furo adicionado!';
   Texto17 = '( Arquivo de Recorte da PCI )';
   Texto18 = '( Bom Recorte! )';

implementation

{ TFrmPrincipal }

uses
  UOtimizar, UMedidas, UCMedidas, UZinfo, USobre, UVelocidade, UFuros;



function VirgPonto(valor: string): string;
var
  i: integer;
begin
  // Substituir virgula por ponto e ponto por virgula
  if valor <> '' then
  begin
    for i := 0 to length(valor) do
    begin
      if valor[i] = '.' then
      begin
        valor[i] := ',';
      end
      else
      if valor[i] = ',' then
      begin
        valor[i] := '.';
      end;
    end;
  end;
  Result := valor;
end;


procedure CarregaCorPixel();
var
  SrcIntfImg: TLazIntfImage;
  x: integer;
  y: integer;
begin
  // Carrega as cores de cada pixel para o Array Pixel_Cor[x,y]
  tpox := FrmPrincipal.Image1.Picture.Bitmap.Width - 1;
  tpoy := FrmPrincipal.Image1.Picture.Bitmap.Height - 1;
  FrmPrincipal.ProgressBar1.Min := 0;
  FrmPrincipal.ProgressBar1.Max := tpox;
  FrmPrincipal.ProgressBar1.Step := 1;
  SrcIntfImg := TLazIntfImage.Create(0, 0);
  SrcIntfImg.LoadFromBitmap(FrmPrincipal.Image1.Picture.Bitmap.Handle,
  FrmPrincipal.Image1.Picture.Bitmap.MaskHandle);
  // Percorre toda a TabSheet1 carregando a cor de cada pixel
  for x := 0 to tpox do
  begin
    Application.ProcessMessages;
    FrmPrincipal.ProgressBar1.Position := x;
    for y := 0 to tpoy do
    begin
      Pixel_COR[x, y] := $FFFFFF;
      Pixel_COR[x, y] := SrcIntfImg.TColors[x, y];
    end;
  end;
  FrmPrincipal.ProgressBar1.Position := 0;
  SrcIntfImg.Free;
end;

procedure Vetorisar();
var

  v: boolean;
  p1: boolean;
  p2: boolean;
  p3: boolean;
  p4: boolean;
  p5: boolean;
  p6: boolean;
  p7: boolean;
  p8: boolean;
  x: integer;
  y: integer;
  f: integer;
begin
  // Faz o rastreamento das bordas da TabSheet1.
  FrmPrincipal.PageControl1.PageIndex := 2;
  FrmPrincipal.ProgressBar1.Min := 0;
  FrmPrincipal.ProgressBar1.Max := tpx;
  FrmPrincipal.ProgressBar1.Step := 1;
  FrmPrincipal.image2.Hide;
  FrmPrincipal.image3.Hide;
  FrmPrincipal.Image3.Picture.Bitmap.Clear;
  for y := 0 to 10000 do
   begin
    for x := 0 to 10000 do
      begin
       pixel_OUT[x, y] := ' ';
      end;
   end;
  f := 0;
  for x := 0 to tpx do
  begin
    FrmPrincipal.ProgressBar1.Position := x;
    if (f > 20) then
    begin
      Application.ProcessMessages;
      f := 0;
    end;
    f := f + 1;
    for y := 0 to tpy do
    begin
      v := False;
      p1 := False;
      p2 := False;
      p3 := False;
      p4 := False;
      p5 := False;
      p6 := False;
      p7 := False;
      p8 := False;
      // Capturar a borda interior
      if (pixel_IN[x, y] = 'P') then
      begin
        if (pixel_IN[(x + 1), y] = 'P') then
          p1 := True;
        if (pixel_IN[(x - 1), y] = 'P') then
          p2 := True;
        if (pixel_IN[x, (y + 1)] = 'P') then
          p3 := True;
        if (pixel_IN[x, (y - 1)] = 'P') then
          p4 := True;
        if (pixel_IN[(x + 1), (y + 1)] = 'P') then
          p5 := True;
        if (pixel_IN[(x - 1), (y - 1)] = 'P') then
          p6 := True;
        if (pixel_IN[(x - 1), (y + 1)] = 'P') then
          p7 := True;
        if (pixel_IN[(x + 1), (y - 1)] = 'P') then
          p8 := True;
        if (p1 and p2 and p3 and p4 and p5 and p6 and p7 and p8) then
          v := True;
        //if (p1 and p2 and p3 and p4) then v := true;
        //v := true;
        //if (p1 or p2 or p3 or p4 or p5 or p6 or p7 or p8) then v := false;
        if not v then
        begin
          If FrmPrincipal.SMBordaInterna.Checked then pixel_OUT[x, y] := 'V'
          else pixel_OUT[x, y] := 'A'
        end
        else
          pixel_OUT[x, y] := 'B';
      end
      else
      // Capturar a borda exterior
      if (pixel_IN[x, y] = 'B') then
      begin
        if (pixel_IN[(x + 1), y] = 'B') then
          p1 := True;
        if (pixel_IN[(x - 1), y] = 'B') then
          p2 := True;
        if (pixel_IN[x, (y + 1)] = 'B') then
          p3 := True;
        if (pixel_IN[x, (y - 1)] = 'B') then
          p4 := True;
        if (pixel_IN[(x + 1), (y + 1)] = 'B') then
          p5 := True;
        if (pixel_IN[(x - 1), (y - 1)] = 'B') then
          p6 := True;
        if (pixel_IN[(x - 1), (y + 1)] = 'B') then
          p7 := True;
        if (pixel_IN[(x + 1), (y - 1)] = 'B') then
          p8 := True;
        if (p1 and p2 and p3 and p4 and p5 and p6 and p7 and p8) then
          v := True;
        //if (p1 and p2 and p3 and p4) then v := true;
        //if (p1 or p2 or p3 or p4 or p5 or p6 or p7 or p8) then v := false;
        if not v then
        begin
          If FrmPrincipal.SMBordaInterna.Checked then pixel_OUT[x, y] := 'A'
          else pixel_OUT[x, y] := 'V'
        end
        else
          pixel_OUT[x, y] := 'B';
      end
      else
        pixel_OUT[x, y] := 'B';
    end;
  end;
  if ((x > 0) and (y > 0)) then
    vetori := True;
  // Carrega TabSheet1 Vetorisada
  FrmPrincipal.ProgressBar1.Position := 0;
  FrmPrincipal.Image3.Picture.Bitmap.Canvas.Pen.Color := $FFFFFF;
  FrmPrincipal.Image3.Picture.Bitmap.Canvas.Clear;
  FrmPrincipal.image3.Picture.Bitmap.Width := tpx + 1;
  FrmPrincipal.image3.Picture.Bitmap.Height := tpy + 1;
  FrmPrincipal.image3.Width := tpx + 1;
  FrmPrincipal.image3.Height := tpy + 1;
  for x := 0 to tpx + 1 do
  begin
    FrmPrincipal.ProgressBar1.Position := x;
    if (f > 20) then
    begin
      Application.ProcessMessages;
      f := 0;
    end;
    f := f + 1;
    for y := 0 to tpy + 1 do
    begin
      if pixel_OUT[x, y] = 'A' then
      begin
        FrmPrincipal.image3.Canvas.Pixels[x, y] := $FFFFFF;
      end
      else
      begin
        if pixel_OUT[x, y] = 'V' then
        begin
          FrmPrincipal.image3.Canvas.Pixels[x, y] := $0006B0;
        end
        else
        begin
          FrmPrincipal.image3.Canvas.Pixels[x, y] := $FFFFFF;
        end;
      end;
    end;
  end;
  FrmPrincipal.image2.Show;
  FrmPrincipal.image3.Show;
  FrmPrincipal.ProgressBar1.Position := 0;
  FrmPrincipal.SMGeraCoordenadas.Enabled := True;
  FrmPrincipal.SMSalvaVetorizada.Enabled := True;
  FrmPrincipal.SMVetorizar.Enabled := False;
end;

procedure GeraCoordenadas();
var
  N: integer;
  x: integer;
  xa: integer;
  xb: integer;
  xc: integer;
  y: integer;
  ya: integer;
  yb: integer;
  yc: integer;
  Q: integer;
  QA: integer;
  RConta: Integer;
  raster: boolean;
  reta:  boolean;
  linha: array[0..90000] of string;
  arquivo: textfile;
begin
  FrmPrincipal.PageControl1.PageIndex := 3;
  FrmPrincipal.memo1.Clear;
  FrmPrincipal.memo1.Hide;
  FrmPrincipal.image3.Hide;
  FrmPrincipal.ProgressBar1.Min := 0;
  FrmPrincipal.ProgressBar1.Max := tpx;
  FrmPrincipal.ProgressBar1.Step := 1;
  ContaLinha := 1;
  xa := 0;
  ya := 0;
  Q := 0;
  QA := 0;
  N := 0;
  linha[ContaLinha] := 'Z = 3';
  ContaLinha := ContaLinha + 1;
  // Faz o rastreamento do bitmap pixel a pixel gerando as cooredenadas.
  for x := 0 to tpx do
  begin
    N := N + 1;
    If N > 20 then
    begin
    FrmPrincipal.ProgressBar1.Position := x;
    Application.ProcessMessages;
    N := 0;
    end;
    for y := 0 to tpy do
    begin
      if (Pixel_Out[x, y] = 'V') then
      begin
        xb := x;
        yb := y;
        xc := x;
        yc := y;
        // Ponto inicial do rastreamento.
        Pixel_Out[x, y] := 'R';
        // Grava o ponto inicial da fresagem
        linha[ContaLinha] := 'X = ' + IntToStr(x) + ' | Y = ' + IntToStr(tpy - y);
        ContaLinha := ContaLinha + 1;
        linha[ContaLinha] := 'Z = -1'; // + floattostr(ZF);
        ContaLinha := ContaLinha + 1;
        Q := 0;
        QA := 0;
        RConta := 0;
        raster := True;
        // Detec��o dos seguimentos continuos.
        while raster do
        begin
          raster := False;
          reta := false;

          // 1� Detecta se o pr�ximo pixel em x � a continua��o do seguimento.
          if ((Pixel_Out[xb + 1, yb] = 'V') and (raster = false)) then
          begin
            xc := xb;
            yc := yb;
            // Enquanto for verdadeiro incrementa o x
            while  (Pixel_Out[xb + 1, yb] = 'V') do
            begin
             xb := xb + 1;
             Pixel_Out[xb, yb] := 'R';
            end;
            raster := True;
            Q := 1;
            QA := 0;
            RConta := 0;
          end;

          // 2� Detecta se o pr�ximo pixel em y � a continua��o do seguimento.
          if ((Pixel_Out[xb, yb + 1] = 'V') and (raster = false)) then
          begin
            xc := xb;
            yc := yb;
            // Enquanto for verdadeiro incrementa o y
            while (Pixel_Out[xb, yb + 1] = 'V') do
            begin
             yb := yb + 1;
             Pixel_Out[xb, yb] := 'R';
            end;
            raster := True;
            Q := 2;
            QA := 0;
            RConta := 0;
          end;

          // 3� Detecta se o pixel anterior em x � a continua��o do seguimento.
          if ((Pixel_Out[xb - 1, yb] = 'V') and (raster = false)) then
          begin
            xc := xb;
            yc := yb;
            // Enquanto for verdadeiro decrementa o x
            while (Pixel_Out[xb - 1, yb] = 'V') do
            begin
             xb := xb - 1;
             Pixel_Out[xb, yb] := 'R';
            end;
            raster := True;
            Q := 3;
            QA := 0;
            RConta := 0;
          end;

          // 4� Detecta se o pixel anterior em y � a continua��o do seguimento.
          if ((Pixel_Out[xb, yb - 1] = 'V')) then
          begin
            xc := xb;
            yc := yb;
            // Enquanto for verdadeiro decrementa o y
            While (Pixel_Out[xb, yb - 1] = 'V') do
            begin
             yb := yb - 1;
             Pixel_Out[xb, yb] := 'R';
            end;
            raster := True;
            Q := 4;
            QA := 0;
            RConta := 0;
          end;

          // 5� Detecta se o pr�ximo pixel em x e y s�o a continua��o do seguimento.
          if ((Pixel_Out[xb + 1, yb + 1] = 'V') and (raster = false)) then
          begin
            xc := xb;
            yc := yb;
            xb := xb + 1;
            yb := yb + 1;
            Pixel_Out[xb, yb] := 'R';
            raster := True;
            Q := 5;
            RConta := 0;
          end;

          // 6� Detecta se o pr�ximo pixel em y e o anterior em x s�o a continua��o do seguimento.
          if ((Pixel_Out[xb - 1, yb + 1] = 'V') and (raster = false)) then
          begin
            xc := xb;
            yc := yb;
            xb := xb - 1;
            yb := yb + 1;
            Pixel_Out[xb, yb] := 'R';
            raster := True;
            Q := 6;
            RConta := 0;
          end;

          // 7� Detecta se o pixel anterior em x e y s�o a continua��o do seguimento.
          if ((Pixel_Out[xb - 1, yb - 1] = 'V') and (raster = false)) then
          begin
            xc := xb;
            yc := yb;
            xb := xb - 1;
            yb := yb - 1;
            Pixel_Out[xb, yb] := 'R';
            raster := True;
            Q := 7;
            RConta := 0;
          end;

          // 8� Detecta se o pr�ximo pixel em x e o anterior em y s�o a continua��o do seguimento.
          if ((Pixel_Out[xb + 1, yb - 1] = 'V') and (raster = false)) then
          begin
            xc := xb;
            yc := yb;
            xb := xb + 1;
            yb := yb - 1;
            Pixel_Out[xb, yb] := 'R';
            raster := True;
            Q := 8;
            RConta := 0;
          end;

          // ++++++++++++++++ Procura por bordas j� marcadas +++++++++++++++++

          // 1� Detecta se o pr�ximo pixel em x � a continua��o do seguimento.
          if (((Pixel_Out[xb + 1, yb] = 'R') and (raster = false) and (Q <> 3) and (QA <> 0))) then
          begin
            xc := xb;
            yc := yb;
            xb := xb + 1;
            raster := True;
            Q := 1;
            RConta := RConta + 1;
          end;

          // 2� Detecta se o pr�ximo pixel em y � a continua��o do seguimento.
          if (((Pixel_Out[xb, yb + 1] = 'R') and (raster = false) and (Q <> 4) and (QA <> 0))) then
          begin
            xc := xb;
            yc := yb;
            yb := yb + 1;
            raster := True;
            Q := 2;
            RConta := RConta + 1;
          end;

          // 3� Detecta se o pixel anterior em x � a continua��o do seguimento.
          if (((Pixel_Out[xb - 1, yb] = 'R') and (raster = false) and (Q <> 1) and (QA <> 0))) then
          begin
            xc := xb;
            yc := yb;
            xb := xb - 1;
            raster := True;
            Q := 3;
            RConta := RConta + 1;
          end;

          // 4� Detecta se o pixel anterior em y � a continua��o do seguimento.
          if (((Pixel_Out[xb, yb - 1] = 'R') and (raster = false) and (Q <> 2) and (QA <> 0))) then
          begin
            xc := xb;
            yc := yb;
            yb := yb - 1;
            raster := True;
            Q := 4;
            RConta := RConta + 1;
          end;

          // 5� Detecta se o pr�ximo pixel em x e y s�o a continua��o do seguimento.
          if (((Pixel_Out[xb + 1, yb + 1] = 'R') and (raster = false) and (Q <> 7) and (QA <> 0))) then
          begin
            xc := xb;
            yc := yb;
            xb := xb + 1;
            yb := yb + 1;
            raster := True;
            Q := 5;
            RConta := RConta + 1;
          end;

          // 6� Detecta se o pr�ximo pixel em y e o anterior em x s�o a continua��o do seguimento.
          if (((Pixel_Out[xb - 1, yb + 1] = 'R') and (raster = false) and (Q <> 8) and (QA <> 0))) then
          begin
            xc := xb;
            yc := yb;
            xb := xb - 1;
            yb := yb + 1;
            raster := True;
            Q := 6;
            RConta := RConta + 1;
          end;

          // 7� Detecta se o pixel anterior em x e y s�o a continua��o do seguimento.
          if (((Pixel_Out[xb - 1, yb - 1] = 'R') and (raster = false) and (Q <> 5) and (QA <> 0))) then
          begin
            xc := xb;
            yc := yb;
            xb := xb - 1;
            yb := yb - 1;
            raster := True;
            Q := 7;
            RConta := RConta + 1;
          end;

          // 8� Detecta se o pr�ximo pixel em x e o anterior em y s�o a continua��o do seguimento.
          if (((Pixel_Out[xb + 1, yb - 1] = 'R') and (raster = false) and (Q <> 6) and (QA <> 0))) then
          begin
            xc := xb;
            yc := yb;
            xb := xb + 1;
            yb := yb - 1;
            raster := True;
            Q := 8;
            RConta := RConta + 1;
          end;

          // Detecta se � uma reta
          if (((Q = QA) and (Q <> 0) and (Q < 4) and (Raster = true))) then
          Begin
           reta := True;
          end;
          // Guarda a dire��o atual da reta
          QA := Q;
          // Detecta in�cio de trexo j� marcado
          if (Rconta = 1) then
          begin
           reta := false;
          end;
          // Se passou por N pixels j� marcados aborta
          if (RConta > 10) then
          Begin
            raster := false;
            reta := false;
            Rconta := 0;
          end;

          // Detecta se finalizou o trecho de rastreamento ou se chegou ao final de uma reta
          if ((raster = False) or (reta = false)) then
          begin
           linha[ContaLinha] := 'X = ' + IntToStr(xc) + ' | Y = ' + IntToStr(tpy - yc);
           ContaLinha := ContaLinha + 1;
           linha[ContaLinha] := 'X = ' + IntToStr(xb) + ' | Y = ' + IntToStr(tpy - yb);
           ContaLinha := ContaLinha + 1;
           reta := true;
          end;
        end;
        linha[ContaLinha] := 'Z = 3'; // + floattostr(ZP);
        ContaLinha := ContaLinha + 1;
      end;
    end;
  end;
  linha[ContaLinha] := 'X = 0 | Y = 0';
  assignfile(arquivo, 'XYZCord.txt');
  if not FileExists('XYZCord.txt') then
    Rewrite(arquivo)
  else
    erase(arquivo);
  rewrite(arquivo);
  FrmPrincipal.ProgressBar1.Position := 0;
  FrmPrincipal.ProgressBar1.Min := 0;
  FrmPrincipal.ProgressBar1.Max := ContaLinha;
  FrmPrincipal.ProgressBar1.Step := 1;
  for x := 1 to ContaLinha do
  begin
    if ((x > 2) and (x < contalinha - 2)) then
    begin
      if ((copy(linha[x - 1], 1, 1) = 'X') and (copy(linha[x], 1, 1) = 'X') and  (copy(linha[x + 1], 1, 1) = 'X')) then
      begin
        xa := StrToInt((copy(linha[x - 1], 5, pos('|', linha[x - 1]) - 6)));
        ya := StrToInt((copy(linha[x - 1], pos('|', linha[x - 1]) + 5, length(linha[x - 1]) - (pos('|', linha[x - 1]) + 4))));
        xb := StrToInt((copy(linha[x], 5, pos('|', linha[x]) - 6)));
        yb := StrToInt((copy(linha[x], pos('|', linha[x]) + 5, length(linha[x]) - (pos('|', linha[x]) + 4))));
        xc := StrToInt((copy(linha[x + 1], 5, pos('|', linha[x + 1]) - 6)));
        yc := StrToInt((copy(linha[x + 1], pos('|', linha[x + 1]) + 5, length(linha[x + 1]) - (pos('|', linha[x + 1]) + 4))));
        // Se o valor de X ou Y for igual ao anterior e ao posterior tamb�m caracteriza uma reta
        // if (((xa = xb) and (xb = xc)) or ((ya = yb) and (yb = yc) and false)) then
        if ((xa = xb) and (ya = yb)) then
        begin
          Application.ProcessMessages;
        end
        else
        begin
          writeln(arquivo, linha[x]);
          FrmPrincipal.ProgressBar1.Position := x;
          Application.ProcessMessages;
        end;
      end
      else
      begin
        writeln(arquivo, linha[x]);
        FrmPrincipal.ProgressBar1.Position := x;
        Application.ProcessMessages;
      end;
    end
    else
    begin
      writeln(arquivo, linha[x]);
      FrmPrincipal.ProgressBar1.Position := x;
      Application.ProcessMessages;
    end;
  end;
  closefile(arquivo);
  FrmPrincipal.memo1.Lines.LoadFromFile('XYZCord.txt');
  FrmPrincipal.image3.Show;
  FrmPrincipal.memo1.Show;
  FrmPrincipal.ProgressBar1.Position := 0;
  FrmPrincipal.SMMapaFresagem.Enabled := True;
  FrmPrincipal.SMGeraCoordenadas.Enabled := False;
  FrmPrincipal.SMTamanhoPlaca.Enabled := True;
  FrmPrincipal.SMTamanhoCalculado.Enabled := True;
end;

procedure CarregaConfig();
var
   arquivo: textfile;
   linha: string;
begin
                // Dados a serem lidos do arquivo INI:
  ZF   := 0.30; // Profundidade do eixo Z frezando
  ZP   := 3.00; // Altura do eixo Z posicionando
  ZPF  := 2.50; // Profundidade do eixo Z furando
  ZR   := 2.30; // Profundidade do recorte
  ZRP  := 2;    // N�mero de passes para recorte
  VFXY := 150;  // Velocidade dos eixos X e Y fresando
  VFZ  := 60;   // Velocidade do eixo Z furando
  VRXY := 40;   // Velocidade dos eixos X e Y recortando
  ZRA  := ZR / ZRP;  // Deslocamento do eixo Z a cada passe.
  if FileExists('config.ini') then
  Begin
  try
  assignfile(arquivo, 'config.ini');
  reset(arquivo);
  while (not EOF(arquivo)) do
   begin
    readln(arquivo, linha);
    If copy(linha, 0, 4) = 'ZF  ' then
     ZF := StrToFloat(copy(linha, 7, length(linha) - 6));
    If copy(linha, 0, 4) = 'ZP  ' then
     ZP := StrToFloat(copy(linha, 7, length(linha) - 6));
    If copy(linha, 0, 4) = 'ZPF ' then
     ZPF := StrToFloat(copy(linha, 7, length(linha) - 6));
    If copy(linha, 0, 4) = 'ZR  ' then
     ZR := StrToFloat(copy(linha, 7, length(linha) - 6));
    If copy(linha, 0, 4) = 'ZRP ' then
     ZRP := StrToInt(copy(linha, 7, length(linha) - 6));
    If copy(linha, 0, 4) = 'VFXY' then
     VFXY := StrToInt(copy(linha, 7, length(linha) - 6));
    If copy(linha, 0, 4) = 'VFZ ' then
     VFZ := StrToInt(copy(linha, 7, length(linha) - 6));
    If copy(linha, 0, 4) = 'VRXY' then
     VRXY := StrToInt(copy(linha, 7, length(linha) - 6));
    If copy(linha, 0, 4) = 'ZVS ' then
     ZVS := StrToInt(copy(linha, 7, length(linha) - 6));
   end;
   closefile(arquivo);
   ZRA := ZR / ZRP;
  except
    on E: Exception do
    begin
     ShowMessage('Erro config.ini => ' + E.message);
     closefile(arquivo);
    end;
  end;
  end
  else
   //ShowMessage('Arquivo "config.ini" inexistente! Personalize suas configura��es e crie um arquivo "ini" no menu: "CNC => Salvar configura��es"');
end;

procedure GravaConfig();
var
   arquivo: textfile;
   linha: string;
begin
  try
  assignfile(arquivo, 'config.ini');
  if not FileExists('config.ini') then
    Rewrite(arquivo)
  else
  begin
   erase(arquivo);
   rewrite(arquivo);
  end;
  linha :=  'ZF   = ' +   FloatToStr(ZF);
  writeln(arquivo, linha);
  linha :=  'ZP   = ' +   FloatToStr(ZP);
  writeln(arquivo, linha);
  linha :=  'ZPF  = ' +   FloatToStr(ZPF);
  writeln(arquivo, linha);
  linha :=  'ZR   = ' +   FloatToStr(ZR);
  writeln(arquivo, linha);
  linha :=  'ZRP  = ' +   FloatToStr(ZRP);
  writeln(arquivo, linha);
  linha :=  'VFXY = ' +   IntToStr(VFXY);
  writeln(arquivo, linha);
  linha :=  'VFZ  = ' +   IntToStr(VFZ);
  writeln(arquivo, linha);
  linha :=  'VRXY = ' +   IntToStr(VRXY);
  writeln(arquivo, linha);
  linha :=  'ZVS  = ' +   IntToStr(ZVS);
  writeln(arquivo, linha);
  finally
    closefile(arquivo);
  end;
end;

procedure GeraGCode(Arqv: string);
var
  p: integer;
  x: real;
  y: real;
  z: real;
  n: integer;
  l: integer;
  f: string;
  arquivo: textfile;
  linha: string;
  GLinha: array[0..90000] of string;
  LinhaContada: integer;
  StepBar: integer;
  Foi : bool;
begin
 x := 0;
 y := 0;
 z := 0;
 l := 0;
 Foi := false;
 LinhaContada := 1;
 FrmPrincipal.PageControl1.PageIndex := 4;
 // Monta o Cabe�alho do arquivo GCode
 FrmPrincipal.memo2.Hide;
 FrmPrincipal.ProgressBar1.Min := 0;
 FrmPrincipal.ProgressBar1.Max := Trunc(ContaLinha / 100);
 FrmPrincipal.ProgressBar1.Position := 0;
 FrmPrincipal.ProgressBar1.Step := 1;
 StepBar := 0;
 FrmPrincipal.memo2.Clear;
 GLinha[LinhaContada] := Texto11;
 LinhaContada := LinhaContada + 1;
 GLinha[LinhaContada] := Texto07;
 LinhaContada := LinhaContada + 1;
 GLinha[LinhaContada] := Texto08 +  Imagem + ' )';
 LinhaContada := LinhaContada + 1;
 GLinha[LinhaContada] := Texto09 + PlacaX + ' Cm    Y = ' + PlacaY + ' Cm )';
 LinhaContada := LinhaContada + 1;
 GLinha[LinhaContada] := Texto13;
 LinhaContada := LinhaContada + 1;
 GLinha[LinhaContada] := 'G90';
 LinhaContada := LinhaContada + 1;
 GLinha[LinhaContada] := 'G21';
 LinhaContada := LinhaContada + 1;
 GLinha[LinhaContada] := 'M08';
 LinhaContada := LinhaContada + 1;
 GLinha[LinhaContada] := 'M03 S' + IntToStr(ZVS);
 LinhaContada := LinhaContada + 1;
 GLinha[LinhaContada] := 'M07';
 LinhaContada := LinhaContada + 1;
 if FileExists(Arqv) then
 begin
   // Faz a leitura linha a linha do arquivo XYZCord.txt que contem as coordenadas
   // em pixel e trasforma para mm baseado na resolu��o calculada.
   assignfile(arquivo, Arqv);
   reset(arquivo);
   while (not EOF(arquivo)) do
   begin
     readln(arquivo, linha);
     StepBar := StepBar + 1;
     if (StepBar > 20) then
     begin
       FrmPrincipal.ProgressBar1.Position := Trunc(LinhaContada / 100);
       StepBar := 0;
       Application.ProcessMessages;
     end;
     if (copy(linha, 1, 1) = 'Z') then
     begin
       z := strtofloat((copy(linha, 5, length(linha) - 4)));
       if (z > 0) then
       begin
         z :=  ZP;
         Glinha[LinhaContada] := 'N' + IntToStr(l) + ' G00 X' + copy(floattostr(x / tx),0, 4 + pos(',', floattostr(x / tx))) + ' Y' +  copy(floattostr(y / ty), 0, 3 + pos(',', floattostr(y / ty))) + ' Z' + floattostr(z);
         if FrmPrincipal.SMPonto.Checked then
         begin
           GLinha[LinhaContada] := VirgPonto(Glinha[LinhaContada]);
         end;
         LinhaContada := LinhaContada + 1;
       end
       else
       begin
         z :=  -ZF;
         f := ' F' + IntToStr(VFZ);
         Glinha[LinhaContada] := 'N' + IntToStr(l) + ' G01 X' + copy(floattostr(x / tx),0, 4 + pos(',', floattostr(x / tx))) + ' Y' + copy(floattostr(y / ty), 0, 3 + pos(',', floattostr(y / ty))) + ' Z' + floattostr(z) + f;
         if FrmPrincipal.SMPonto.Checked then
         begin
           GLinha[LinhaContada] := VirgPonto(Glinha[LinhaContada]);
         end;
         LinhaContada := LinhaContada + 1;
       end;
     end;
     if (copy(linha, 1, 1) = 'X') then
     begin
       if (z < 0) then
       begin
         f := ' F' + IntToStr(VFXY);
         p := pos('|', linha);
         x := StrToInt((copy(linha, 5, p - 6)));
         y := StrToInt((copy(linha, p + 5, length(linha) - (p + 4))));
         GLinha[LinhaContada] := 'N' + IntToStr(l) + ' G01 X' + copy(floattostr(x / tx), 0, 4 + pos(',', floattostr(x / tx))) + ' Y' + copy(floattostr(y / ty), 0, 3 + pos(',', floattostr(y / ty))) + ' Z' + floattostr(z) + f;
         if FrmPrincipal.SMPonto.Checked then
         begin
           GLinha[LinhaContada] := VirgPonto(Glinha[LinhaContada]);
         end;
         LinhaContada := LinhaContada + 1;
       end
       else
       begin
         p := pos('|', linha);
         x := StrToInt((copy(linha, 5, p - 6)));
         y := StrToInt((copy(linha, p + 5, length(linha) - (p + 4))));
         GLinha[LinhaContada] := 'N' + IntToStr(l) + ' G00 X' + copy(floattostr(x / tx), 0, 4 + pos(',', floattostr(x / tx))) + ' Y' + copy(floattostr(y / ty), 0, 3 + pos(',', floattostr(y / ty))) + ' Z' + floattostr(z);
         if FrmPrincipal.SMPonto.Checked then
         begin
           GLinha[LinhaContada] := VirgPonto(Glinha[LinhaContada]);
         end;
         LinhaContada := LinhaContada + 1;
       end;
     end;
     if  ((FrmPrincipal.SMNaoFresar.Checked) and (LinhaContada = 24) and (not Foi)) then
     begin
       LinhaContada := 12;
       l := 1;
       Foi := true;
     end
     else l := l + 1;
   end;
   closefile(arquivo);
   // Comandos finais do arquivo.
   GLinha[LinhaContada] := 'M05';
   LinhaContada := LinhaContada + 1;
   GLinha[LinhaContada] := 'M09';
   LinhaContada := LinhaContada + 1;
   GLinha[LinhaContada] := 'M18';
   LinhaContada := LinhaContada + 1;
   GLinha[LinhaContada] := 'M02';
   LinhaContada := LinhaContada + 1;
   FrmPrincipal.ProgressBar1.Position := 0;
   FrmPrincipal.ProgressBar1.Min := 0;
   FrmPrincipal.ProgressBar1.Max := LinhaContada;
   FrmPrincipal.ProgressBar1.Step := 1;
   //LinhaContada := 1;
   for n := 1 to LinhaContada do
   begin
     FrmPrincipal.memo2.Append(Glinha[n]);
     //FrmPrincipal.ProgressBar1.Position := LinhaContada;
     //Application.ProcessMessages;
   end;
end;
 FrmPrincipal.ProgressBar1.Position := 0;
 FrmPrincipal.Memo2.Show;

 FrmPrincipal.SMSalvaGCodeFresagem.Enabled := True;
 if FrmPrincipal.SMSalvaGCodeFuros.Enabled then FrmPrincipal.SMSalvaGCodeUnico.Enabled := True;
end;

Procedure OtimizaGeCode();
var
PosFinalX    : real;
PosFinalY    : real;
PosInicialX  : real;
PosInicialY  : real;
PosDife      : real;
LinhaInicial : integer;
LinhaFinal   : integer;
x            : real;
y            : real;
N            : integer;

Begin
 // Copiar as linhas do inicio at� o fim do primeiro bloco
 N := 1;
 while(FrmPrincipal.MemoTemp.Lines.Strings[N] <> 'Y') do
 begin
   // Copia a linha do MemoTemp
   // Grava a linha no Memo definitivo
   // Apaga a linha do MemoTemp
 end;
 // Enquanto o MemoTemp n�o estiver vazio fazer a varredura
 while(FrmPrincipal.MemoTemp.Lines.Count > 0) do
 Begin
   // Loop para varrer as linhas do inicio ate o fim do MemoTemp
   for n := 1 to (FrmPrincipal.MemoTemp.Lines.Count -1) do
     begin
       // Procura as linhas que correspondem ao inicio de um bloco
       // Subtrair a posi��o X inicial da final e tirar o m�dulo.
       // Subtrair a posi��o Y inicial da final e tirar o m�dulo.
       // Somar as duas diferen�as
       // verifica se a diferen�a � menor do que a ultima que foi guardada
       // Se a difren�a for menor do que a ultima guardar a posi��o da linha inicial  'LinhaInicial'

     end;
     // Copiar as linhas do inicio at� o fim do bloco
     N := LinhaInicial;
     // copiar linha enquanto a linha for diferente do fim de bloco.
     While(FrmPrincipal.MemoTemp.Lines.Strings[N] <> 'Y') do
     begin
       // Copia a linha do MemoTemp
       // Grava a linha no Memo definitivo
       // Apaga a linha do MemoTemp
       N := N + 1;
     end;

 end;

end;

procedure CarregaImagemVetorisada();
var
  x: integer;
  y: integer;
begin
  FrmPrincipal.Image3.Picture.Bitmap.Canvas.Pen.Color := $FFFFFF;
  FrmPrincipal.Image3.Picture.Bitmap.Canvas.Clear;
  FrmPrincipal.image3.Picture.Bitmap.Width := tpx;
  FrmPrincipal.image3.Picture.Bitmap.Height := tpy;
  for x := 0 to tpx do
  begin
    for y := 0 to tpy do
    begin
      if pixel_OUT[x, y] = 'V' then
      begin
        FrmPrincipal.image3.Canvas.Pixels[x, y] := $00FF00;
      end
      else
      begin
        FrmPrincipal.image3.Canvas.Pixels[x, y] := $FFFFFF;
      end;
    end;
  end;
end;

procedure CriaMapa(Arqv : string );
var
  arquivo: textfile;
  linha: string;
  c: boolean;
  f: boolean;
  n: integer;
  P: integer;
  x: integer;
  xi: integer;
  xf: integer;
  y: integer;
  yi: integer;
  yf: integer;
  yt: integer;
  LinhaContada: integer;
  StepBar: integer;
begin
  // Gera o mapa de fresagem.
  FrmPrincipal.ProgressBar1.Min := 0;
  FrmPrincipal.ProgressBar1.Max := ContaLinha;
  FrmPrincipal.ProgressBar1.Step := 1;
  StepBar := 0;
  LinhaContada := 0;
  FrmPrincipal.PageControl1.PageIndex := 5;
  //FrmPrincipal.image4.Hide;
  FrmPrincipal.image4.picture.Bitmap.Width := Tpx + 1;
  FrmPrincipal.image4.Picture.Bitmap.Height := Tpy + 1;
  yi := 0;
  xi := 0;
  for x := 0 to tpx + 1 do
  begin
    Application.ProcessMessages;
    for y := 0 to tpy + 1 do
    begin
      FrmPrincipal.image4.Picture.Bitmap.Canvas.Pixels[x, y] := $FFFFFF;
    end;
  end;
  yt := tpy;
  c := False;
  f := False;
  if FileExists(Arqv) then
  begin
    assignfile(arquivo, Arqv);
    reset(arquivo);
    //FrmPrincipal.image4.Hide;
    FrmPrincipal.Image4.Canvas.Pen.Width := 3;
    while (not EOF(arquivo)) do
    begin
      readln(arquivo, linha);
      LinhaContada := LinhaContada + 1;
      StepBar := StepBar + 1;
      if (StepBar > (contalinha / 100)) then
      begin
        FrmPrincipal.ProgressBar1.Position := LinhaContada;
        Application.ProcessMessages;
        StepBar := 0;
      end;
      if (copy(linha, 1, 1) <> '') then
      begin
        if (copy(linha, 1, 1) <> 'Z') then
        begin
          for n := 0 to length(linha) do
          begin
            if (copy(linha, n, 1) = '|') then
              p := n;
          end;
          xf := StrToInt((copy(linha, 5, p - 6)));
          yf := StrToInt((copy(linha, p + 5, length(linha))));
          if c then
          begin
            if f then
            begin
              // Marca pontos do caminho onde a placa sera fresada
              FrmPrincipal.image4.Canvas.Pen.Color := $0000FF;
              FrmPrincipal.image4.Canvas.Line(xi, yt - yi, xf, yt - yf);
            end
            else
            begin
              // Marca pontos do caminho que a ferramenta anda sem fresar
              FrmPrincipal.image4.Canvas.Pen.Color := $0FF7D7;
              FrmPrincipal.image4.Canvas.Line(xi, yt - yi, xf, yt - yf);
              //Delay(20);
              FrmPrincipal.image4.Show;
            end;
          end;
          xi := xf;
          yi := yf;
          c := True;
        end
        else
        begin
          if (strtofloat(copy(linha, 4, length(linha)))) < 0 then
            f := True
          else
            f := False;
        end;
      end;
    end;
    FrmPrincipal.image4.Show;
    closefile(arquivo);
    FrmPrincipal.ProgressBar1.Position := 0;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  vetori := False;
  DecimalSeparator := ',';
  ThousandSeparator := '.';
  // Formata��o de datas
  DateSeparator := '/';
  ShortDateFormat := 'dd/mm/yyy';
  SMVirgula.Checked := False;
  SMPonto.Checked := True;
  PageControl1.PageIndex := 0;
  SMSalvaOtimizada.Enabled := False;
  SMSalvaVetorizada.Enabled := False;
  SMTamanho.Enabled := False;
  SMOtimizar.Enabled := False;
  SMTamanhoOtimizado.Enabled := False;
  SMVetorizar.Enabled := False;
  SMGeraCoordenadas.Enabled := False;
  SMMapaFresagem.Enabled := False;
  SMMapaFresagemsf.Enabled := False;
  SMGeraFresagem.Enabled := False;
  SMGeraFresagemsf.Enabled := False;
  SMGeraFuracao.Enabled := False;
  SMGeraRecorte.Enabled := False;
  SMTamanhoPlaca.Enabled := False;
  SMTamanhoCalculado.Enabled := False;
  SMSalvaGCodeFresagem.Enabled := False;
  SMSalvaGCodeFuros.Enabled := False;
  SMSalvaGCodeUnico.Enabled := False;
  SMSalvaGCodeRecorte.Enabled := False;
  CarregaConfig();
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
var
  arquivo: textfile;
begin
  // Apagar o arquivos tempor�rios
   if FileExists('XYZCord.txt') then
   begin
    assignfile(arquivo, 'XYZCord.txt');
    erase(arquivo);
   end;

   if FileExists('XYZCordsf.txt') then
   begin
     assignfile(arquivo, 'XYZCordsf.txt');
     erase(arquivo);
   end;

end;

procedure TFrmPrincipal.Image1DblClick(Sender: TObject);
begin
  if (image1.Proportional) then
    image1.Proportional := False
  else
    image1.Proportional := True;
end;

procedure TFrmPrincipal.Image3Click(Sender: TObject);
begin
    if (FrmCMedidas.Showing) then
  begin
  pcxi := pxi;
  pcyi := pyi;
  ppx :=  trunc(pxi / (image3.Width / image3.Picture.Bitmap.Width));
  ppy :=  trunc(pyi / (image3.Height / image3.Picture.Bitmap.Height));
  Image3.Canvas.Pixels[ppx, ppy] := $000000;
  end;
end;

procedure TFrmPrincipal.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  pxi := x;
  pyi := y;
end;

procedure TFrmPrincipal.Image3MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  if (image3.Width < image3.Picture.Bitmap.Width * 16 ) then
  Begin
   image3.Width := image3.Width + image3.Width;
   image3.Height := image3.Height + image3.Height;
   ScrollBar2.Max := ScrollBar2.Max + ScrollBar2.Max;
   ScrollBar2.Min := 0;
   ScrollBar2.Position := 0;
   ScrollBar1.Max := ScrollBar1.Max + ScrollBar1.Max;
   ScrollBar1.Min := 0;
   ScrollBar1.Position := 0;
  end;
end;

procedure TFrmPrincipal.Image3MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if (image3.Width > image3.Picture.Bitmap.Width) then
  Begin
    image3.Width := Round(image3.Width / 2);
    image3.Height := Round(image3.Height / 2);
    ScrollBar2.Max := Round(ScrollBar2.Max / 2);
    ScrollBar2.Min := 0;
    ScrollBar2.Position := 0;
    ScrollBar1.Max := Round(ScrollBar1.Max / 2);
    ScrollBar1.Min := 0;
    ScrollBar1.Position := 0;
  end;
end;

procedure TFrmPrincipal.Image5Click(Sender: TObject);
begin
  if (FrmFuros.Showing) then
  begin
   pcxi := pxi;
   pcyi := pyi;
   ppx :=  trunc(pxi / (image5.Width / image5.Picture.Bitmap.Width));
   ppy :=  trunc(pyi / (image5.Height / image5.Picture.Bitmap.Height));
   FrmFuros.Label5.Caption := copy('X = ' + FloatToStr(((FrmPrincipal.Image5.Picture.Bitmap.Width * pcxi) / FrmPrincipal.Image5.Width) / tx), 1, 11) + ' mm';
   FrmFuros.Label6.Caption := copy('Y = ' + FloatToStr((tpy - ((FrmPrincipal.Image5.Picture.Bitmap.Height * pcyi) / FrmPrincipal.Image5.Height)) / ty), 1, 11) + ' mm';
   Image5.Canvas.Pixels[ppx, ppy] := $000000;
  end;
end;

procedure TFrmPrincipal.Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  pxi := x;
  pyi := y;
end;

procedure TFrmPrincipal.Image5MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
 if (image5.Width < image5.Picture.Bitmap.Width * 16 ) then
  Begin
   image5.Width := image5.Width + image5.Width;
   image5.Height := image5.Height + image5.Height;
   ScrollBar3.Max := ScrollBar3.Max + ScrollBar3.Max;
   ScrollBar3.Min := 0;
   ScrollBar3.Position := 0;
   ScrollBar4.Max := ScrollBar4.Max + ScrollBar4.Max;
   ScrollBar4.Min := 0;
   ScrollBar4.Position := 0;
  end;
end;

procedure TFrmPrincipal.Image5MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
 if (image5.Width > image5.Picture.Bitmap.Width) then
  Begin
    image5.Width := Round(image5.Width / 2);
    image5.Height := Round(image5.Height / 2);
    ScrollBar3.Max := Round(ScrollBar3.Max / 2);
    ScrollBar3.Min := 0;
    ScrollBar3.Position := 0;
    ScrollBar4.Max := Round(ScrollBar4.Max / 2);
    ScrollBar4.Min := 0;
    ScrollBar4.Position := 0;
  end;
end;

procedure TFrmPrincipal.SMFresarClick(Sender: TObject);
begin
  SMNaoFresar.Checked := false;
  SMFresar.Checked := true;
end;


procedure TFrmPrincipal.ScrollBar1Change(Sender: TObject);
begin
   image3.Left := - ScrollBar1.Position;
end;

procedure TFrmPrincipal.ScrollBar2Change(Sender: TObject);
begin
   image3.Top := - ScrollBar2.Position;
end;

procedure TFrmPrincipal.ScrollBar3Change(Sender: TObject);
begin
     image5.Left := - ScrollBar3.Position;
end;

procedure TFrmPrincipal.ScrollBar4Change(Sender: TObject);
begin
     image5.Top := - ScrollBar4.Position;
end;


procedure TFrmPrincipal.SMGeraFresagemsfClick(Sender: TObject);
begin
    GeraGCode('XYZCordsf.txt');
end;

procedure TFrmPrincipal.SMGeraRecorteClick(Sender: TObject);
var
  x : real;
  y : real;
  l : integer;
  f : string;
  GLinha : String;
  NP : integer;

begin
  x := 0;
  y := 0;
  l := 0;
  f := '';
  // Comandos para recorte da placa
  FrmPrincipal.memo4.Clear;
  FrmPrincipal.memo4.Append(Texto17);
  FrmPrincipal.memo4.Append(Texto07);
  FrmPrincipal.memo4.Append(Texto08 +  Imagem + ' )');
  FrmPrincipal.memo4.Append(Texto09 + PlacaX + ' Cm    Y = ' + PlacaY + ' Cm )');
  FrmPrincipal.memo4.Append(Texto18);
  FrmPrincipal.memo4.Append('G90');
  FrmPrincipal.memo4.Append('G21');
  FrmPrincipal.memo4.Append('M08');
  FrmPrincipal.memo4.Append('M03 S' + IntToStr(ZVS));
  FrmPrincipal.memo4.Append('M07');
  x := FrmPrincipal.Image5.Picture.Bitmap.Width;
  y := FrmPrincipal.Image5.Picture.Bitmap.Height;
  l := l + 1;
  GLinha := 'N' + inttostr(l) + ' G00 Z' + FloatToStr(ZP) + f;
  if FrmPrincipal.SMPonto.Checked then
   begin
    GLinha := VirgPonto(GLinha);
   end;
   FrmPrincipal.memo4.Append(GLinha);
  l := l + 1;
  GLinha := 'N' + inttostr(l) + ' G00 X0 Y0 Z' + FloatToStr(ZP) + f;
  if FrmPrincipal.SMPonto.Checked then
   begin
    GLinha := VirgPonto(GLinha);
   end;
   FrmPrincipal.memo4.Append(GLinha);
  for NP := 1 to ZRP do
  Begin
   f := ' F' + inttostr(VRXY);
   l := l + 1;
   GLinha := 'N' + inttostr(l) + ' G01 X0 Y0 Z-' + FloatToStr(ZRA * NP) + f;
   if FrmPrincipal.SMPonto.Checked then
   begin
    GLinha := VirgPonto(GLinha);
   end;
   FrmPrincipal.memo4.Append(GLinha);
   l := l + 1;
   GLinha := 'N' + inttostr(l) + ' G01 X' + PlacaX + ' Y0 Z-' + FloatToStr(ZRA * NP) + f;
   if FrmPrincipal.SMPonto.Checked then
   begin
    GLinha := VirgPonto(GLinha);
   end;
   FrmPrincipal.memo4.Append(GLinha);
   l := l + 1;
   GLinha := 'N' + inttostr(l) + ' G01 X' + PlacaX + ' Y' + PlacaY + ' Z-' + FloatToStr(ZRA * NP) + f;
   if FrmPrincipal.SMPonto.Checked then
   begin
    GLinha := VirgPonto(GLinha);
   end;
   FrmPrincipal.memo4.Append(GLinha);
   l := l + 1;
   GLinha := 'N' + inttostr(l) + ' G01 X0 Y' + PlacaY + ' Z-' + FloatToStr(ZRA * NP) + f;
   if FrmPrincipal.SMPonto.Checked then
   begin
    GLinha := VirgPonto(GLinha);
   end;
   FrmPrincipal.memo4.Append(GLinha);
   l := l + 1;
   GLinha := 'N' + inttostr(l) + ' G01 X0 Y0 Z-' + FloatToStr(ZRA * NP) + f;
   if FrmPrincipal.SMPonto.Checked then
   begin
    GLinha := VirgPonto(GLinha);
   end;
   FrmPrincipal.memo4.Append(GLinha);
  end;
  l := l + 1;
  GLinha := 'N' + inttostr(l) + ' G00 X0 Y0 Z' + floattostr(ZP);
  if FrmPrincipal.SMPonto.Checked then
  begin
   GLinha := VirgPonto(GLinha);
  end;
  FrmPrincipal.memo4.Append(GLinha);
  // Comandos finais do arquivo.
  GLinha := 'M05';
  FrmPrincipal.memo4.Append(GLinha);
  GLinha := 'M09';
  FrmPrincipal.memo4.Append(GLinha);
  GLinha := 'M18';
  FrmPrincipal.memo4.Append(GLinha);
  GLinha := 'M02';
  FrmPrincipal.memo4.Append(GLinha);
  FrmPrincipal.PageControl1.PageIndex := 8;
  FrmPrincipal.memo4.Show;
  FrmPrincipal.SMSalvaGCodeRecorte.Enabled := True;
end;

procedure TFrmPrincipal.SMMapaFresagemsfClick(Sender: TObject);
begin
    CriaMapa('XYZCordsf.txt');
end;

procedure TFrmPrincipal.SMNaoFresarClick(Sender: TObject);
begin
  SMNaoFresar.Checked := true;
  SMFresar.Checked := false;
end;

procedure TFrmPrincipal.SMSalvaGCodeRecorteClick(Sender: TObject);
begin
    SaveDialog1.FileName := 'Recorte.nc';
  if SaveDialog1.Execute then
  begin
    memo4.Lines.SaveToFile(SaveDialog1.FileName);
  end;
end;

procedure TFrmPrincipal.SMSalvaGCodeUnicoClick(Sender: TObject);
var
  arquivo: textfile;
  arquivo1: textfile;
  ContaLinha : Integer;
  QuantLinhas : Integer;
  Linha : String;
begin
  memo2.Lines.SaveToFile('Fresagem.txt');
  memo3.Lines.SaveToFile('Furos.txt');
  memo4.Lines.SaveToFile('Recorte.txt');
  SaveDialog1.FileName := 'Completo.nc';
  if SaveDialog1.Execute then
    begin
    // Abre um arquivo para gravar os dados GCode
    assignfile(arquivo1, SaveDialog1.FileName);
    if not FileExists(SaveDialog1.FileName) then
     Rewrite(arquivo1)
    else
     erase(arquivo1);
    Rewrite(arquivo1);
    if FileExists('Fresagem.txt') then
    begin
      QuantLinhas := memo2.Lines.Count;
      assignfile(arquivo, 'Fresagem.txt');
      reset(arquivo);
      ContaLinha := 0;
      while (not EOF(arquivo)) do
      begin
        readln(arquivo, linha);
        ContaLinha := ContaLinha + 1;
        If (ContaLinha < QuantLinhas - 1)  then
        Begin
          writeln(arquivo1, linha);
        end;
      end;
      Erase(arquivo);
      closefile(arquivo);
    end;
    if FileExists('Furos.txt') then
    begin
      QuantLinhas := memo3.Lines.Count;
      assignfile(arquivo, 'Furos.txt');
      reset(arquivo);
      ContaLinha := 0;
      writeln(arquivo1, 'M06');
      while (not EOF(arquivo)) do
      begin
        readln(arquivo, linha);
        ContaLinha := ContaLinha + 1;
        If (ContaLinha > 5) then
        Begin
          writeln(arquivo1, linha);
        end;
      end;
      Erase(arquivo);
      closefile(arquivo);
    end;
    if FileExists('Recorte.txt') then
    begin
      QuantLinhas := memo4.Lines.Count;
      assignfile(arquivo, 'Recorte.txt');
      reset(arquivo);
      ContaLinha := 0;
      writeln(arquivo1, 'M06');
      while (not EOF(arquivo)) do
      begin
        readln(arquivo, linha);
        ContaLinha := ContaLinha + 1;
        If (ContaLinha > 5) then
        Begin
          writeln(arquivo1, linha);
        end;
      end;
      Erase(arquivo);
      closefile(arquivo);
    end;
    closefile(arquivo1);

  end;
end;

procedure TFrmPrincipal.SMBordaExternaClick(Sender: TObject);
begin
  SMBordaInterna.Checked := false;
  SMBordaExterna.Checked := true;
  SMSalvaOtimizada.Enabled := True;
  SMTamanho.Enabled := True;
  SMTamanhoOtimizado.Enabled := True;
  SMVetorizar.Enabled := True;
end;

procedure TFrmPrincipal.SMBordaInternaClick(Sender: TObject);
begin
  SMBordaInterna.Checked := true;
  SMBordaExterna.Checked := false;
  SMSalvaOtimizada.Enabled := True;
  SMTamanho.Enabled := True;
  SMTamanhoOtimizado.Enabled := True;
  SMVetorizar.Enabled := True;
end;

procedure TFrmPrincipal.SMPontoClick(Sender: TObject);
begin
  SMVirgula.Checked := False;
  SMPonto.Checked := True;
end;

procedure TFrmPrincipal.SMSalvaConfigClick(Sender: TObject);
begin
  GravaConfig();
end;

procedure TFrmPrincipal.SMSalvaGCodeFurosClick(Sender: TObject);
begin
  SaveDialog1.FileName := 'Furos.nc';
  if SaveDialog1.Execute then
  begin
    memo3.Lines.SaveToFile(SaveDialog1.FileName);
  end;
end;

procedure TFrmPrincipal.SMGeraFuracaoClick(Sender: TObject);
begin
  FrmFuros.Show;
end;

procedure TFrmPrincipal.SMManualClick(Sender: TObject);
begin
  OpenDocument('PCIToGCode.pdf');
end;

procedure TFrmPrincipal.SMTamanhoCalculadoClick(Sender: TObject);
begin
  FrmPrincipal.PageControl1.PageIndex := 2;
  FrmCMedidas.Show;
end;

procedure TFrmPrincipal.SMTamanhoOtimizadoClick(Sender: TObject);
begin
  ShowMessage(Texto02 + #13 + 'x = ' +
    IntToStr(image2.Picture.Bitmap.Width) + #13 + 'y = ' +
    IntToStr(image2.picture.Bitmap.Height));
end;

procedure TFrmPrincipal.SMSalvaOtimizadaClick(Sender: TObject);
begin
  if savepicturedialog1.Execute then
    image2.Picture.SaveToFile(savepicturedialog1.FileName);
end;

procedure TFrmPrincipal.SMGeraFresagemClick(Sender: TObject);
begin
  GeraGCode('XYZCord.txt');
end;

procedure TFrmPrincipal.SMEixoZClick(Sender: TObject);
begin
  FrmZinfo.ShowModal;
end;

procedure TFrmPrincipal.SMGeraCoordenadasClick(Sender: TObject);
begin
  GeraCoordenadas();
  SMTamanho.Enabled := False;
  SMOtimizar.Enabled := False;
  SMTamanhoOtimizado.Enabled := False;
  SMVetorizar.Enabled := False;
  SMGeraCoordenadas.Enabled := False;
  SMMapaFresagem.Enabled := True;
  SMMapaFresagemsf.Enabled := False;
  SMGeraFresagem.Enabled := False;
  SMGeraFresagemsf.Enabled := False;
  SMGeraFuracao.Enabled := False;
  SMGeraRecorte.Enabled := False;
  SMTamanhoPlaca.Enabled := True;
  SMTamanhoCalculado.Enabled := True;
  SMSalvaGCodeFresagem.Enabled := False;
  SMSalvaGCodeFuros.Enabled := False;
  SMSalvaGCodeUnico.Enabled := False;
  SMSalvaGCodeRecorte.Enabled := False;
end;

procedure TFrmPrincipal.SMAbrirClick(Sender: TObject);
begin
  PageControl1.PageIndex := 0;
  if openpicturedialog1.Execute then
  begin
    image1.Picture.LoadFromFile(openpicturedialog1.FileName);
    image1.Update;
    //IF (image1.Picture.Bitmap.Width * image1.picture.Bitmap.Height > 1000000) then
    IF (False) then
    begin
     image1.Picture.Clear;
     Image1.Picture.Bitmap.Clear;
     Image1.Canvas.Clear;
     ShowMessage(Texto04);
     SMSalvaOtimizada.Enabled := False;
     SMSalvaVetorizada.Enabled := False;
     SMTamanho.Enabled := False;
     SMOtimizar.Enabled := False;
     SMTamanhoOtimizado.Enabled := False;
     SMVetorizar.Enabled := False;
     SMGeraCoordenadas.Enabled := False;
     SMMapaFresagem.Enabled := False;
     SMMapaFresagemsf.Enabled := False;
     SMGeraFresagem.Enabled := False;
     SMGeraFresagemsf.Enabled := False;
     SMGeraFuracao.Enabled := False;
     SMGeraRecorte.Enabled := False;
     SMTamanhoPlaca.Enabled := False;
     SMTamanhoCalculado.Enabled := False;
     SMSalvaGCodeFresagem.Enabled := False;
     SMSalvaGCodeFuros.Enabled := False;
     SMSalvaGCodeRecorte.Enabled := False;
     SMSalvaGCodeUnico.Enabled := False;
    end
    else
    begin
     Imagem := openpicturedialog1.FileName;
     CarregaCorPixel();
     PageControl1.PageIndex := 0;
     SMSalvaOtimizada.Enabled := False;
     SMSalvaVetorizada.Enabled := False;
     SMTamanho.Enabled := False;
     SMOtimizar.Enabled := True;
     SMTamanhoOtimizado.Enabled := False;
     SMVetorizar.Enabled := False;
     SMGeraCoordenadas.Enabled := False;
     SMMapaFresagem.Enabled := False;
     SMMapaFresagemsf.Enabled := False;
     SMGeraFresagem.Enabled := False;
     SMGeraFresagemsf.Enabled := False;
     SMGeraFuracao.Enabled := False;
     SMGeraRecorte.Enabled := False;
     SMTamanhoPlaca.Enabled := False;
     SMTamanhoCalculado.Enabled := False;
     SMSalvaGCodeFresagem.Enabled := False;
     SMSalvaGCodeFuros.Enabled := False;
     SMSalvaGCodeRecorte.Enabled := False;
     SMSalvaGCodeUnico.Enabled := False;
    end;
  end;
end;

procedure TFrmPrincipal.SMSalvaGCodeFresagemClick(Sender: TObject);
begin
  SaveDialog1.FileName := 'Fresar.nc';
  if SaveDialog1.Execute then
  begin
    memo2.Lines.SaveToFile(SaveDialog1.FileName);
  end;
end;

procedure TFrmPrincipal.SMTamanhoClick(Sender: TObject);
begin
  ShowMessage(Texto01 + #13 + 'x = ' +
    IntToStr(image1.Picture.Bitmap.Width) + #13 + 'y = ' +
    IntToStr(image1.picture.Bitmap.Height));
end;

procedure TFrmPrincipal.SMSalvaVetorizadaClick(Sender: TObject);
begin
  if savepicturedialog1.Execute then
    image3.Picture.SaveToFile(savepicturedialog1.FileName);
end;

procedure TFrmPrincipal.SMTamanhoPlacaClick(Sender: TObject);
begin
  FrmMedida.ShowModal;
end;

procedure TFrmPrincipal.SMVetorizarClick(Sender: TObject);
begin
  Vetorisar();
  ScrollBar2.Max := round(image3.Height);
  ScrollBar2.Min := 0;
  ScrollBar2.Position := 0;
  ScrollBar1.Max := round(image3.Width);
  ScrollBar1.Min := 0;
  ScrollBar1.Position := 0;
  b.Free;
  b := TBitmap.Create;
  b.Assign(image3.Picture.Graphic);
end;

procedure TFrmPrincipal.SMVirgulaClick(Sender: TObject);
begin
  SMVirgula.Checked := True;
  SMPonto.Checked := False;
end;



procedure TFrmPrincipal.SMOtimizarClick(Sender: TObject);
begin
  FrmOtimizar.ShowModal;
  SMSalvaOtimizada.Enabled := True;
  SMTamanho.Enabled := True;
  SMTamanhoOtimizado.Enabled := True;
  SMVetorizar.Enabled := True;
end;

procedure TFrmPrincipal.SMMapaFresagemClick(Sender: TObject);
begin
  CriaMapa('XYZCord.txt');
end;

procedure TFrmPrincipal.SMSobreClick(Sender: TObject);
begin
  FrmSobre.showmodal;
end;

procedure TFrmPrincipal.SMVelocidadeClick(Sender: TObject);
begin
  FrmVelocidade.showmodal;
end;


initialization
  {$I UPrincipal.lrs}

end.

