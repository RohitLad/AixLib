within AixLib.DataBase.Radiators.Standard_MFD_WSchV1984_OneAppartment;
record Radiator_Children
  "ThermX2, Profil V (Kermi) Power=882W, L=1600, H=300, Typ=11, {75,65,20}"
  extends AixLib.DataBase.Radiators.RadiatorBaseDataDefinition(
    NominalPower=551,
    RT_nom={75,65,20},
    PressureDrop=583330,
    Exponent=1.2196,
    VolumeWater=1.80,
    MassSteel=9.87,
    Type=AixLib.Fluid.HeatExchangers.Radiators.BaseClasses.RadiatorTypes.ThermX2Typ11,
    length=1.6,
    height=0.3);
  annotation (Documentation(info="<html>
<p><h4><font color=\"#008000\">Overview</font></h4></p>
<p>Kermi radiator &QUOT;Flachheizk&ouml;rper&QUOT; ThermX2, Profil V </p>
<p>Delta_T = 75&deg;C - 65&deg;C = 10K</p>
<p><h4><font color=\"#008000\">Level of Development</font></h4></p>
<p><img src=\"modelica://HVAC/Images/stars5.png\"/></p>
<p><h4><font color=\"#008000\">Concept</font></h4></p>
<p><b>Attention</b>: The data for NominalPower, MassSteel and VolumeWater are given per 1 meter. </p>
<p><h4><font color=\"#008000\">References</font></h4></p>
<p>Record is used in model <a href=\"HVAC.Components.HeatExchanger.Radiator_ML\">HVAC.Components.HeatExchanger.Radiator_ML</a></p>
<p>Source:</p>
<p><ul>
<li>Manufacturer: Kermi</li>
<li>Product: Flachheizk&ouml;rper ThermX2 Profil V</li>
<li>Booklet: &QUOT;Flachheizk&ouml;rper&QUOT;, I/2010, Pages 44-52.</li>
<li>Bibtexkey:Kermi-FHK2010</li>
</ul></p>
</html>", revisions="<html>
<p><ul>
<li><i>August 13, 2013&nbsp;</i> by Ole Odendahl:<br/>Formatted documentation appropriately</li>
<li><i>November 15, 2011</i> by Ana Constantin:<br/>implemented</li>
</ul></p>
</html>"));
end Radiator_Children;