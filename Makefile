# Created by: Sergio Lenzi <lenzi.sergio@gmail.com>
# $FreeBSD$

PORTNAME=	fritzing
PORTVERSION=	0.7.12b
CATEGORIES=	cad
#http://fritzing.org/download/0.7.12b/source-tarball/fritzing-0.7.12b.source.tar.bz2
MASTER_SITES=	http://fritzing.org/media/downloads/
DISTNAME=	fritzing-0.7.12b.source.tar
EXTRACT_SUFX=	.bz2

MAINTAINER=	lenzi.sergio@gmail.com
COMMENT=	PCB CAD see==> http://fritzing.org

WRKSRC=		${WRKDIR}/fritzing-0.7.12b.source
MAN1=		Fritzing.1

USE_BZIP2=	yes
USE_DOS2UNIX=	yes
USE_QT4=	corelib dbus qmake sql-sqlite3 imageformats svg gui 
USE_GMAKE=	yes

.include <bsd.port.pre.mk>

pre-build:
	cd ${WRKSRC};${QMAKE}

.include <bsd.port.post.mk>
