use File::Slurp;
@file_path = <./germ*.pl>;
$file_hash{$_}++ for ( @file_path); 
foreach $file (@file_path){ 	
	$temp = $file;
	$flag = 0; 
	while ( $flag != 1){
		$temp =~ s/(\.pl)|(germ)|(\.\/)//gi; 
		$file_out =  "./" . "germ" .  (++$temp) . ".pl"; 
		if (exists($file_hash{$file_out})){}else {$flag = 1;}
	}
	$file_hash{$file_out}++; 
	$file_info = read_file($file); 
	write_file($file_out, $file_info); 
}
