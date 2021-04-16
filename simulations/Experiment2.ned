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

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.ethernet.EtherSwitch;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.visualizer.integrated.IntegratedVisualizer;

network E2_1
{
    submodules:
        PCA: StandardHost {
            @display("p=120,90");
        }
        PCB: StandardHost {
            @display("p=240,90");
        }
        S1: EtherSwitch {
            @display("p=180,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> S1.ethg++;
        PCB.ethg++ <--> Eth100M <--> S1.ethg++;
}

network E2_2
{
    submodules:
        PCA: StandardHost {
            @display("p=120,90");
        }
        PCB: StandardHost {
            @display("p=180,90");
        }
        PCC: StandardHost {
            @display("p=260,90");
        }
        PCD: StandardHost {
            @display("p=320,90");
        }
        S1: EtherSwitch {
            @display("p=150,30");
        }
        S2: EtherSwitch {
            @display("p=290,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> S1.ethg++;
        PCB.ethg++ <--> Eth100M <--> S1.ethg++;
        PCC.ethg++ <--> Eth100M <--> S2.ethg++;
        PCD.ethg++ <--> Eth100M <--> S2.ethg++;
        S1.ethg++ <--> Eth100M <--> S2.ethg++;
        S2.ethg++ <--> Eth100M <--> S1.ethg++;
}

network E2_3
{
    submodules:
        PCA: StandardHost {
            @display("p=120,90");
        }
        PCB: StandardHost {
            @display("p=180,90");
        }
        PCC: StandardHost {
            @display("p=240,90");
        }
        PCD: StandardHost {
            @display("p=300,90");
        }
        S1: EtherSwitch {
            @display("p=210,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> S1.ethg++;
        PCB.ethg++ <--> Eth100M <--> S1.ethg++;
        PCC.ethg++ <--> Eth100M <--> S1.ethg++;
        PCD.ethg++ <--> Eth100M <--> S1.ethg++;
}

network E2_4 extends E2_2
{
}

network E2_5
{
    submodules:
        R1: Router {
            @display("p=120,60");
        }
        R2: Router {
            @display("p=240,60");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        R1.pppg++ <--> Eth100M <--> R2.pppg++;
}

