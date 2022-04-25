<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="ce_low" />
        <signal name="XLXN_4" />
        <signal name="CLOCK_IN" />
        <signal name="RESET" />
        <signal name="counter_high(31:16)" />
        <signal name="counter_high(21)" />
        <signal name="counter_high(20)" />
        <signal name="OUT_HIGH" />
        <signal name="OUT_LOW" />
        <port polarity="Input" name="CLOCK_IN" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="OUT_HIGH" />
        <port polarity="Output" name="OUT_LOW" />
        <blockdef name="cc16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <blockdef name="pullup">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
            <line x2="64" y1="-56" y2="-48" x1="48" />
            <line x2="48" y1="-72" y2="-56" x1="80" />
            <line x2="80" y1="-88" y2="-72" x1="48" />
            <line x2="48" y1="-104" y2="-88" x1="80" />
            <line x2="80" y1="-108" y2="-104" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="96" />
        </blockdef>
        <block symbolname="cc16ce" name="XLXI_1">
            <blockpin signalname="CLOCK_IN" name="C" />
            <blockpin signalname="XLXN_4" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="counter_high(31:16)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cc16ce" name="XLXI_2">
            <blockpin signalname="CLOCK_IN" name="C" />
            <blockpin signalname="ce_low" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_4" name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="obuf" name="XLXI_3">
            <blockpin signalname="counter_high(21)" name="I" />
            <blockpin signalname="OUT_HIGH" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_4">
            <blockpin signalname="counter_high(20)" name="I" />
            <blockpin signalname="OUT_LOW" name="O" />
        </block>
        <block symbolname="pullup" name="XLXI_5">
            <blockpin signalname="ce_low" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="768" y="752" name="XLXI_1" orien="R0" />
        <instance x="768" y="1248" name="XLXI_2" orien="R0" />
        <branch name="ce_low">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="470" y="1056" type="branch" />
            <wire x2="288" y1="1024" y2="1056" x1="288" />
            <wire x2="384" y1="1056" y2="1056" x1="288" />
            <wire x2="470" y1="1056" y2="1056" x1="384" />
            <wire x2="768" y1="1056" y2="1056" x1="470" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="768" y1="560" y2="560" x1="688" />
            <wire x2="688" y1="560" y2="784" x1="688" />
            <wire x2="1216" y1="784" y2="784" x1="688" />
            <wire x2="1216" y1="784" y2="1056" x1="1216" />
            <wire x2="1216" y1="1056" y2="1056" x1="1152" />
        </branch>
        <branch name="CLOCK_IN">
            <wire x2="464" y1="1120" y2="1120" x1="384" />
            <wire x2="473" y1="1120" y2="1120" x1="464" />
            <wire x2="484" y1="1120" y2="1120" x1="473" />
            <wire x2="496" y1="1120" y2="1120" x1="484" />
            <wire x2="624" y1="1120" y2="1120" x1="496" />
            <wire x2="768" y1="1120" y2="1120" x1="624" />
            <wire x2="768" y1="624" y2="624" x1="624" />
            <wire x2="624" y1="624" y2="1120" x1="624" />
        </branch>
        <branch name="RESET">
            <wire x2="415" y1="1216" y2="1216" x1="384" />
            <wire x2="440" y1="1216" y2="1216" x1="415" />
            <wire x2="452" y1="1216" y2="1216" x1="440" />
            <wire x2="468" y1="1216" y2="1216" x1="452" />
            <wire x2="544" y1="1216" y2="1216" x1="468" />
            <wire x2="768" y1="1216" y2="1216" x1="544" />
            <wire x2="768" y1="720" y2="720" x1="544" />
            <wire x2="544" y1="720" y2="1216" x1="544" />
        </branch>
        <branch name="counter_high(31:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1324" y="496" type="branch" />
            <wire x2="1282" y1="496" y2="496" x1="1152" />
            <wire x2="1324" y1="496" y2="496" x1="1282" />
            <wire x2="1584" y1="496" y2="496" x1="1324" />
            <wire x2="1584" y1="496" y2="544" x1="1584" />
            <wire x2="1584" y1="544" y2="704" x1="1584" />
            <wire x2="1584" y1="704" y2="752" x1="1584" />
        </branch>
        <bustap x2="1680" y1="544" y2="544" x1="1584" />
        <bustap x2="1680" y1="704" y2="704" x1="1584" />
        <instance x="1808" y="576" name="XLXI_3" orien="R0" />
        <instance x="1808" y="736" name="XLXI_4" orien="R0" />
        <branch name="counter_high(21)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1745" y="544" type="branch" />
            <wire x2="1711" y1="544" y2="544" x1="1680" />
            <wire x2="1745" y1="544" y2="544" x1="1711" />
            <wire x2="1808" y1="544" y2="544" x1="1745" />
        </branch>
        <branch name="counter_high(20)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="704" type="branch" />
            <wire x2="1744" y1="704" y2="704" x1="1680" />
            <wire x2="1808" y1="704" y2="704" x1="1744" />
        </branch>
        <branch name="OUT_HIGH">
            <wire x2="2064" y1="544" y2="544" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2064" y="544" name="OUT_HIGH" orien="R0" />
        <branch name="OUT_LOW">
            <wire x2="2064" y1="704" y2="704" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2064" y="704" name="OUT_LOW" orien="R0" />
        <iomarker fontsize="28" x="384" y="1216" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="384" y="1120" name="CLOCK_IN" orien="R180" />
        <instance x="224" y="1024" name="XLXI_5" orien="R0" />
    </sheet>
</drawing>