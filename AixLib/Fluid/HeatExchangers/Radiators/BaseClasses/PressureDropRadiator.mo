within AixLib.Fluid.HeatExchangers.Radiators.BaseClasses;
model PressureDropRadiator
  "Calculates the pressure drop in a radiator according to manufacturer data"
  extends AixLib.Fluid.Interfaces.PartialTwoPortTransport;

  parameter Real PD
    "Pressure drop coefficient, delta_p[Pa] = PD*m_flow[kg/s]^2";

equation
   // Isenthalpic state transformation (no storage and no loss of energy)
  port_a.h_outflow = inStream(port_b.h_outflow);
  port_b.h_outflow = inStream(port_a.h_outflow);

  //Hydraulic Part: pressure drop

   port_b.p = if noEvent(port_a.m_flow>=0) then port_a.p - PD*port_a.m_flow*port_a.m_flow else  port_a.p + PD*port_a.m_flow*port_a.m_flow;

  annotation (
    Documentation(info="<html>
<p><h4><font color=\"#008000\">Overview</font></h4></p>
<p>Calculates the pressure drop in a radiator according to manufacturer data</p>
<p><h4><font color=\"#008000\">Concept</font></h4></p>
<p>The pressure drop is calculated according to the folowwing equation [1].</p>
<p><img src=\"modelica://AixLib/Resources/Images//Fluid/HeatExchanger/Radiator/equation-8xFaklFH.png\" alt=\"Delta_P = K*m_flow^2\"/></p>
<p>In order to determine <i>K, </i>manufacturer data is used and : </p>
<p><img src=\"modelica://AixLib/Resources/Images//Fluid/HeatExchanger/Radiator/PressureDrop.bmp\"/></p>
<p>With the help of the Matlab Curve Fit Toolbox a curve y = K*x^2 is fitted through several selected points. </p>
<p><h4><font color=\"#008000\">References</font></h4></p>
<p>[1] Ross, Hans: &quot;Hydraulik der Wasserheizung&quot;, Oldenbourg Indunstrieverlag GmbH, 2002.</p>
</html>",
  revisions="<html>
<p><ul>
<li><i>October, 2016&nbsp;</i> by Peter Remmen:<br/>Transfer to AixLib.</li>
<li><i>October 7, 2013&nbsp;</i> by Ole Odendahl:<br/>Formatted documentation appropriately</li>
<li><i>June 10, 2011&nbsp;</i> by Ana Constantin:<br/>Implemented.</li>
</ul></p>
</html>"),
    Diagram(graphics),
    Icon(graphics={Bitmap(extent={{-80,76},{94,-58}}, fileName=
              "modelica://AixLib/Resources/Images//Fluid/HeatExchanger/Radiator/PressureDrop.bmp")}));
end PressureDropRadiator;