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
import inet.node.inet.StandardHost;
import inet.node.inet.MulticastRouter;
import inet.node.ethernet.EtherSwitch;
import inet.visualizer.integrated.IntegratedVisualizer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;

network E10_1
{
    submodules:
        PCA: StandardHost {
            @display("p=100,60");
        }
        PCB: StandardHost {
            @display("p=250,60");
        }
        PCC: StandardHost {
            @display("p=250,120");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
        S1: EtherSwitch {
            @display("p=175,60");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> S1.ethg++;
        PCB.ethg++ <--> Eth100M <--> S1.ethg++;
        PCC.ethg++ <--> Eth100M <--> S1.ethg++;
}

network E10_2
{
    submodules:
        PCB: StandardHost {
            @display("p=100,150");
        }
        PCC: StandardHost {
            @display("p=170,150");
        }
        PCD: StandardHost {
            @display("p=240,150");
        }
        S1: EtherSwitch {
            @display("p=170,90");
        }
        R1: MulticastRouter {
            @display("p=125,40");
        }
        R2: MulticastRouter {
            @display("p=215,40");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        PCB.ethg++ <--> Eth100M <--> S1.ethg++;
        PCC.ethg++ <--> Eth100M <--> S1.ethg++;
        PCD.ethg++ <--> Eth100M <--> S1.ethg++;
        S1.ethg++ <--> Eth100M <--> R1.ethg++;
        S1.ethg++ <--> Eth100M <--> R2.ethg++;
}

network E10_3_1
{
    submodules:
        PCA: StandardHost {
            @display("p=140,40");
        }
        PCC: StandardHost {
            @display("p=260,160");
        }
        S2: EtherSwitch {
            @display("p=200,160");
        }
        R1: MulticastRouter {
            @display("p=140,100");
        }
        R2: MulticastRouter {
            @display("p=260,100");
        }
        R3: MulticastRouter {
            @display("p=200,40");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> R3.ethg++;
        PCC.ethg++ <--> Eth100M <--> S2.ethg++;
        R3.ethg++ <--> Eth100M <--> R1.ethg++;
        R3.ethg++ <--> Eth100M <--> R2.ethg++;
        S2.ethg++ <--> Eth100M <--> R1.ethg++;
        S2.ethg++ <--> Eth100M <--> R2.ethg++;

}

network E10_3_2
{
    submodules:
        PCA: StandardHost {
            @display("p=120,45");
        }
        PCB: StandardHost {
            @display("p=105,205");
        }
        PCC: StandardHost {
            @display("p=325,235");
        }
        PCD: StandardHost {
            @display("p=165,250");
        }
        S1: EtherSwitch {
            @display("p=265,235");
        }
        S2: EtherSwitch {
            @display("p=250,45");
        }
        S3: EtherSwitch {
            @display("p=165,165");
        }
        R1: MulticastRouter {
            @display("p=180,45");
        }
        R2: MulticastRouter {
            @display("p=410,150");
        }
        R3: MulticastRouter {
            @display("p=105,125");
        }
        R4: MulticastRouter {
            @display("p=210,200");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> R1.ethg++;
        PCB.ethg++ <--> Eth100M <--> R3.ethg++;
        PCC.ethg++ <--> Eth100M <--> S1.ethg++;
        PCD.ethg++ <--> Eth100M <--> S3.ethg++;
        S1.ethg++ <--> Eth100M <--> R2.ethg++;
        S1.ethg++ <--> Eth100M <--> R4.ethg++;
        S2.ethg++ <--> Eth100M <--> R1.ethg++;
        S2.ethg++ <--> Eth100M <--> R2.ethg++;
        S2.ethg++ <--> Eth100M <--> R3.ethg++;
        S3.ethg++ <--> Eth100M <--> R3.ethg++;
        S3.ethg++ <--> Eth100M <--> R4.ethg++;
}

network E10_3_3
{
    submodules:
        PCA: StandardHost {
            @display("p=110,80");
        }
        PCB: StandardHost {
            @display("p=420,80");
        }
        S1: EtherSwitch {
            @display("p=280,80");
        }
        R1: MulticastRouter {
            @display("p=180,80");
        }
        R2: MulticastRouter {
            @display("p=230,30");
        }
        R3: MulticastRouter {
            @display("p=230,130");
        }
        R4: MulticastRouter {
            @display("p=350,80");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections allowunconnected:
        PCA.ethg++ <--> Eth100M <--> R1.ethg++;
        PCB.ethg++ <--> Eth100M <--> R4.ethg++;
        R1.ethg++ <--> Eth100M <--> R2.ethg++;
        R1.ethg++ <--> Eth100M <--> R3.ethg++;
        R2.ethg++ <--> Eth100M <--> S1.ethg++;
        R3.ethg++ <--> Eth100M <--> S1.ethg++;
        R4.ethg++ <--> Eth100M <--> S1.ethg++;
}

network E10_4
{
    submodules:
        PCA: StandardHost {
            @display("p=120,40");
        }
        PCB: StandardHost {
            @display("p=75,200");
        }
        PCC: StandardHost {
            @display("p=285,250");
        }
        S1: EtherSwitch {
            @display("p=215,250");
        }
        S2: EtherSwitch {
            @display("p=150,200");
        }
        R1: MulticastRouter {
            @display("p=215,40");
        }
        R2: MulticastRouter {
            @display("p=150,140");
        }
        R3: MulticastRouter {
            @display("p=275,140");
        }
        R4: MulticastRouter {
            @display("p=150,250");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }

    connections:
        PCA.ethg++ <--> Eth100M <--> R1.ethg++;
        PCB.ethg++ <--> Eth100M <--> S2.ethg++;
        PCC.ethg++ <--> Eth100M <--> S1.ethg++;
        S1.ethg++ <--> Eth100M <--> R4.ethg++;
        S2.ethg++ <--> Eth100M <--> R2.ethg++;
        S2.ethg++ <--> Eth100M <--> R4.ethg++;
        R1.ethg++ <--> Eth100M <--> R2.ethg++;
        R1.ethg++ <--> Eth100M <--> R3.ethg++;
        R2.ethg++ <--> Eth100M <--> R3.ethg++;
}
