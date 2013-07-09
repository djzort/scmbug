<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <book>
  <bookinfo>
    <title><xsl:value-of select="opt/vdd/product_name"/><xsl:text> </xsl:text><xsl:value-of
select="opt/vdd/to_version"/><xsl:text> Version Description Document</xsl:text></title>
    <subtitle>Changes from <xsl:value-of select="opt/vdd/from_version"/> to <xsl:value-of select="opt/vdd/to_version"/></subtitle>

    <pubdate><xsl:value-of select="opt/vdd/production_date"/></pubdate>

    <abstract>
      <para>
	This document describes the changes the <xsl:value-of
select="opt/vdd/product_name"/> product underwent between versions
<xsl:value-of select="opt/vdd/from_version"/> on <xsl:value-of
select="opt/vdd/from_label_date"/> and <xsl:value-of
select="opt/vdd/to_version"/> on <xsl:value-of
select="opt/vdd/to_label_date"/>.
      </para>
    </abstract>
  </bookinfo>

  <chapter>
    <title>About</title>

    <para>
       This document describes the changes the <xsl:value-of
select="opt/vdd/product_name"/> product underwent between versions:
    </para>

    <itemizedlist spacing="compact">
      <listitem>
        <para>
          <xsl:value-of select="opt/vdd/from_version"/> on
          <xsl:value-of select="opt/vdd/from_label_date"/>, and
        </para>
      </listitem>
      <listitem>
        <para>
          <xsl:value-of select="opt/vdd/to_version"/> on
          <xsl:value-of select="opt/vdd/to_label_date"/>.
        </para>
      </listitem>
    </itemizedlist>

    <para>
     It was produced by SCM user <xsl:value-of select="opt/vdd/username"/> (bug-tracker user
     <xsl:value-of select="opt/vdd/translated_username"/>) on <xsl:value-of
     select="opt/vdd/production_date"/>.
    </para>

    <para>
       This document was produced using the <filename><xsl:text
disable-output-escaping="yes">&amp;devel-product-name-lower;</xsl:text>_vdd_generator.pl</filename>
of <xsl:text disable-output-escaping="yes">&lt;ulink
url="&amp;devel-product-webpage;"&gt;&amp;devel-product-name;&lt;/ulink&gt;
&amp;devel-product-version;</xsl:text>.
    </para>

  </chapter>


  <chapter>
    <title>All bugs</title>
  
    <para>
       This section contains the list of changes in all bugs, whether
any SCM activity occurred or not.
    </para>


    <section id="all-bugs-list-summary">
      <title>
        Summary
      </title>

      <para>
         A summary of all bugs follows:
      </para>
      <xsl:if test="opt/vdd/all_bugs[.!='']">
      <itemizedlist spacing="compact">
      <xsl:for-each select="opt/vdd/all_bugs">
	<listitem>
	  <para>
            <filename><ulink
                 url="{../bug_url_prefix}{data/bug_id}">[Bug <xsl:value-of select="name"/>]</ulink>[<xsl:value-of select="data/status"/>]:</filename><xsl:value-of select="data/summary"/>.
	  </para>
	</listitem>
      </xsl:for-each>
      </itemizedlist>
      </xsl:if>

    </section>


    <section id="all-bugs-list-detailed">
      <title>
        Detailed list
      </title>

      <para>
         A detailed list of all bugs follows.
      </para>

      <xsl:if test="opt/vdd/all_bugs[.!='']">
      <xsl:for-each select="opt/vdd/all_bugs">
      <section id="all-changes-list-bug-{name}">
        <title>
          Bug <xsl:value-of select="name"/>:<xsl:value-of select="data/summary"/>
        </title>

        <para>
          Bug <emphasis role="bold"><xsl:value-of select="name"/></emphasis>, priority <emphasis role="bold"><xsl:value-of select="data/priority"/></emphasis>, severity <emphasis role="bold"><xsl:value-of select="data/severity"/></emphasis>, status <emphasis role="bold"><xsl:value-of select="data/status"/></emphasis>.
        </para>

        <xsl:for-each select="data/comments">
	<para>
          <figure id="fig-all-bug-{../bug_id}-comment-{data/comment_id}">
  	     <title>
                Bug <xsl:value-of select="../bug_id"/>, comment <xsl:value-of select="data/comment_id"/>.
             </title>

             <screen>
Commited by <xsl:value-of select="data/author_name"/>, <xsl:value-of select="data/author_username"/>, <xsl:value-of select="data/author_email"/> on <xsl:value-of select="data/date"/>.
             </screen>

             <screen>
<xsl:value-of select="data/content"/>
             </screen>
          </figure>
        </para>
        </xsl:for-each>
      </section>
      </xsl:for-each>
      </xsl:if>


    </section>

  </chapter>




  <chapter>
    <title>New bugs</title>
  
    <para>
       This section contains only the list of new bugs introduced
