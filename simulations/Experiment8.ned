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

package buaacomputernetworkexperimentaltutorial.simulations;

import inet.node.ethernet.Eth100M;
import inet.node.ethernet.EtherSwitch;
import inet.node.inet.StandardHost;
import inet.node.ospfv2.OspfRouter;
import inet.node.bgp.BgpRouter;
import inet.visualizer.integrated.IntegratedVisualizer;
import inet.visualizer.integrated.IntegratedMultiCanvasVisualizer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.common.scenario.ScenarioManager;

//
// TODO auto-generated type
//
network E8_1
{
    submodules:
        R1: BgpRouter {
            @display("p=105,55");
        }
        S1: BgpRouter {
            @display("p=155,95;i=device/switch");
        }
        S2: OspfRouter {
            @display("p=235,95;i=device/switch");
        }
        R2: BgpRouter {
            @display("p=285,55");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedMultiCanvasVisualizer {
            @display("p=40,90");
        }
    connections:
        R1.ethg++ <--> Eth100M <--> S1.ethg++;
        R2.ethg++ <--> Eth100M <--> S2.ethg++;
        S1.ethg++ <--> Eth100M <--> S2.ethg++;
}

network E8_D1
{
    submodules:
        R1: BgpRouter {
            @display("p=110,100");
        }
        S1: BgpRouter {
            @display("p=150,30;i=device/switch");
        }
        switch: EtherSwitch {
            @display("p=230,30");
        }
        S2: OspfRouter {
            @display("p=290,30;i=device/switch");
        }
        R2: BgpRouter {
            @display("p=270,100");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        R1.ethg++ <--> Eth100M <--> S1.ethg++;
        S1.ethg++ <--> Eth100M <--> switch.ethg++;
        S2.ethg++ <--> Eth100M <--> switch.ethg++;
        R2.ethg++ <--> Eth100M <--> switch.ethg++;
}
