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
import inet.node.inet.Router;
import inet.node.ospfv2.OspfRouter;
import inet.node.internetcloud.InternetCloud;
import inet.visualizer.integrated.IntegratedVisualizer;
import inet.visualizer.integrated.IntegratedMultiCanvasVisualizer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.networklayer.ipv4.RoutingTableRecorder;
import inet.common.scenario.ScenarioManager;

network E7_1
{
    submodules:
        R1: OspfRouter {
            @display("p=100,60");
        }
        R2: OspfRouter {
            @display("p=220,60");
        }
        S1: EtherSwitch {
            @display("p=160,60");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
        rtr: RoutingTableRecorder {
            @display("p=40,150");
        }
    connections:
        R1.ethg++ <--> Eth100M <--> S1.ethg++;
        R2.ethg++ <--> Eth100M <--> S1.ethg++;
}

network E7_3
{
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedMultiCanvasVisualizer {
            @display("p=40,90");
        }
        scenarioManager: ScenarioManager {
            @display("p=40,150");
        }
        Switch: EtherSwitch {
            @display("p=220,125");
        }
        S1: OspfRouter {
            @display("p=220,175");
        }
        S2: OspfRouter {
            @display("p=220,30");
        }
        R1: OspfRouter {
            @display("p=140,90");
        }
        R2: OspfRouter {
            @display("p=300,90");
        }

    connections:
        R1.ethg++ <--> Eth100M <--> Switch.ethg++;
        R2.ethg++ <--> Eth100M <--> Switch.ethg++;
        S2.ethg++ <--> Eth100M <--> Switch.ethg++;
        S1.ethg++ <--> Eth100M <--> Switch.ethg++;
}

network E7_4
{
    submodules:
        S1: Router {
            @display("p=100,90");
        }
        R1: OspfRouter {
            @display("p=160,50");
        }
        R2: OspfRouter {
            @display("p=240,50");
        }
        S2: OspfRouter {
            @display("p=300,90");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        S1.ethg++ <--> Eth100M <--> R1.ethg++;
        R1.ethg++ <--> Eth100M <--> R2.ethg++;
        R2.ethg++ <--> Eth100M <--> S2.ethg++;
}

network E7_5
{
    submodules:
        S1: OspfRouter {
            @display("p=125,40");
        }
        R1: OspfRouter {
            @display("p=230,40");
        }
        R2: OspfRouter {
            @display("p=180,100");
        }
        S2: OspfRouter {
            @display("p=180,160");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedMultiCanvasVisualizer {
            @display("p=40,90");
        }

    connections:
        S1.ethg++ <--> Eth100M <--> R1.ethg++;
        S1.ethg++ <--> Eth100M <--> R2.ethg++;
        R1.ethg++ <--> Eth100M <--> R2.ethg++;
        R2.ethg++ <--> Eth100M <--> S2.ethg++;
}

network E7_D1
{
    submodules:
        PCA: StandardHost {
            @display("p=100,120");
        }
        PCB: StandardHost {
            @display("p=280,120");
        }
        S1: OspfRouter {
            @display("p=100,60");
        }
        R1: OspfRouter {
            @display("p=160,30");
        }
        R2: OspfRouter {
            @display("p=220,30");
        }
        S2: OspfRouter {
            @display("p=280,60");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedMultiCanvasVisualizer {
            @display("p=40,90");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> S1.ethg++;
        PCB.ethg++ <--> Eth100M <--> S2.ethg++;
        S1.ethg++ <--> Eth100M <--> R1.ethg++;
        S2.ethg++ <--> Eth100M <--> R2.ethg++;
        R1.ethg++ <--> Eth100M <--> R2.ethg++;
}


network E7_D2
{
    submodules:
        PCA: StandardHost {
            @display("p=150,170");
        }
        PCB: StandardHost {
            @display("p=220,170");
        }
        S1: OspfRouter {
            @display("p=185,110");
        }
        R1: OspfRouter {
            @display("p=120,70");
        }
        R2: OspfRouter {
            @display("p=250,70");
        }
        S2: Router {
            @display("p=185,30");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedMultiCanvasVisualizer {
            @display("p=40,90");
        }
        scenarioManager: ScenarioManager {
            @display("p=40,150");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> S1.ethg++;
        PCB.ethg++ <--> Eth100M <--> S1.ethg++;
        S1.ethg++ <--> Eth100M <--> R1.ethg++;
        S1.ethg++ <--> Eth100M <--> R2.ethg++;
        R1.ethg++ <--> Eth100M <--> R2.ethg++;
        R1.ethg++ <--> Eth100M <--> S2.ethg++;
        R2.ethg++ <--> Eth100M <--> S2.ethg++;
}
