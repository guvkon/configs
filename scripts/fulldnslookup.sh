#!/bin/sh

if [[ -z ${1} ]]; then
	echo "Usage: ${0} site1.com site2.com"
	exit 1
fi

SITES=( ${@} )

for SITE in "${SITES[@]}"
do
	echo ""
	echo "Full DNS lookup for ${SITE}:"
	echo "================"
	dig ns +noall +answer ${SITE}
	dig a +noall +answer ${SITE}
	dig aaaa +noall +answer ${SITE}
	dig cname +noall +answer ${SITE}
	dig mx +noall +answer ${SITE}
	dig txt +noall +answer ${SITE}
	dig soa +noall +answer ${SITE}
	dig srv +noall +answer ${SITE}
	echo "================"
done
