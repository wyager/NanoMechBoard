<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.05" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="yes" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="yes" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="yes" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="yes" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="yes" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="yes" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="yes" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="yes" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="yes" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="yes" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="yes" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="yes" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="yes" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="yes" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="yes" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="yes" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="yes" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="yes" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="my_parts">
<packages>
<package name="CHERRYMX-NN-LED">
<hole x="-5.08" y="0" drill="1.7526"/>
<hole x="5.08" y="0" drill="1.7526"/>
<hole x="0" y="0" drill="4.0894"/>
<wire x1="-7.747" y1="7.747" x2="-7.747" y2="-7.747" width="0.4064" layer="21"/>
<wire x1="-7.747" y1="-7.747" x2="7.747" y2="-7.747" width="0.4064" layer="21"/>
<wire x1="7.747" y1="-7.747" x2="7.747" y2="7.747" width="0.4064" layer="21"/>
<wire x1="7.747" y1="7.747" x2="-7.747" y2="7.747" width="0.4064" layer="21"/>
<pad name="SIDE" x="-3.81" y="2.54" drill="1.6" shape="square"/>
<pad name="UP" x="2.54" y="5.08" drill="1.6" shape="square"/>
<pad name="LED-" x="1.27" y="-5.08" drill="1" shape="square"/>
<pad name="LED+" x="-1.27" y="-5.08" drill="1" shape="square"/>
<text x="-7.112" y="-3.81" size="1.016" layer="21">CHERRY MX-NW-LED</text>
<text x="-3.81" y="-6.35" size="1.778" layer="21">+</text>
<text x="2.54" y="-6.35" size="1.778" layer="21">-</text>
</package>
<package name="SJ-43514_HEADPHONES-3.5MM_X4">
<pad name="1" x="0" y="4.826" drill="1" shape="square"/>
<pad name="4" x="0" y="-4.572" drill="1" shape="square"/>
<pad name="NC" x="0" y="0" drill="1" shape="square"/>
<wire x1="-2.794" y1="-4.826" x2="-2.794" y2="4.826" width="0.254" layer="21"/>
<wire x1="-2.794" y1="4.826" x2="8.128" y2="4.826" width="0.254" layer="21"/>
<wire x1="8.128" y1="4.826" x2="8.128" y2="-4.826" width="0.254" layer="21"/>
<wire x1="8.128" y1="-4.826" x2="3.81" y2="-4.826" width="0.254" layer="21"/>
<pad name="NC2" x="5.08" y="0" drill="1" shape="square"/>
<pad name="2" x="5.08" y="-3.556" drill="1" shape="square"/>
<pad name="3" x="8.128" y="1.524" drill="1" shape="square"/>
<pad name="5" x="8.128" y="-1.524" drill="1" shape="square"/>
<wire x1="-1.27" y1="-4.826" x2="-2.794" y2="-4.826" width="0.254" layer="21"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.254" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-4.826" x2="-1.27" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-3.81" x2="3.81" y2="-3.81" width="0.254" layer="21"/>
<wire x1="3.81" y1="-3.81" x2="3.81" y2="-4.826" width="0.254" layer="21"/>
<text x="-0.254" y="2.794" size="1.016" layer="21">1</text>
<text x="-0.254" y="-3.556" size="1.016" layer="21">4</text>
<text x="3.302" y="-3.556" size="1.016" layer="21">2</text>
<text x="7.112" y="2.54" size="1.016" layer="21">3</text>
</package>
<package name="RESISTORBIGPAD">
<description>A resistor with bigger solder pads</description>
<pad name="P$1" x="-3.81" y="0" drill="0.8" shape="square"/>
<pad name="P$2" x="3.81" y="0" drill="0.8" shape="square"/>
<wire x1="-1.905" y1="0.635" x2="1.905" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="0" width="0.127" layer="21"/>
<wire x1="1.905" y1="0" x2="1.905" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.905" y1="-0.635" x2="-1.905" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-0.635" x2="-1.905" y2="0" width="0.127" layer="21"/>
<wire x1="-1.905" y1="0" x2="-1.905" y2="0.635" width="0.127" layer="21"/>
<wire x1="-1.905" y1="0" x2="-3.175" y2="0" width="0.127" layer="21"/>
<wire x1="1.905" y1="0" x2="3.175" y2="0" width="0.127" layer="21"/>
</package>
<package name="NKK_GW_SERIES">
<pad name="P$1" x="-1.27" y="2.54" drill="0.8" shape="square"/>
<pad name="P$2" x="-1.27" y="0" drill="0.8" shape="square"/>
<pad name="P$3" x="-1.27" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$4" x="1.27" y="2.54" drill="0.8" shape="square"/>
<pad name="P$5" x="1.27" y="0" drill="0.8" shape="square"/>
<pad name="P$6" x="1.27" y="-2.54" drill="0.8" shape="square"/>
<wire x1="-2.54" y1="3.81" x2="2.54" y2="3.81" width="0.127" layer="21"/>
<wire x1="2.54" y1="3.81" x2="2.54" y2="-3.81" width="0.127" layer="21"/>
<wire x1="2.54" y1="-3.81" x2="-2.54" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="3.81" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="CHERYMX-NN-LED">
<rectangle x1="-3.81" y1="-3.81" x2="3.81" y2="3.81" layer="94"/>
<pin name="UP" x="0" y="7.62" length="middle" rot="R270"/>
<pin name="A" x="-7.62" y="0" length="middle"/>
<text x="-2.54" y="-7.62" size="1.016" layer="94">CHERRY
MX1A-NW</text>
<pin name="LED-" x="8.89" y="1.27" length="middle" rot="R180"/>
<pin name="LED+" x="8.89" y="-1.27" length="middle" rot="R180"/>
<text x="7.62" y="-3.81" size="1.778" layer="94">+</text>
<text x="7.62" y="2.54" size="1.778" layer="94">-</text>
</symbol>
<symbol name="SJ-43514_HEADPHONE_4X_3.5MM">
<rectangle x1="-17.78" y1="-2.54" x2="-15.24" y2="7.62" layer="94"/>
<wire x1="-12.7" y1="10.16" x2="-10.16" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="-7.62" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="0" y2="5.08" width="0.4064" layer="94"/>
<wire x1="0" y1="5.08" x2="2.54" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-5.08" y2="0" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="-15.24" y1="-2.54" x2="-15.24" y2="-7.62" width="0.4064" layer="94"/>
<pin name="1" x="12.7" y="-7.62" length="middle" rot="R180"/>
<pin name="3" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="2" x="12.7" y="7.62" length="middle" rot="R180"/>
<pin name="4" x="12.7" y="10.16" length="middle" rot="R180"/>
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.127" layer="94"/>
<wire x1="2.54" y1="7.62" x2="7.62" y2="7.62" width="0.127" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="7.62" y2="-2.54" width="0.127" layer="94"/>
<wire x1="-15.24" y1="-7.62" x2="7.62" y2="-7.62" width="0.127" layer="94"/>
</symbol>
<symbol name="RESISTORBIGPAD">
<pin name="P$1" x="10.16" y="0" length="middle" rot="R180"/>
<pin name="P$2" x="-10.16" y="0" length="middle"/>
<wire x1="-5.08" y1="1.778" x2="5.08" y2="1.778" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.778" x2="5.08" y2="-1.524" width="0.254" layer="94"/>
<wire x1="5.08" y1="-1.524" x2="-5.08" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-1.524" x2="-5.08" y2="1.778" width="0.254" layer="94"/>
</symbol>
<symbol name="NKK_GW_SERIES">
<pin name="P1" x="-12.7" y="5.08" length="middle"/>
<pin name="GND" x="-12.7" y="0" length="middle"/>
<pin name="P2" x="-12.7" y="-5.08" length="middle"/>
<pin name="NC" x="12.7" y="5.08" length="middle" rot="R180"/>
<pin name="LED+" x="12.7" y="0" length="middle" rot="R180"/>
<pin name="LED-" x="12.7" y="-5.08" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CHERRY-MX1A-E1NW-LED">
<description>A cherry MX NW switch, but also with a place to put a LED</description>
<gates>
<gate name="G$1" symbol="CHERYMX-NN-LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CHERRYMX-NN-LED">
<connects>
<connect gate="G$1" pin="A" pad="SIDE"/>
<connect gate="G$1" pin="LED+" pad="LED+"/>
<connect gate="G$1" pin="LED-" pad="LED-"/>
<connect gate="G$1" pin="UP" pad="UP"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SJ-43514_HEADPHONES_3.5MM_X4">
<description>This is for the SJ-43514 3.5mm 4-conductor headphone jack. Also works with SJ-4351X and SJ-43515TS</description>
<gates>
<gate name="G$1" symbol="SJ-43514_HEADPHONE_4X_3.5MM" x="5.08" y="-2.54"/>
</gates>
<devices>
<device name="" package="SJ-43514_HEADPHONES-3.5MM_X4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTORBIGPAD">
<gates>
<gate name="G$1" symbol="RESISTORBIGPAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESISTORBIGPAD">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NKK_GW_SERIES">
<gates>
<gate name="G$1" symbol="NKK_GW_SERIES" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NKK_GW_SERIES">
<connects>
<connect gate="G$1" pin="GND" pad="P$2"/>
<connect gate="G$1" pin="LED+" pad="P$5"/>
<connect gate="G$1" pin="LED-" pad="P$6"/>
<connect gate="G$1" pin="NC" pad="P$4"/>
<connect gate="G$1" pin="P1" pad="P$1"/>
<connect gate="G$1" pin="P2" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="diode">
<description>&lt;b&gt;Diodes&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Motorola : www.onsemi.com
&lt;li&gt;Fairchild : www.fairchildsemi.com
&lt;li&gt;Philips : www.semiconductors.com
&lt;li&gt;Vishay : www.vishay.de
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DO35-10">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
diameter 2 mm, horizontal, grid 10.16 mm</description>
<wire x1="5.08" y1="0" x2="4.191" y2="0" width="0.508" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.191" y2="0" width="0.508" layer="51"/>
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.032" y1="1.016" x2="2.286" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="0.762" x2="-2.032" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-0.762" x2="2.286" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0.762" x2="-2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.016" x2="2.032" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-1.016" x2="2.032" y2="-1.016" width="0.1524" layer="21"/>
<pad name="C" x="-5.08" y="0" drill="0.8128" shape="long"/>
<pad name="A" x="5.08" y="0" drill="0.8128" shape="long"/>
<text x="-2.159" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.905" y1="-1.016" x2="-1.397" y2="1.016" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="4.191" y2="0.254" layer="21"/>
<rectangle x1="-4.191" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
</package>
<package name="DO35-7">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
diameter 2 mm, horizontal, grid 7.62 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.032" y1="1.016" x2="2.286" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="0.762" x2="2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.286" y1="0.762" x2="-2.032" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.032" y1="-1.016" x2="2.032" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0.762" x2="-2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.016" x2="2.032" y2="1.016" width="0.1524" layer="21"/>
<pad name="C" x="-3.81" y="0" drill="0.8128" shape="long"/>
<pad name="A" x="3.81" y="0" drill="0.8128" shape="long"/>
<text x="-2.286" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.905" y1="-1.016" x2="-1.397" y2="1.016" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="D">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<text x="2.54" y="0.4826" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.3114" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1N4148" prefix="D">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
high speed (Philips)</description>
<gates>
<gate name="G$1" symbol="D" x="0" y="0"/>
</gates>
<devices>
<device name="DO35-10" package="DO35-10">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DO35-7" package="DO35-7">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="teensy2">
<description>Teensy2 package with C and Arduino symbol mappings.</description>
<packages>
<package name="TEENSY2">
<description>http://pjrc.com/teensy/index.html</description>
<wire x1="-8.89" y1="17.78" x2="8.89" y2="17.78" width="0.127" layer="21"/>
<wire x1="8.89" y1="17.78" x2="8.89" y2="-12.7" width="0.127" layer="21"/>
<wire x1="-8.89" y1="-12.7" x2="-8.89" y2="17.78" width="0.127" layer="21"/>
<pad name="VCC" x="7.62" y="16.51" drill="0.9" shape="long"/>
<pad name="PF0" x="7.62" y="13.97" drill="0.9" shape="long"/>
<pad name="PF1" x="7.62" y="11.43" drill="0.9" shape="long"/>
<pad name="PF4" x="7.62" y="8.89" drill="0.9" shape="long"/>
<pad name="PF5" x="7.62" y="6.35" drill="0.9" shape="long"/>
<pad name="PF6" x="7.62" y="3.81" drill="0.9" shape="long"/>
<pad name="PF7" x="7.62" y="1.27" drill="0.9" shape="long"/>
<pad name="PB6" x="7.62" y="-1.27" drill="0.9" shape="long"/>
<pad name="PB5" x="7.62" y="-3.81" drill="0.9" shape="long"/>
<pad name="PB4" x="7.62" y="-6.35" drill="0.9" shape="long"/>
<pad name="PD7" x="7.62" y="-8.89" drill="0.9" shape="long"/>
<pad name="PD6" x="7.62" y="-11.43" drill="0.9" shape="square" rot="R270"/>
<pad name="PC7" x="-7.62" y="-11.43" drill="0.9" shape="square" rot="R270"/>
<pad name="PC6" x="-7.62" y="-8.89" drill="0.9" shape="long"/>
<pad name="PD3" x="-7.62" y="-6.35" drill="0.9" shape="long"/>
<pad name="PD2" x="-7.62" y="-3.81" drill="0.9" shape="long"/>
<pad name="PD1" x="-7.62" y="-1.27" drill="0.9" shape="long"/>
<pad name="PD0" x="-7.62" y="1.27" drill="0.9" shape="long"/>
<pad name="PB7" x="-7.62" y="3.81" drill="0.9" shape="long"/>
<pad name="PB3" x="-7.62" y="6.35" drill="0.9" shape="long"/>
<pad name="PB2" x="-7.62" y="8.89" drill="0.9" shape="long"/>
<pad name="PB1" x="-7.62" y="11.43" drill="0.9" shape="long"/>
<pad name="PB0" x="-7.62" y="13.97" drill="0.9" shape="long" rot="R180"/>
<pad name="GND" x="-7.62" y="16.51" drill="0.9" shape="long"/>
<text x="-5.08" y="11.43" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.08" y="8.89" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-8.89" y1="-12.7" x2="8.89" y2="-12.7" width="0.127" layer="21"/>
<rectangle x1="-2.54" y1="13.97" x2="2.54" y2="17.78" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="C">
<wire x1="-25.4" y1="22.86" x2="-25.4" y2="-58.42" width="0.254" layer="94"/>
<wire x1="-25.4" y1="-58.42" x2="7.62" y2="-58.42" width="0.254" layer="94"/>
<wire x1="7.62" y1="-58.42" x2="7.62" y2="22.86" width="0.254" layer="94"/>
<wire x1="7.62" y1="22.86" x2="-25.4" y2="22.86" width="0.254" layer="94"/>
<text x="-5.08" y="17.78" size="1.27" layer="95">&gt;NAME</text>
<text x="-5.08" y="12.7" size="1.27" layer="96">&gt;VALUE</text>
<pin name="GND" x="-27.94" y="20.32" length="middle" direction="pwr"/>
<pin name="SS,PB0" x="-30.48" y="17.78" function="dot"/>
<pin name="SCLK,PB1" x="-30.48" y="15.24" function="dot"/>
<pin name="MOSI,PB2" x="-30.48" y="12.7" function="dot"/>
<pin name="MISO,PB3" x="-30.48" y="10.16" function="dot"/>
<pin name="RTS,OC1C,OC0A,PB7" x="-30.48" y="7.62" function="dot"/>
<pin name="OC0B,SCL,INT0,PD0" x="-30.48" y="5.08" function="dot"/>
<pin name="SDA,INIT1,PD1" x="-30.48" y="2.54" function="dot"/>
<pin name="RXD1,INT2,PD2" x="-30.48" y="0" function="dot"/>
<pin name="TXD1,INT3,PD3" x="-30.48" y="-2.54" function="dot"/>
<pin name="OC4ABAR,OC3A,PC6" x="-30.48" y="-5.08" function="dot"/>
<pin name="OC4A,ICP3,PC7" x="-30.48" y="-7.62" function="dot"/>
<pin name="OC4DBAR,T1,ADC9,PD6" x="-30.48" y="-22.86" function="dot"/>
<pin name="OC4D,T0,ADC10,PD7" x="-30.48" y="-25.4" function="dot"/>
<pin name="ADC11,PB4" x="-30.48" y="-27.94" function="dot"/>
<pin name="OC4BBAR,OC1A,ADC12,PB5" x="-30.48" y="-30.48" function="dot"/>
<pin name="OC4B,OC1B,ADC13,PB6" x="-30.48" y="-33.02" function="dot"/>
<pin name="ADC7,PF7" x="-30.48" y="-35.56" function="dot"/>
<pin name="ADC6,PF6" x="-30.48" y="-38.1" function="dot"/>
<pin name="ADC5,PF5" x="-30.48" y="-40.64" function="dot"/>
<pin name="ADC4,PF4" x="-30.48" y="-43.18" function="dot"/>
<pin name="ADC1,PF1" x="-30.48" y="-45.72" function="dot"/>
<pin name="ADC0,PF0" x="-30.48" y="-48.26" function="dot"/>
<pin name="VCC" x="-27.94" y="-50.8" length="middle" direction="pwr"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TEENSY2-C">
<gates>
<gate name="G$1" symbol="C" x="7.62" y="15.24"/>
</gates>
<devices>
<device name="C-VERSION" package="TEENSY2">
<connects>
<connect gate="G$1" pin="ADC0,PF0" pad="PF0"/>
<connect gate="G$1" pin="ADC1,PF1" pad="PF1"/>
<connect gate="G$1" pin="ADC11,PB4" pad="PB4"/>
<connect gate="G$1" pin="ADC4,PF4" pad="PF4"/>
<connect gate="G$1" pin="ADC5,PF5" pad="PF5"/>
<connect gate="G$1" pin="ADC6,PF6" pad="PF6"/>
<connect gate="G$1" pin="ADC7,PF7" pad="PF7"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="MISO,PB3" pad="PB3"/>
<connect gate="G$1" pin="MOSI,PB2" pad="PB2"/>
<connect gate="G$1" pin="OC0B,SCL,INT0,PD0" pad="PD0"/>
<connect gate="G$1" pin="OC4A,ICP3,PC7" pad="PC7"/>
<connect gate="G$1" pin="OC4ABAR,OC3A,PC6" pad="PC6"/>
<connect gate="G$1" pin="OC4B,OC1B,ADC13,PB6" pad="PB6"/>
<connect gate="G$1" pin="OC4BBAR,OC1A,ADC12,PB5" pad="PB5"/>
<connect gate="G$1" pin="OC4D,T0,ADC10,PD7" pad="PD7"/>
<connect gate="G$1" pin="OC4DBAR,T1,ADC9,PD6" pad="PD6"/>
<connect gate="G$1" pin="RTS,OC1C,OC0A,PB7" pad="PB7"/>
<connect gate="G$1" pin="RXD1,INT2,PD2" pad="PD2"/>
<connect gate="G$1" pin="SCLK,PB1" pad="PB1"/>
<connect gate="G$1" pin="SDA,INIT1,PD1" pad="PD1"/>
<connect gate="G$1" pin="SS,PB0" pad="PB0"/>
<connect gate="G$1" pin="TXD1,INT3,PD3" pad="PD3"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA04-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="3.81" y="1.27" drill="1.016" shape="octagon"/>
<text x="-5.08" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA04-2">
<wire x1="3.81" y1="-7.62" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<text x="-3.81" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA04-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA04-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA04-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$2" library="my_parts" deviceset="CHERRY-MX1A-E1NW-LED" device=""/>
<part name="D1" library="diode" deviceset="1N4148" device="DO35-7" value=""/>
<part name="U$1" library="my_parts" deviceset="CHERRY-MX1A-E1NW-LED" device=""/>
<part name="D2" library="diode" deviceset="1N4148" device="DO35-7" value=""/>
<part name="U$7" library="my_parts" deviceset="CHERRY-MX1A-E1NW-LED" device=""/>
<part name="D7" library="diode" deviceset="1N4148" device="DO35-7" value=""/>
<part name="U$8" library="my_parts" deviceset="CHERRY-MX1A-E1NW-LED" device=""/>
<part name="D8" library="diode" deviceset="1N4148" device="DO35-7" value=""/>
<part name="U$9" library="my_parts" deviceset="CHERRY-MX1A-E1NW-LED" device=""/>
<part name="D9" library="diode" deviceset="1N4148" device="DO35-7" value=""/>
<part name="U$10" library="my_parts" deviceset="CHERRY-MX1A-E1NW-LED" device=""/>
<part name="D10" library="diode" deviceset="1N4148" device="DO35-7" value=""/>
<part name="U$25" library="my_parts" deviceset="CHERRY-MX1A-E1NW-LED" device=""/>
<part name="D25" library="diode" deviceset="1N4148" device="DO35-7" value=""/>
<part name="U$26" library="my_parts" deviceset="CHERRY-MX1A-E1NW-LED" device=""/>
<part name="D26" library="diode" deviceset="1N4148" device="DO35-7" value=""/>
<part name="U$27" library="my_parts" deviceset="CHERRY-MX1A-E1NW-LED" device=""/>
<part name="D27" library="diode" deviceset="1N4148" device="DO35-7" value=""/>
<part name="U$28" library="my_parts" deviceset="CHERRY-MX1A-E1NW-LED" device=""/>
<part name="D28" library="diode" deviceset="1N4148" device="DO35-7" value=""/>
<part name="U$31" library="teensy2" deviceset="TEENSY2-C" device="C-VERSION"/>
<part name="SUPPLY2" library="supply2" deviceset="GND" device=""/>
<part name="COMM" library="my_parts" deviceset="SJ-43514_HEADPHONES_3.5MM_X4" device=""/>
<part name="SUPPLY3" library="supply2" deviceset="GND" device=""/>
<part name="U$3" library="my_parts" deviceset="CHERRY-MX1A-E1NW-LED" device=""/>
<part name="U$4" library="my_parts" deviceset="CHERRY-MX1A-E1NW-LED" device=""/>
<part name="D3" library="diode" deviceset="1N4148" device="DO35-7" value=""/>
<part name="D4" library="diode" deviceset="1N4148" device="DO35-7" value=""/>
<part name="U$5" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$6" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$11" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$12" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$13" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$14" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$15" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$16" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$17" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$18" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$19" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$20" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="COMM1" library="my_parts" deviceset="SJ-43514_HEADPHONES_3.5MM_X4" device=""/>
<part name="SUPPLY1" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY4" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY5" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY6" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY7" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY8" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY9" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY10" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY11" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY12" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY13" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY14" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY15" library="supply2" deviceset="GND" device=""/>
<part name="U$21" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$22" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$23" library="my_parts" deviceset="NKK_GW_SERIES" device=""/>
<part name="U$24" library="my_parts" deviceset="NKK_GW_SERIES" device=""/>
<part name="SUPPLY16" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY17" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY18" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY19" library="supply2" deviceset="GND" device=""/>
<part name="U$29" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="U$30" library="my_parts" deviceset="RESISTORBIGPAD" device=""/>
<part name="SV1" library="con-lstb" deviceset="MA04-2" device=""/>
<part name="SUPPLY20" library="supply2" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="P+3" library="supply1" deviceset="VCC" device=""/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="P+6" library="supply1" deviceset="VCC" device=""/>
<part name="P+5" library="supply1" deviceset="VCC" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$2" gate="G$1" x="31.75" y="39.37"/>
<instance part="D1" gate="G$1" x="31.75" y="49.53" rot="R90"/>
<instance part="U$1" gate="G$1" x="49.53" y="39.37"/>
<instance part="D2" gate="G$1" x="49.53" y="49.53" rot="R90"/>
<instance part="U$7" gate="G$1" x="31.75" y="69.85"/>
<instance part="D7" gate="G$1" x="31.75" y="80.01" rot="R90"/>
<instance part="U$8" gate="G$1" x="49.53" y="69.85"/>
<instance part="D8" gate="G$1" x="49.53" y="80.01" rot="R90"/>
<instance part="U$9" gate="G$1" x="67.31" y="69.85"/>
<instance part="D9" gate="G$1" x="67.31" y="80.01" rot="R90"/>
<instance part="U$10" gate="G$1" x="85.09" y="69.85"/>
<instance part="D10" gate="G$1" x="85.09" y="80.01" rot="R90"/>
<instance part="U$25" gate="G$1" x="31.75" y="102.87"/>
<instance part="D25" gate="G$1" x="31.75" y="113.03" rot="R90"/>
<instance part="U$26" gate="G$1" x="49.53" y="102.87"/>
<instance part="D26" gate="G$1" x="49.53" y="113.03" rot="R90"/>
<instance part="U$27" gate="G$1" x="67.31" y="102.87"/>
<instance part="D27" gate="G$1" x="67.31" y="113.03" rot="R90"/>
<instance part="U$28" gate="G$1" x="85.09" y="102.87"/>
<instance part="D28" gate="G$1" x="85.09" y="113.03" rot="R90"/>
<instance part="U$31" gate="G$1" x="-20.32" y="114.3" rot="R180"/>
<instance part="SUPPLY2" gate="GND" x="12.7" y="93.98" rot="R90"/>
<instance part="COMM" gate="G$1" x="-86.36" y="111.76"/>
<instance part="SUPPLY3" gate="GND" x="-72.39" y="99.06"/>
<instance part="U$3" gate="G$1" x="67.31" y="39.37"/>
<instance part="U$4" gate="G$1" x="85.09" y="39.37"/>
<instance part="D3" gate="G$1" x="67.31" y="49.53" rot="R90"/>
<instance part="D4" gate="G$1" x="85.09" y="49.53" rot="R90"/>
<instance part="U$5" gate="G$1" x="111.76" y="22.86" rot="R180"/>
<instance part="U$6" gate="G$1" x="111.76" y="27.94" rot="R180"/>
<instance part="U$11" gate="G$1" x="111.76" y="33.02" rot="R180"/>
<instance part="U$12" gate="G$1" x="111.76" y="38.1" rot="R180"/>
<instance part="U$13" gate="G$1" x="111.76" y="68.58" rot="R180"/>
<instance part="U$14" gate="G$1" x="111.76" y="63.5" rot="R180"/>
<instance part="U$15" gate="G$1" x="111.76" y="58.42" rot="R180"/>
<instance part="U$16" gate="G$1" x="111.76" y="53.34" rot="R180"/>
<instance part="U$17" gate="G$1" x="111.76" y="101.6" rot="R180"/>
<instance part="U$18" gate="G$1" x="111.76" y="96.52" rot="R180"/>
<instance part="U$19" gate="G$1" x="111.76" y="91.44" rot="R180"/>
<instance part="U$20" gate="G$1" x="111.76" y="86.36" rot="R180"/>
<instance part="COMM1" gate="G$1" x="-83.82" y="78.74"/>
<instance part="SUPPLY1" gate="GND" x="40.64" y="43.18" rot="R180"/>
<instance part="SUPPLY4" gate="GND" x="58.42" y="43.18" rot="R180"/>
<instance part="SUPPLY5" gate="GND" x="76.2" y="43.18" rot="R180"/>
<instance part="SUPPLY6" gate="GND" x="93.98" y="43.18" rot="R180"/>
<instance part="SUPPLY7" gate="GND" x="93.98" y="73.66" rot="R180"/>
<instance part="SUPPLY8" gate="GND" x="76.2" y="73.66" rot="R180"/>
<instance part="SUPPLY9" gate="GND" x="58.42" y="73.66" rot="R180"/>
<instance part="SUPPLY10" gate="GND" x="40.64" y="73.66" rot="R180"/>
<instance part="SUPPLY11" gate="GND" x="40.64" y="106.68" rot="R180"/>
<instance part="SUPPLY12" gate="GND" x="58.42" y="106.68" rot="R180"/>
<instance part="SUPPLY13" gate="GND" x="76.2" y="106.68" rot="R180"/>
<instance part="SUPPLY14" gate="GND" x="93.98" y="106.68" rot="R180"/>
<instance part="SUPPLY15" gate="GND" x="-71.12" y="68.58"/>
<instance part="U$21" gate="G$1" x="-43.18" y="92.71" rot="R270"/>
<instance part="U$22" gate="G$1" x="-38.1" y="92.71" rot="R90"/>
<instance part="U$23" gate="G$1" x="-17.78" y="60.96" rot="R270"/>
<instance part="U$24" gate="G$1" x="-2.54" y="60.96" rot="R270"/>
<instance part="SUPPLY16" gate="GND" x="-2.54" y="76.2" rot="R180"/>
<instance part="SUPPLY17" gate="GND" x="-17.78" y="76.2" rot="R180"/>
<instance part="SUPPLY18" gate="GND" x="-22.86" y="45.72"/>
<instance part="SUPPLY19" gate="GND" x="-7.62" y="45.72"/>
<instance part="U$29" gate="G$1" x="-17.78" y="38.1" rot="R90"/>
<instance part="U$30" gate="G$1" x="-2.54" y="38.1" rot="R90"/>
<instance part="SV1" gate="G$1" x="-43.18" y="121.92" rot="R180"/>
<instance part="SUPPLY20" gate="GND" x="-53.34" y="127" rot="R270"/>
<instance part="P+1" gate="VCC" x="10.16" y="165.1" rot="R270"/>
<instance part="P+2" gate="VCC" x="-53.34" y="119.38" rot="R90"/>
<instance part="P+3" gate="VCC" x="-73.66" y="124.46"/>
<instance part="P+4" gate="VCC" x="-71.12" y="91.44"/>
<instance part="P+6" gate="VCC" x="-38.1" y="80.01" rot="R180"/>
<instance part="P+5" gate="VCC" x="-43.18" y="80.01" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="UP"/>
<pinref part="D1" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="UP"/>
<pinref part="D2" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="UP"/>
<pinref part="D7" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="UP"/>
<pinref part="D8" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="UP"/>
<pinref part="D9" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="UP"/>
<pinref part="D10" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U$25" gate="G$1" pin="UP"/>
<pinref part="D25" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U$26" gate="G$1" pin="UP"/>
<pinref part="D26" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U$27" gate="G$1" pin="UP"/>
<pinref part="D27" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="U$28" gate="G$1" pin="UP"/>
<pinref part="D28" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="36.83" y1="154.94" x2="36.83" y2="52.07" width="0.1524" layer="91"/>
<wire x1="36.83" y1="52.07" x2="31.75" y2="52.07" width="0.1524" layer="91"/>
<pinref part="D7" gate="G$1" pin="C"/>
<wire x1="36.83" y1="52.07" x2="36.83" y2="82.55" width="0.1524" layer="91"/>
<wire x1="36.83" y1="82.55" x2="31.75" y2="82.55" width="0.1524" layer="91"/>
<junction x="36.83" y="52.07"/>
<pinref part="D25" gate="G$1" pin="C"/>
<wire x1="36.83" y1="82.55" x2="36.83" y2="115.57" width="0.1524" layer="91"/>
<wire x1="36.83" y1="115.57" x2="31.75" y2="115.57" width="0.1524" layer="91"/>
<junction x="36.83" y="82.55"/>
<pinref part="U$31" gate="G$1" pin="ADC5,PF5"/>
<wire x1="36.83" y1="154.94" x2="10.16" y2="154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="D2" gate="G$1" pin="C"/>
<wire x1="54.61" y1="157.48" x2="54.61" y2="52.07" width="0.1524" layer="91"/>
<wire x1="54.61" y1="52.07" x2="49.53" y2="52.07" width="0.1524" layer="91"/>
<pinref part="D8" gate="G$1" pin="C"/>
<wire x1="54.61" y1="52.07" x2="54.61" y2="82.55" width="0.1524" layer="91"/>
<wire x1="54.61" y1="82.55" x2="49.53" y2="82.55" width="0.1524" layer="91"/>
<junction x="54.61" y="52.07"/>
<pinref part="D26" gate="G$1" pin="C"/>
<wire x1="54.61" y1="82.55" x2="54.61" y2="115.57" width="0.1524" layer="91"/>
<wire x1="54.61" y1="115.57" x2="49.53" y2="115.57" width="0.1524" layer="91"/>
<junction x="54.61" y="82.55"/>
<pinref part="U$31" gate="G$1" pin="ADC4,PF4"/>
<wire x1="54.61" y1="157.48" x2="10.16" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<wire x1="72.39" y1="160.02" x2="72.39" y2="82.55" width="0.1524" layer="91"/>
<pinref part="D9" gate="G$1" pin="C"/>
<wire x1="72.39" y1="52.07" x2="72.39" y2="82.55" width="0.1524" layer="91"/>
<wire x1="72.39" y1="82.55" x2="67.31" y2="82.55" width="0.1524" layer="91"/>
<pinref part="D27" gate="G$1" pin="C"/>
<wire x1="72.39" y1="82.55" x2="72.39" y2="115.57" width="0.1524" layer="91"/>
<wire x1="72.39" y1="115.57" x2="67.31" y2="115.57" width="0.1524" layer="91"/>
<junction x="72.39" y="82.55"/>
<pinref part="D3" gate="G$1" pin="C"/>
<wire x1="67.31" y1="52.07" x2="72.39" y2="52.07" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="ADC1,PF1"/>
<wire x1="72.39" y1="160.02" x2="10.16" y2="160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<wire x1="90.17" y1="162.56" x2="90.17" y2="82.55" width="0.1524" layer="91"/>
<pinref part="D10" gate="G$1" pin="C"/>
<wire x1="90.17" y1="52.07" x2="90.17" y2="82.55" width="0.1524" layer="91"/>
<wire x1="90.17" y1="82.55" x2="85.09" y2="82.55" width="0.1524" layer="91"/>
<pinref part="D28" gate="G$1" pin="C"/>
<wire x1="90.17" y1="82.55" x2="90.17" y2="115.57" width="0.1524" layer="91"/>
<wire x1="90.17" y1="115.57" x2="85.09" y2="115.57" width="0.1524" layer="91"/>
<junction x="90.17" y="82.55"/>
<pinref part="D4" gate="G$1" pin="C"/>
<wire x1="90.17" y1="52.07" x2="85.09" y2="52.07" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="ADC0,PF0"/>
<wire x1="90.17" y1="162.56" x2="10.16" y2="162.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="A"/>
<wire x1="24.13" y1="39.37" x2="24.13" y2="34.29" width="0.1524" layer="91"/>
<wire x1="24.13" y1="34.29" x2="41.91" y2="34.29" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="A"/>
<wire x1="41.91" y1="34.29" x2="41.91" y2="39.37" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="A"/>
<wire x1="41.91" y1="34.29" x2="59.69" y2="34.29" width="0.1524" layer="91"/>
<wire x1="59.69" y1="34.29" x2="59.69" y2="39.37" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="A"/>
<wire x1="59.69" y1="34.29" x2="77.47" y2="34.29" width="0.1524" layer="91"/>
<wire x1="77.47" y1="34.29" x2="77.47" y2="39.37" width="0.1524" layer="91"/>
<wire x1="24.13" y1="39.37" x2="19.05" y2="39.37" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="ADC11,PB4"/>
<wire x1="19.05" y1="39.37" x2="19.05" y2="142.24" width="0.1524" layer="91"/>
<wire x1="19.05" y1="142.24" x2="10.16" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="A"/>
<wire x1="24.13" y1="69.85" x2="24.13" y2="64.77" width="0.1524" layer="91"/>
<wire x1="24.13" y1="64.77" x2="41.91" y2="64.77" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="A"/>
<wire x1="41.91" y1="64.77" x2="41.91" y2="69.85" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="A"/>
<wire x1="41.91" y1="64.77" x2="59.69" y2="64.77" width="0.1524" layer="91"/>
<wire x1="59.69" y1="64.77" x2="59.69" y2="69.85" width="0.1524" layer="91"/>
<junction x="41.91" y="64.77"/>
<pinref part="U$10" gate="G$1" pin="A"/>
<wire x1="59.69" y1="64.77" x2="77.47" y2="64.77" width="0.1524" layer="91"/>
<wire x1="77.47" y1="64.77" x2="77.47" y2="69.85" width="0.1524" layer="91"/>
<junction x="59.69" y="64.77"/>
<wire x1="24.13" y1="69.85" x2="20.32" y2="69.85" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="ADC7,PF7"/>
<wire x1="20.32" y1="69.85" x2="20.32" y2="149.86" width="0.1524" layer="91"/>
<wire x1="20.32" y1="149.86" x2="10.16" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="U$25" gate="G$1" pin="A"/>
<wire x1="24.13" y1="102.87" x2="24.13" y2="97.79" width="0.1524" layer="91"/>
<wire x1="24.13" y1="97.79" x2="41.91" y2="97.79" width="0.1524" layer="91"/>
<pinref part="U$26" gate="G$1" pin="A"/>
<wire x1="41.91" y1="97.79" x2="41.91" y2="102.87" width="0.1524" layer="91"/>
<junction x="41.91" y="97.79"/>
<pinref part="U$28" gate="G$1" pin="A"/>
<wire x1="41.91" y1="97.79" x2="59.69" y2="97.79" width="0.1524" layer="91"/>
<wire x1="59.69" y1="97.79" x2="77.47" y2="97.79" width="0.1524" layer="91"/>
<wire x1="77.47" y1="97.79" x2="77.47" y2="102.87" width="0.1524" layer="91"/>
<pinref part="U$27" gate="G$1" pin="A"/>
<wire x1="59.69" y1="102.87" x2="59.69" y2="97.79" width="0.1524" layer="91"/>
<junction x="59.69" y="97.79"/>
<wire x1="24.13" y1="102.87" x2="21.59" y2="102.87" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="ADC6,PF6"/>
<wire x1="21.59" y1="102.87" x2="21.59" y2="152.4" width="0.1524" layer="91"/>
<wire x1="21.59" y1="152.4" x2="10.16" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$31" gate="G$1" pin="GND"/>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
<wire x1="7.62" y1="93.98" x2="10.16" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
<pinref part="COMM" gate="G$1" pin="1"/>
<wire x1="-72.39" y1="101.6" x2="-72.39" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-72.39" y1="104.14" x2="-73.66" y2="104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$10" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY7" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY8" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY9" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY10" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$25" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY11" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$26" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY12" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$27" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY13" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$28" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY14" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="COMM1" gate="G$1" pin="1"/>
<pinref part="SUPPLY15" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$24" gate="G$1" pin="GND"/>
<pinref part="SUPPLY16" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$23" gate="G$1" pin="GND"/>
<pinref part="SUPPLY17" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$23" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY18" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$24" gate="G$1" pin="LED-"/>
<pinref part="SUPPLY19" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="SV1" gate="G$1" pin="1"/>
<pinref part="SUPPLY20" gate="GND" pin="GND"/>
<pinref part="SV1" gate="G$1" pin="2"/>
<wire x1="-50.8" y1="127" x2="-35.56" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="COMM" gate="G$1" pin="3"/>
<wire x1="-73.66" y1="109.22" x2="-53.34" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="109.22" x2="-38.1" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="109.22" x2="10.16" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="OC0B,SCL,INT0,PD0"/>
<pinref part="COMM1" gate="G$1" pin="3"/>
<wire x1="-71.12" y1="76.2" x2="-53.34" y2="76.2" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="76.2" x2="-53.34" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U$22" gate="G$1" pin="P$1"/>
<wire x1="-38.1" y1="102.87" x2="-38.1" y2="109.22" width="0.1524" layer="91"/>
<junction x="-38.1" y="109.22"/>
<junction x="-53.34" y="109.22"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="UP"/>
<pinref part="D3" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="UP"/>
<pinref part="D4" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="LED+"/>
<pinref part="U$12" gate="G$1" pin="P$1"/>
<wire x1="93.98" y1="38.1" x2="101.6" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="LED+"/>
<pinref part="U$11" gate="G$1" pin="P$1"/>
<wire x1="76.2" y1="38.1" x2="76.2" y2="33.02" width="0.1524" layer="91"/>
<wire x1="76.2" y1="33.02" x2="101.6" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="LED+"/>
<pinref part="U$6" gate="G$1" pin="P$1"/>
<wire x1="58.42" y1="38.1" x2="58.42" y2="27.94" width="0.1524" layer="91"/>
<wire x1="58.42" y1="27.94" x2="101.6" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="LED+"/>
<pinref part="U$5" gate="G$1" pin="P$1"/>
<wire x1="40.64" y1="38.1" x2="40.64" y2="22.86" width="0.1524" layer="91"/>
<wire x1="40.64" y1="22.86" x2="101.6" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="LED+"/>
<pinref part="U$13" gate="G$1" pin="P$1"/>
<wire x1="93.98" y1="68.58" x2="101.6" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="LED+"/>
<pinref part="U$14" gate="G$1" pin="P$1"/>
<wire x1="76.2" y1="68.58" x2="76.2" y2="63.5" width="0.1524" layer="91"/>
<wire x1="76.2" y1="63.5" x2="101.6" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="LED+"/>
<pinref part="U$15" gate="G$1" pin="P$1"/>
<wire x1="58.42" y1="68.58" x2="58.42" y2="58.42" width="0.1524" layer="91"/>
<wire x1="58.42" y1="58.42" x2="101.6" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="LED+"/>
<pinref part="U$16" gate="G$1" pin="P$1"/>
<wire x1="40.64" y1="68.58" x2="40.64" y2="53.34" width="0.1524" layer="91"/>
<wire x1="40.64" y1="53.34" x2="101.6" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U$28" gate="G$1" pin="LED+"/>
<pinref part="U$17" gate="G$1" pin="P$1"/>
<wire x1="93.98" y1="101.6" x2="101.6" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U$27" gate="G$1" pin="LED+"/>
<pinref part="U$18" gate="G$1" pin="P$1"/>
<wire x1="76.2" y1="101.6" x2="76.2" y2="96.52" width="0.1524" layer="91"/>
<wire x1="76.2" y1="96.52" x2="101.6" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="U$26" gate="G$1" pin="LED+"/>
<pinref part="U$19" gate="G$1" pin="P$1"/>
<wire x1="58.42" y1="101.6" x2="58.42" y2="91.44" width="0.1524" layer="91"/>
<wire x1="58.42" y1="91.44" x2="101.6" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U$25" gate="G$1" pin="LED+"/>
<pinref part="U$20" gate="G$1" pin="P$1"/>
<wire x1="40.64" y1="101.6" x2="40.64" y2="86.36" width="0.1524" layer="91"/>
<wire x1="40.64" y1="86.36" x2="101.6" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$23" gate="G$1" pin="LED+"/>
<pinref part="U$29" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$24" gate="G$1" pin="LED+"/>
<pinref part="U$30" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="4"/>
<pinref part="SV1" gate="G$1" pin="3"/>
<wire x1="-35.56" y1="124.46" x2="-50.8" y2="124.46" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="TXD1,INT3,PD3"/>
<wire x1="10.16" y1="116.84" x2="-30.48" y2="116.84" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="116.84" x2="-30.48" y2="124.46" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="124.46" x2="-35.56" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="6"/>
<pinref part="SV1" gate="G$1" pin="5"/>
<wire x1="-35.56" y1="121.92" x2="-50.8" y2="121.92" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="RXD1,INT2,PD2"/>
<wire x1="10.16" y1="114.3" x2="-33.02" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="114.3" x2="-33.02" y2="121.92" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="121.92" x2="-35.56" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="P$2"/>
<pinref part="U$6" gate="G$1" pin="P$2"/>
<pinref part="U$11" gate="G$1" pin="P$2"/>
<pinref part="U$12" gate="G$1" pin="P$2"/>
<wire x1="121.92" y1="38.1" x2="121.92" y2="33.02" width="0.1524" layer="91"/>
<wire x1="121.92" y1="33.02" x2="121.92" y2="27.94" width="0.1524" layer="91"/>
<wire x1="121.92" y1="27.94" x2="121.92" y2="22.86" width="0.1524" layer="91"/>
<wire x1="121.92" y1="38.1" x2="142.24" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="OC4B,OC1B,ADC13,PB6"/>
<wire x1="142.24" y1="38.1" x2="142.24" y2="147.32" width="0.1524" layer="91"/>
<wire x1="142.24" y1="147.32" x2="10.16" y2="147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="P$2"/>
<pinref part="U$15" gate="G$1" pin="P$2"/>
<pinref part="U$14" gate="G$1" pin="P$2"/>
<pinref part="U$13" gate="G$1" pin="P$2"/>
<wire x1="121.92" y1="68.58" x2="137.16" y2="68.58" width="0.1524" layer="91"/>
<wire x1="121.92" y1="68.58" x2="121.92" y2="63.5" width="0.1524" layer="91"/>
<wire x1="121.92" y1="63.5" x2="121.92" y2="58.42" width="0.1524" layer="91"/>
<wire x1="121.92" y1="58.42" x2="121.92" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="OC4BBAR,OC1A,ADC12,PB5"/>
<wire x1="137.16" y1="68.58" x2="137.16" y2="144.78" width="0.1524" layer="91"/>
<wire x1="137.16" y1="144.78" x2="10.16" y2="144.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="P$2"/>
<pinref part="U$19" gate="G$1" pin="P$2"/>
<pinref part="U$18" gate="G$1" pin="P$2"/>
<pinref part="U$17" gate="G$1" pin="P$2"/>
<wire x1="121.92" y1="101.6" x2="132.08" y2="101.6" width="0.1524" layer="91"/>
<wire x1="121.92" y1="101.6" x2="121.92" y2="96.52" width="0.1524" layer="91"/>
<wire x1="121.92" y1="96.52" x2="121.92" y2="91.44" width="0.1524" layer="91"/>
<wire x1="121.92" y1="91.44" x2="121.92" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="OC4D,T0,ADC10,PD7"/>
<wire x1="132.08" y1="101.6" x2="132.08" y2="139.7" width="0.1524" layer="91"/>
<wire x1="132.08" y1="139.7" x2="10.16" y2="139.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="U$31" gate="G$1" pin="VCC"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="SV1" gate="G$1" pin="7"/>
<pinref part="SV1" gate="G$1" pin="8"/>
<wire x1="-35.56" y1="119.38" x2="-50.8" y2="119.38" width="0.1524" layer="91"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<junction x="-50.8" y="119.38"/>
</segment>
<segment>
<pinref part="COMM" gate="G$1" pin="4"/>
<pinref part="P+3" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="COMM1" gate="G$1" pin="4"/>
<pinref part="P+4" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="U$22" gate="G$1" pin="P$2"/>
<pinref part="P+6" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="U$21" gate="G$1" pin="P$1"/>
<pinref part="P+5" gate="VCC" pin="VCC"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$31" gate="G$1" pin="SDA,INIT1,PD1"/>
<wire x1="10.16" y1="111.76" x2="-43.18" y2="111.76" width="0.1524" layer="91"/>
<pinref part="COMM" gate="G$1" pin="2"/>
<wire x1="-43.18" y1="111.76" x2="-63.5" y2="111.76" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="111.76" x2="-63.5" y2="119.38" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="119.38" x2="-73.66" y2="119.38" width="0.1524" layer="91"/>
<pinref part="COMM1" gate="G$1" pin="2"/>
<wire x1="-63.5" y1="111.76" x2="-63.5" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="86.36" x2="-71.12" y2="86.36" width="0.1524" layer="91"/>
<junction x="-63.5" y="111.76"/>
<pinref part="U$21" gate="G$1" pin="P$2"/>
<wire x1="-43.18" y1="102.87" x2="-43.18" y2="111.76" width="0.1524" layer="91"/>
<junction x="-43.18" y="111.76"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$31" gate="G$1" pin="OC4A,ICP3,PC7"/>
<wire x1="10.16" y1="121.92" x2="-25.4" y2="121.92" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="121.92" x2="-25.4" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="86.36" x2="-33.02" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="86.36" x2="-33.02" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="22.86" x2="-2.54" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U$30" gate="G$1" pin="P$2"/>
<wire x1="-2.54" y1="22.86" x2="-2.54" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$31" gate="G$1" pin="OC4ABAR,OC3A,PC6"/>
<wire x1="10.16" y1="119.38" x2="-22.86" y2="119.38" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="119.38" x2="-22.86" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="83.82" x2="-30.48" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="83.82" x2="-30.48" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="25.4" x2="-17.78" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U$29" gate="G$1" pin="P$2"/>
<wire x1="-17.78" y1="25.4" x2="-17.78" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U$31" gate="G$1" pin="SS,PB0"/>
<wire x1="10.16" y1="96.52" x2="0" y2="96.52" width="0.1524" layer="91"/>
<wire x1="0" y1="96.52" x2="0" y2="78.74" width="0.1524" layer="91"/>
<wire x1="0" y1="78.74" x2="2.54" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U$24" gate="G$1" pin="P1"/>
<wire x1="2.54" y1="78.74" x2="2.54" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="U$31" gate="G$1" pin="SCLK,PB1"/>
<wire x1="10.16" y1="99.06" x2="-7.62" y2="99.06" width="0.1524" layer="91"/>
<pinref part="U$24" gate="G$1" pin="P2"/>
<wire x1="-7.62" y1="99.06" x2="-7.62" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="U$31" gate="G$1" pin="MOSI,PB2"/>
<wire x1="10.16" y1="101.6" x2="-12.7" y2="101.6" width="0.1524" layer="91"/>
<pinref part="U$23" gate="G$1" pin="P1"/>
<wire x1="-12.7" y1="101.6" x2="-12.7" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="U$31" gate="G$1" pin="MISO,PB3"/>
<wire x1="10.16" y1="104.14" x2="-17.78" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="104.14" x2="-17.78" y2="81.28" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="81.28" x2="-22.86" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U$23" gate="G$1" pin="P2"/>
<wire x1="-22.86" y1="81.28" x2="-22.86" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
