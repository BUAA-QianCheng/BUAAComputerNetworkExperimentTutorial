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
//
// TODO auto-generated type
//
network E3_1_1
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

network E3_1_2
{
    submodules:
        PCA: StandardHost {
            @display("p=120,90");
        }
        PCB: StandardHost {
            @display("p=240,90");
        }
        S1: Router {
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

network E3_3
{
    submodules:
        R1: Router {
            @display("p=120,90");
        }
        S1: EtherSwitch {
            @display("p=210,90");
        }
        PCA: StandardHost {
            @display("p=280,30");
        }
        PCB: StandardHost {
            @display("p=345,60");
        }
        PCC: StandardHost {
            @display("p=345,120");
        }
        PCD: StandardHost {
            @display("p=280,160");
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
        S1.ethg++ <--> Eth100M <--> R1.ethg++;
}

network E3_4
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
        S1: Router {
            @display("p=150,30;i=device/switch");
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
  	    S1.ethg++ <--> Eth100M <--> S2.ethg++;
}
