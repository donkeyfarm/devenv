###文件/模块说明	
> 说明模块主要用途，版本信息，输入输出文件，依赖工具及其版本信息, 前后流程脚本(可选)

**Example：**
```
##! @TODO:		url analyse
##! @VERSION:	1.0
##! @AUTHOR:	MM;BB
##! @FILEIN:		data/url.crawl
##!		由dedup_crawl.sh生成, 格式为...
##! @FILEOUT:	result/GOOD_GRP
##!		通过检测的无问题alias组
##! @FILEOUT:	result/WRONG_GRP
##!		未通过检测的有问题alias组
##! @DEP:		wget 1.10.2
##! @DEP:		lftp 3.0.6
##! @PREV:		dedup_crawl.sh
##! @NEXT:		dedup_update.sh
```

采用##！@注释前缀是让以后文档化工作更加方便
TODO应该简单介绍该模块完成的功能，比如URL分析
VERSION应该在每次发生变更时应该修改
AUTHOR应该包含作者和修改者
FILEIN 标明了本模块使用的输入文件，可以注释该输入文件是由某个程序生成，以及格式
FILEOUT标明了本模块使用的输出文件，可以注释该输出文件的用途，以及格式
DEP 包含了脚本需要依赖特殊版本工具的清单，对于通用工具或者使用的功能在该工具各版本之间无差异的不用做此声明。 （可选）
PREV 里注明流程的上一个脚本（可选）
NEXT 里注明流程的下一个脚本（可选）


###重要函数说明
> 对于重要函数，需说明函数用途，参数，返回值，作者，版本	

**Example：**
```
##! @TODO: 	get hostname
##! @AUTHOR: 	somebody
##! @VERSION: 	1.0
##! @IN:		$1 => ip
##! @IN:		$2 => port
##! @OUT:	0 => success; 1 => failure
```

采用##！@注释前缀是让以后文档化工作更加方便
TODO应该简单介绍该函数完成的功能，比如获取主机名
VERSION应该在每次发生变更时应该修改
AUTHOR应该包含作者和修改者
IN提供函数的参数和对应意义，格式为每个参数一行，每行为 $1 => ip这样的格式，该注释说明第一个参数是IP地址。Shell的函数使用的是$n这样的默认参数，不加注释的话在函数较长或者参数较多时将很难区分各个参数代表的意义。当然也可以在函数起始使用local ip=$1把参数赋值到命名更有意义的变量里
OUT 提供该函数的返回值和对应意义， 0 => success 这样的格式，该注释说明返回0表示函数执行成功
