path = "/Users/davidjaimes/Desktop/Test3"
rename_arr = [
"16722",
"11317",
"15093",
"10960",
"15616",
"16563",
"4301",
"10740",
"5784",
"3962",
"898124",
"13819",
"3104",
"1612",
"898257",
"899544",
"894655",
"4777",
"3621",
"10463",
"11775",
"1689",
"2897",
"701166",
"627873",
"908822",
"907790",
"16561",
"4989",
"909458",
"11953",
"14004",
"11794",
"11984",
"5511",
"8209",
"8260",
"9697",
"1340",
"12636",
"8205",
"4576",
"3081",
"9159",
"3419",
"3886",
"1039",
"3188",
"1096",
"7985",
"13857",
"16881",
"3422",
"4736",
"14201",
"15625",
"908866",
"14423",
"7038",
"895166",
"3031",
"3801",
"11103",
"893584",
"893705",
"2393",
"13037",
"646",
"15595",
"9456",
"11320",
"4240",
"16320",
"3328",
"896269",
"911049",
"7482",
"3507",
"926",
"3413",
"2113",
"911869",
"3727",
"15137"
]

files_sorted_by_time =  Dir['/Users/davidjaimes/Desktop/Test3'].sort_by{ |f| File.ctime(f) }
Dir.open(path).reject{|f| f[0] == '.'}.each_with_index do |f2,i|
 	File.rename(path + "/" + files_sorted_by_time[i], path + "/" + rename_arr[i] + "_" +  f2)
end

