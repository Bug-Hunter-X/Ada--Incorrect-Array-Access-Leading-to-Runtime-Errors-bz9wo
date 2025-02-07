```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Data : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Data'Range loop
      -- Incorrect access:  Trying to access outside the array bounds
      if I > My_Data'Last then
         Put_Line("This line should not be reachable");
      end if;
   end loop;
   --Ada allows this in some situations
   --This can also lead to a runtime error if not handled correctly
   My_Data(11):=12;  
end Example;
```