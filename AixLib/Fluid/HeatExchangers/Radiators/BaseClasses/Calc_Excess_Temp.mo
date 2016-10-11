within AixLib.Fluid.HeatExchangers.Radiators.BaseClasses;
class Calc_Excess_Temp
  "different choices of calculating the excess temperature of the radiator"

  constant Integer ari=1 "arithmetic calculation";
  constant Integer log=2 "logarithmic calculation";
  constant Integer exp=3 "exponential calculation";

  type Temp
    extends Integer;
    annotation (Evaluate=true, choices(
        choice=AixLib.Fluid.HeatExchangers.Radiators.BaseClasses.Calc_Excess_Temp.ari
          "arithmetic calculation",
        choice=AixLib.Fluid.HeatExchangers.Radiators.BaseClasses.Calc_Excess_Temp.log
          "logarithmic calculation",
        choice=AixLib.Fluid.HeatExchangers.Radiators.BaseClasses.Calc_Excess_Temp.exp
          "exponential calculation"));
  end Temp;

  annotation (Documentation(info="<html>
<p><h4><font color=\"#008000\">Overview</font></h4></p>
<p>
Variable to determine the different choice to calculate the excess temperature of a radiator.
</p>

</html>",
      revisions="<html>
<p><ul>
<li><i>October, 2016&nbsp;</i> by Peter Remmen:<br/>Transfer to AixLib.</li>
<li><i>October 7, 2013&nbsp;</i> by Ole Odendahl:<br/>Added documentation and formatted appropriately</li>
</ul></p>
</html>
"));
end Calc_Excess_Temp;
