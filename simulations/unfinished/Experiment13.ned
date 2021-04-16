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
import inet.node.ethernet.EtherSwitch;
import inet.node.inet.StandardHost;
import inet.visualizer.integrated.IntegratedVisualizer;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.node.inet.WirelessHost;
import inet.node.wireless.AccessPoint;

//
// TODO auto-generated type
//
network E13_1
{
    submodules:
        PCA: WirelessHost {
            @display("p=125,125");
        }
        PCB: WirelessHost {
            @display("p=115,30");
        }
        AP: AccessPoint {
            @display("p=205,70");
        }
        Switch: EtherSwitch {
            @display("p=280,70");
        }
        AC: StandardHost {
            @display("p=355,70");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=40,150");
        }

    connections:
        AC.ethg++ <--> Eth100M <--> Switch.ethg++;
        AP.ethg++ <--> Eth100M <--> Switch.ethg++;
}
