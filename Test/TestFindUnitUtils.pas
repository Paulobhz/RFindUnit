unit TestFindUnitUtils;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework,

  FindUnit.Utils;

type
  // Test methods for class TPathConverter

  TestTPathConverter = class(TTestCase)
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestUnitFromSearchSelectionInterface;
    procedure TestUnitFromSearchSelectionClass;
  end;

implementation

procedure TestTPathConverter.SetUp;
begin
end;

procedure TestTPathConverter.TearDown;
begin
end;

procedure TestTPathConverter.TestUnitFromSearchSelectionInterface;
var
  ClassOut: string;
  UnitOut: string;
begin
  GetUnitFromSearchSelection('Interf.EnvironmentController.IRFUEnvironmentController.* - Interface', UnitOut, ClassOut);

  Assert(UnitOut = 'Interf.EnvironmentController', 'Unit out is wrong');
  Assert(ClassOut = 'IRFUEnvironmentController', 'Class out is wrong');
end;

procedure TestTPathConverter.TestUnitFromSearchSelectionClass;
var
  ClassOut: string;
  UnitOut: string;
begin
  GetUnitFromSearchSelection('System.Classes.TStringList.* - Class', UnitOut, ClassOut);

  Assert(UnitOut = 'System.Classes', 'Unit out is wrong');
  Assert(ClassOut = 'TStringList', 'Class out is wrong');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTPathConverter.Suite);
end.

