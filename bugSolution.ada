```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Data : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Data'Range loop
      --Correct access and handling
      Put_Line(My_Data(I)'Img); 
   end loop;
   --Using exception handling
   begin
      My_Data(11) := 12; --This will raise an exception
   exception
      when Constraint_Error =>
         Put_Line("Error: Array index out of bounds");
   end;
end Example_Solution;
```