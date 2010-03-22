
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/lib/ruby/1.8/i686-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
exec_prefix = $(prefix)
prefix = $(DESTDIR)/usr
sharedstatedir = $(prefix)/com
mandir = $(DESTDIR)/usr/share/man
psdir = $(docdir)
oldincludedir = $(DESTDIR)/usr/include
localedir = $(datarootdir)/locale
bindir = $(exec_prefix)/bin
libexecdir = $(exec_prefix)/libexec
sitedir = $(DESTDIR)/usr/lib/ruby/site_ruby
htmldir = $(docdir)
vendorarchdir = $(vendorlibdir)/$(sitearch)
includedir = $(prefix)/include
infodir = $(DESTDIR)/usr/share/info
vendorlibdir = $(vendordir)/$(ruby_version)
sysconfdir = $(DESTDIR)/etc
libdir = $(exec_prefix)/lib
sbindir = $(exec_prefix)/sbin
rubylibdir = $(libdir)/ruby/$(ruby_version)
docdir = $(datarootdir)/doc/$(PACKAGE)
dvidir = $(docdir)
vendordir = $(libdir)/ruby/vendor_ruby
datarootdir = $(prefix)/share
pdfdir = $(docdir)
archdir = $(rubylibdir)/$(arch)
sitearchdir = $(sitelibdir)/$(sitearch)
datadir = $(DESTDIR)/usr/share
localstatedir = $(DESTDIR)/var/lib
sitelibdir = $(sitedir)/$(ruby_version)

CC = i686-pc-linux-gnu-gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -O2 -march=i686 -pipe -fno-strict-aliasing  -fPIC $(cflags)  -g -DXP_UNIX -O3 -Wall -Wcast-qual -Wwrite-strings -Wconversion -Wmissing-noreturn -Winline 
INCFLAGS = -I. -I/usr/include/libxml2 -I/usr/include -I. -I/usr/lib/ruby/1.8/i686-linux -I.
DEFS     = -D_FILE_OFFSET_BITS=64
CPPFLAGS = -DHAVE_XMLRELAXNGSETPARSERSTRUCTUREDERRORS -DHAVE_XMLRELAXNGSETPARSERSTRUCTUREDERRORS -DHAVE_XMLRELAXNGSETVALIDSTRUCTUREDERRORS -DHAVE_XMLSCHEMASETVALIDSTRUCTUREDERRORS -DHAVE_XMLSCHEMASETPARSERSTRUCTUREDERRORS -I/usr/include/libxml2 -I/usr/include -I. -I/usr/lib/ruby/1.8/i686-linux -I.
CXXFLAGS = $(CFLAGS) 
ldflags  = -L. -Wl,-O1 -rdynamic -Wl,-export-dynamic
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = $(CC) -shared
AR = i686-pc-linux-gnu-ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby18
RUBY_SO_NAME = ruby18
arch = i686-linux
sitearch = i686-linux
ruby_version = 1.8
ruby = /usr/bin/ruby18
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir) /opt/local/lib
LIBPATH =  -L. -L$(libdir) -Wl,-R$(libdir) -L/opt/local/lib -Wl,-R/opt/local/lib
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = /nokogiri
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -lexslt -lxslt -lxml2  -lpthread -lrt -ldl -lcrypt -lm   -lc
SRCS = xml_document.c xml_relax_ng.c html_sax_parser.c xml_xpath.c xml_entity_reference.c xml_io.c xml_text.c xml_processing_instruction.c xml_cdata.c xslt_stylesheet.c xml_syntax_error.c xml_node.c xml_schema.c xml_comment.c xml_attr.c xml_namespace.c xml_document_fragment.c html_element_description.c xml_sax_parser.c html_document.c xml_xpath_context.c xml_node_set.c xml_dtd.c xml_sax_push_parser.c nokogiri.c xml_reader.c html_entity_lookup.c
OBJS = xml_document.o xml_relax_ng.o html_sax_parser.o xml_xpath.o xml_entity_reference.o xml_io.o xml_text.o xml_processing_instruction.o xml_cdata.o xslt_stylesheet.o xml_syntax_error.o xml_node.o xml_schema.o xml_comment.o xml_attr.o xml_namespace.o xml_document_fragment.o html_element_description.o xml_sax_parser.o html_document.o xml_xpath_context.o xml_node_set.o xml_dtd.o xml_sax_push_parser.o nokogiri.o xml_reader.o html_entity_lookup.o
TARGET = nokogiri
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/ror/store5/vendor/gems/nokogiri-1.3.3/lib$(target_prefix)
RUBYARCHDIR = /home/ror/store5/vendor/gems/nokogiri-1.3.3/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(RUBYARCHDIR) $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h