between the two versions, whether any SCM activity occurred or
not. These bugs may have not been worked on yet, could be unconfirmed,
or may not even be bugs but feature requests or planned enhancements.
    </para>


    <section id="new-bugs-list-summary">
      <title>
        Summary
      </title>

      <para>
         A summary of new bugs follows:
      </para>

      <xsl:if test="opt/vdd/new_bugs[.!='']">
      <itemizedlist spacing="compact">
      <xsl:for-each select="opt/vdd/new_bugs">
	<listitem>
	  <para>
            <filename><ulink
                 url="{../bug_url_prefix}{data/bug_id}">[Bug <xsl:value-of select="name"/>]</ulink>[<xsl:value-of select="data/status"/>]:</filename><xsl:value-of select="data/summary"/>.
	  </para>
	</listitem>
      </xsl:for-each>
      </itemizedlist>
      </xsl:if>
    </section>


    <section id="new-bugs-list-detailed">
      <title>
        Detailed list
      </title>

      <para>
         A detailed list of new bugs follows.
      </para>


      <xsl:if test="opt/vdd/new_bugs[.!='']">
      <xsl:for-each select="opt/vdd/new_bugs">
      <section id="new-changes-list-bug-{name}">
        <title>
          Bug <xsl:value-of select="name"/>
          Bug <xsl:value-of select="name"/>:<xsl:value-of select="data/summary"/>
        </title>

        <para>
          Bug <emphasis role="bold"><xsl:value-of select="name"/></emphasis>, priority <emphasis role="bold"><xsl:value-of select="data/priority"/></emphasis>, severity <emphasis role="bold"><xsl:value-of select="data/severity"/></emphasis>, status <emphasis role="bold"><xsl:value-of select="data/status"/></emphasis>.
        </para>

        <xsl:for-each select="data/comments">
	<para>
          <figure id="fig-new-bug-{../bug_id}-comment-{data/comment_id}">
  	     <title>
                Bug <xsl:value-of select="../bug_id"/>, comment <xsl:value-of select="data/comment_id"/>.
             </title>

             <screen>
Commited by <xsl:value-of select="data/author_name"/>, <xsl:value-of select="data/author_username"/>, <xsl:value-of select="data/author_email"/> on <xsl:value-of select="data/date"/>.
             </screen>

             <screen>
<xsl:value-of select="data/content"/>
             </screen>
          </figure>
        </para>
        </xsl:for-each>
      </section>
      </xsl:for-each>
      </xsl:if>


    </section>


  </chapter>



  <chapter>
    <title>Bugs in progress</title>
  
    <para>
       This section contains only the list of bugs that have been
worked on but are not yet finished, whether any SCM activity occurred
or not.
    </para>


    <section id="inprogress-bugs-list-summary">
      <title>
        Summary
      </title>

      <para>
         A summary of bugs in progress follows:
      </para>

      <xsl:if test="opt/vdd/inprogress_bugs[.!='']">
      <itemizedlist spacing="compact">
      <xsl:for-each select="opt/vdd/inprogress_bugs">
	<listitem>
	  <para>
            <filename><ulink
                 url="{../bug_url_prefix}{data/bug_id}">[Bug <xsl:value-of select="name"/>]</ulink>[<xsl:value-of select="data/status"/>]:</filename><xsl:value-of select="data/summary"/>.
	  </para>
	</listitem>
      </xsl:for-each>
      </itemizedlist>
      </xsl:if>
    </section>


    <section id="inprogress-bugs-list-detailed">
      <title>
        Detailed list
      </title>

      <para>
         A detailed list of bugs in progress follows.
      </para>


      <xsl:if test="opt/vdd/inprogress_bugs[.!='']">
      <xsl:for-each select="opt/vdd/inprogress_bugs">
      <section id="inprogress-changes-list-bug-{name}">
        <title>
          Bug <xsl:value-of select="name"/>:<xsl:value-of select="data/summary"/>
        </title>

        <para>
          Bug <emphasis role="bold"><xsl:value-of select="name"/></emphasis>, priority <emphasis role="bold"><xsl:value-of select="data/priority"/></emphasis>, severity <emphasis role="bold"><xsl:value-of select="data/severity"/></emphasis>, status <emphasis role="bold"><xsl:value-of select="data/status"/></emphasis>.
        </para>

        <xsl:for-each select="data/comments">
	<para>
          <figure id="fig-inprogress-bug-{../bug_id}-comment-{data/comment_id}">
  	     <title>
                Bug <xsl:value-of select="../bug_id"/>, comment <xsl:value-of select="data/comment_id"/>.
             </title>

             <screen>
Commited by <xsl:value-of select="data/author_name"/>, <xsl:value-of select="data/author_username"/>, <xsl:value-of select="data/author_email"/> on <xsl:value-of select="data/date"/>.
             </screen>

             <screen>
<xsl:value-of select="data/content"/>
             </screen>
          </figure>
        </para>
        </xsl:for-each>
      </section>
      </xsl:for-each>
      </xsl:if>


    </section>


  </chapter>



  <chapter>
    <title>Closed bugs</title>
  
    <para>
       This section contains only the list of new bugs that were
