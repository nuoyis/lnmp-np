#!/bin/bash
# 诺依阁<wkkjonlykang@vip.qq.com>
# 编写日期: 2025-03-31

echo "Welcome use nuoyis's lnmp service"

# 启动检查
DEFAULTFILE=/nuoyis-web/nginx/webside/default/index.html



if [ ! -f "$DEFAULTFILE" ]; then
echo "default page is not found. then create new default page of html"
mkdir -p /nuoyis-web/nginx/webside/default/
touch $DEFAULTFILE
cat > $DEFAULTFILE << EOF
welcome to nuoyis's server
EOF
else
echo "default page is found. then use default page of html"
fi

echo "nuoyis service is starting"
exec "$@"