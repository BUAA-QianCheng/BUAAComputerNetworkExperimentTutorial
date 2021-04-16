//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package buaacomputernetworkexperimentaltutorial.simulations.unfinished;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
import inet.node.inet.SensorNode;
import inet.physicallayer.apskradio.packetlevel.ApskScalarRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;

network E14_1
{
    submodules:
        sensorA: SensorNode {
            @display("p=105,35");
        }
        sensorB: SensorNode {
            @display("p=195,45");
        }
        sensorC: SensorNode {
            @display("p=150,120");
        }
        BaseStation: SensorNode {
            @display("i=misc/sensorgateway;p=255,105");
        }
        PC: StandardHost {
            @display("p=355,105");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
        radioMedium: ApskScalarRadioMedium {
            @display("p=40,150");
        }
    connections:
        PC.ethg++ <--> Eth100M <--> BaseStation.ethg++;
}