resolved, verified, or closed, whether any SCM activity occurred or
not.
    </para>


    <section id="closed-bugs-list-summary">
      <title>
        Summary
      </title>

      <para>
         A summary of closed bugs follows:
      </para>

      <xsl:if test="opt/vdd/closed_bugs[.!='']">
      <itemizedlist spacing="compact">
      <xsl:for-each select="opt/vdd/closed_bugs">
	<listitem>
	  <para>
            <filename><ulink
                 url="{../bug_url_prefix}{data/bug_id}">[Bug <xsl:value-of select="name"/>]</ulink>[<xsl:value-of select="data/status"/>]:</filename><xsl:value-of select="data/summary"/>.
	  </para>
	</listitem>
      </xsl:for-each>
      </itemizedlist>
      </xsl:if>
    </section>


    <section id="closed-bugs-list-detailed">
      <title>
        Detailed list
      </title>

      <para>
         A detailed list of closed bugs follows.
      </para>


      <xsl:if test="opt/vdd/closed_bugs[.!='']">
      <xsl:for-each select="opt/vdd/closed_bugs">
      <section id="closed-changes-list-bug-{name}">
        <title>
          Bug <xsl:value-of select="name"/>:<xsl:value-of select="data/summary"/>
        </title>

        <para>
          Bug <emphasis role="bold"><xsl:value-of select="name"/></emphasis>, priority <emphasis role="bold"><xsl:value-of select="data/priority"/></emphasis>, severity <emphasis role="bold"><xsl:value-of select="data/severity"/></emphasis>, status <emphasis role="bold"><xsl:value-of select="data/status"/></emphasis>.
        </para>

        <xsl:for-each select="data/comments">
	<para>
          <figure id="fig-closed-bug-{../bug_id}-comment-{data/comment_id}">
  	     <title>
                Bug <xsl:value-of select="../bug_id"/>, comment <xsl:value-of select="data/comment_id"/>.
             </title>

             <screen>
Commited by <xsl:value-of select="data/author_name"/>, <xsl:value-of select="data/author_username"/>, <xsl:value-of select="data/author_email"/> on <xsl:value-of select="data/date"/>.
             </screen>

             <screen>
<xsl:value-of select="data/content"/>
             </screen>
          </figure>
        </para>
        </xsl:for-each>
      </section>
      </xsl:for-each>
      </xsl:if>


    </section>


  </chapter>



  <chapter>
    <title>Bugs closed with no SCM activity</title>
  
    <para>
       This section contains only the list of bugs that were closed
without any SCM activity. These bugs may have been determined to be
invalid, are higher-level metabugs (task groups), bugs that were
reopened but later determined that they weren't really bugs, etc.
    </para>


    <section id="closed-untouched-bugs-list-summary">
      <title>
        Summary
      </title>

      <para>
         A summary of bugs closed with no SCM activity follows:
      </para>

      <xsl:if test="opt/vdd/closed_untouched_bugs[.!='']">
      <itemizedlist spacing="compact">
      <xsl:for-each select="opt/vdd/closed_untouched_bugs">
	<listitem>
	  <para>
            <filename><ulink
                 url="{../bug_url_prefix}{data/bug_id}">[Bug <xsl:value-of select="name"/>]</ulink>[<xsl:value-of select="data/status"/>]:</filename><xsl:value-of select="data/summary"/>.
	  </para>
	</listitem>
      </xsl:for-each>
      </itemizedlist>
      </xsl:if>
    </section>


    <section id="closed-untouched-bugs-list-detailed">
      <title>
        Detailed list
      </title>

      <para>
         A detailed list of bugs closed with no SCM activity follows.
      </para>



      <xsl:if test="opt/vdd/closed_untouched_bugs[.!='']">
      <xsl:for-each select="opt/vdd/closed_untouched_bugs">
      <section id="closed-untouched_changes-list-bug-{name}">
        <title>
          Bug <xsl:value-of select="name"/>:<xsl:value-of select="data/summary"/>
        </title>

        <para>
          Bug <emphasis role="bold"><xsl:value-of select="name"/></emphasis>, priority <emphasis role="bold"><xsl:value-of select="data/priority"/></emphasis>, severity <emphasis role="bold"><xsl:value-of select="data/severity"/></emphasis>, status <emphasis role="bold"><xsl:value-of select="data/status"/></emphasis>.
        </para>

        <xsl:for-each select="data/comments">
	<para>
          <figure id="fig-closed-untouched-bug-{../bug_id}-comment-{data/comment_id}">
  	     <title>
                Bug <xsl:value-of select="../bug_id"/>, comment <xsl:value-of select="data/comment_id"/>.
             </title>

             <screen>
Commited by <xsl:value-of select="data/author_name"/>, <xsl:value-of select="data/author_username"/>, <xsl:value-of select="data/author_email"/> on <xsl:value-of select="data/date"/>.
             </screen>

             <screen>
<xsl:value-of select="data/content"/>
             </screen>
          </figure>
        </para>
        </xsl:for-each>
      </section>
      </xsl:for-each>
      </xsl:if>


    </section>



  </chapter>



  </book>
</xsl:template>

</xsl:stylesheet>
