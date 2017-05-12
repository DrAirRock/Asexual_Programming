use File::Slurp;
@file_path = <./*.pl>;
foreach $file (@file_path){ 	
	$temp = $file;
	$temp =~ s/(\.pl)|(\.\/)//gi; 
	$file_out = "./" . (++$temp) . ".pl"; 
	$file_info = read_file($file); 
	write_file($file_out, $file_info); 
}
