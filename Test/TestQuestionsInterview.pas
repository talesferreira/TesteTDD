unit TestQuestionsInterview;

interface

uses
  TestFramework, QuestionsInterview, System.SysUtils;

type
  TestTSampleInterview = class(TTestCase)
  strict private
    FSampleInterview: TSampleInterview;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestIsOdd;
  end;

implementation

procedure TestTSampleInterview.SetUp;
begin
  FSampleInterview := TSampleInterview.Create;
end;

procedure TestTSampleInterview.TearDown;
begin
  FSampleInterview.Free;
  FSampleInterview := nil;
end;

procedure TestTSampleInterview.TestIsOdd;
begin
  CheckTrue(TSampleInterview.IsOdd(5),'Testando se 5 é negativo');
end;

initialization
  RegisterTest(TestTSampleInterview.Suite);
end.

