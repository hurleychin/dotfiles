function til() {

	local HUGO_BASE=(~/Workspace/hugo-site)
	
	local HUGO_CONTENT=( --git-dir=$HUGO_BASE/.git --work-tree=$HUGO_BASE)
	local HUGO_PUBLIC=( --git-dir=$HUGO_BASE/public/.git --work-tree=$HUGO_BASE/public)

	if [ "$1" = "new" ]; then 
		if [ "$2" = "" ]; then
			echo "usage: til new [title]"
			return 1
		else
			hugo -s $HUGO_BASE new post/$2.md --editor subl3
		fi
	elif [ "$1" = "status" ]; then
		echo "\n===HUGO_CONENT==="
		git $HUGO_CONTENT status
		echo "\n===HUGO_PUBLIC==="
		hugo -s $HUGO_BASE && git $HUGO_PUBLIC status
	elif [ "$1" = "push" ]; then
		echo "\n===HUGO_CONENT==="
		git $HUGO_CONTENT add -A && git $HUGO_CONTENT commit --no-verify -m "[$(date +'%Y-%m-%d %H:%M:%S')]$2" && git $HUGO_CONTENT push
		echo "\n===HUGO_PUBLIC==="
		git $HUGO_PUBLIC add -A && git $HUGO_PUBLIC commit --no-verify -m "[$(date +'%Y-%m-%d %H:%M:%S')]$2" && git $HUGO_PUBLIC push
	elif [ "$1" = "pull" ]; then
		echo "\n===HUGO_CONENT==="
		git $HUGO_CONTENT pull 
		echo "\n===HUGO_PUBLIC==="
		git $HUGO_PUBLIC pull 
	elif [ "$1" = "view" ]; then
		hugo -s $HUGO_BASE server
	else
		echo "usage: til <new|view|status|push|pull> [<args>]"
		return 1
	fi

}
