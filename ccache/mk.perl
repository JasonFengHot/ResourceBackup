#!/usr/bin/perl

#__author__ = "zhengzhou"
#__version__ = "0.2"
#__copyright__ = "Copyright (c) 2018 zhengzhou"
my $pro_dir = "Project_common";
my $alps;
my $new_alps = "$pro_dir/alps";#文件夹要用双引号,文件用单引号
my $git;
my $new_git = "$pro_dir/.git";
my $file1 = ".project.log";
my $lines1;
sub check_and_create_dir
{	
		my $temp_dir = $_[0];

		if ( -d $temp_dir ) {
				;
		}
		else {
				mkdir $temp_dir;
				print "mkdir $temp_dir\n";
		}
}

check_and_create_dir($pro_dir);

if ((-e $new_alps) && (-e $new_git)){
	open(my $log_out , "<" , $file1) or die ("Could not open file $file1!!!");#不要删除.project.log,不然会报错,如果不小心删除,需要将alps,sagereal和.git先放回原来的目录
	$lines1 = <$log_out>;#获取.project.log文件中的值	
	close $log_out;
	if($lines1){
		system("mv $pro_dir/* $lines1/ ");
		system("mv $pro_dir/.git $lines1/ ");
		print "replace $lines1 success!\n";
	}
}

if ((-e "$ARGV[0]/alps") && (-e "$ARGV[0]/.git")){
	system("mv $ARGV[0]/* $pro_dir/");
	system("mv $ARGV[0]/.git $pro_dir/");
	open(my $log_in, ">", $file1) or die ("Could not open file $file1!!!");
	print $log_in $ARGV[0];
	close $log_in;
	print "Project change to $ARGV[0] success!\n";
}


