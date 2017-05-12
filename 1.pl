use File::Slurp;
@file_path = <./*.pl>;
foreach $file (@file_path){ 	
	$temp = $file;
	$preface = "./";
	$temp =~ s/\.pl//gi; 
	$temp =~ s/\.\///gi;
	$file_out= $temp + 1;
	$file_out = $file_out . ".pl"; 
	$file_out = $preface . $file_out;	
	$file_info = read_file($file); 
	write_file($file_out, $file_info); 
}
