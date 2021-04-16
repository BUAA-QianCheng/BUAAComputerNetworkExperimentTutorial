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
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.visualizer.integrated.IntegratedVisualizer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.common.scenario.ScenarioManager;
import inet.networklayer.ipv4.RoutingTableRecorder;


network E6_1
{
    submodules:
        PCA: StandardHost {
            @display("p=90,210");
        }
        PCB: StandardHost {
            @display("p=135,210");
        }
        PCC: StandardHost {
            @display("p=185,210");
        }
        PCD: StandardHost {
            @display("p=230,210");
        }
        S1: EtherSwitch {
            @display("p=160,150");
        }
        R1: Router {
            @display("p=160,90");
        }
        R2: Router {
            @display("p=160,30");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
        rtr: RoutingTableRecorder {
            @display("p=40,150;");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> S1.ethg++;
        PCB.ethg++ <--> Eth100M <--> S1.ethg++;
        PCC.ethg++ <--> Eth100M <--> S1.ethg++;
        PCD.ethg++ <--> Eth100M <--> S1.ethg++;
        S1.ethg++ <--> Eth100M <--> R1.ethg++;
        R1.ethg++ <--> Eth100M <--> R2.ethg++;
}

network E6_3
{
    submodules:
        PCA: StandardHost {
            @display("p=105,210");
        }
        PCB: StandardHost {
            @display("p=165,210");
        }
        PCC: StandardHost {
            @display("p=225,210");
        }
        PCD: StandardHost {
            @display("p=285,210");
        }
        S1: EtherSwitch {
            @display("p=135,150");
        }
        S2: EtherSwitch {
            @display("p=255,150");
        }
        R1: Router {
            @display("p=135,90");
        }
        R2: Router {
            @display("p=255,90");
        }
        R3: Router {
            @display("p=195,30");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
        scenarioManager: ScenarioManager {
            @display("p=40,150");
        }
        rtr: RoutingTableRecorder {
            @display("p=40,210;");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> S1.ethg++;
        PCB.ethg++ <--> Eth100M <--> S1.ethg++;
        PCC.ethg++ <--> Eth100M <--> S2.ethg++;
        PCD.ethg++ <--> Eth100M <--> S2.ethg++;
        S1.ethg++ <--> Eth100M <--> R1.ethg++;
        S2.ethg++ <--> Eth100M <--> R2.ethg++;
        R1.ethg++ <--> Eth100M <--> R3.ethg++;
        R2.ethg++ <--> Eth100M <--> R3.ethg++;
}

network E6_D2
{
    submodules:
        PCA: StandardHost {
            @display("p=125,150");
        }
        PCB: StandardHost {
            @display("p=300,150");
        }
        R1: Router {
            @display("p=125,90");
        }
        R2: Router {
            @display("p=175,30");
        }
        R3: Router {
            @display("p=250,30");
        }
        R4: Router {
            @display("p=300,90");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> R1.ethg++;
        PCB.ethg++ <--> Eth100M <--> R4.ethg++;
        R1.ethg++ <--> Eth100M <--> R2.ethg++;
        R4.ethg++ <--> Eth100M <--> R3.ethg++;
        R2.ethg++ <--> Eth100M <--> R3.ethg++;
}
