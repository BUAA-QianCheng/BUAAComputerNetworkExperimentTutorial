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
import inet.common.scenario.ScenarioManager;

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

        R1: MulticastRouter {
            @display("p=140,100");
        }
        R2: MulticastRouter {
            @display("p=260,100");
        }
        S1: MulticastRouter {
            @display("p=200,40;i=device/switch");
        }
        S2: EtherSwitch {
            @display("p=200,160");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> S1.ethg++;
        PCC.ethg++ <--> Eth100M <--> S2.ethg++;
        S1.ethg++ <--> Eth100M <--> R1.ethg++;
        S1.ethg++ <--> Eth100M <--> R2.ethg++;
        S2.ethg++ <--> Eth100M <--> R1.ethg++;
        S2.ethg++ <--> Eth100M <--> R2.ethg++;

}

network E10_3_2
{
    submodules:
        PCA: StandardHost {
            @display("p=110,35");
        }
        PCB: StandardHost {
            @display("p=275,210");
        }
        PCC: StandardHost {
            @display("p=385,70");
        }
        PCD: StandardHost {
            @display("p=470,170");
        }
        R1: MulticastRouter {
            @display("p=185,70");
        }
        R2: MulticastRouter {
            @display("p=230,140");
        }
        R3: MulticastRouter {
            @display("p=285,70");
        }
        R4: MulticastRouter {
            @display("p=400,170");
        }
        S1: EtherSwitch {
            @display("p=330,140");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> R1.ethg++;
        PCB.ethg++ <--> Eth100M <--> R2.ethg++;
        PCC.ethg++ <--> Eth100M <--> R3.ethg++;
        PCD.ethg++ <--> Eth100M <--> R4.ethg++;
        R1.ethg++ <--> Eth100M <--> R2.ethg++;
        R1.ethg++ <--> Eth100M <--> R3.ethg++;
        S1.ethg++ <--> Eth100M <--> R2.ethg++;
        S1.ethg++ <--> Eth100M <--> R3.ethg++;
        S1.ethg++ <--> Eth100M <--> R4.ethg++;
}

network E10_4
{
    submodules:
        PCA: StandardHost {
            @display("p=139,41");
        }
        PCB: StandardHost {
            @display("p=139,247");
        }
        PCC: StandardHost {
            @display("p=388,247");
        }
        R1: MulticastRouter {
            @display("p=267,41");
        }
        R2: MulticastRouter {
            @display("p=202,141");
        }
        R3: MulticastRouter {
            @display("p=327,141");
        }
        R4: MulticastRouter {
            @display("p=267,247");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> R1.ethg++;
        PCB.ethg++ <--> Eth100M <--> R2.ethg++;
        PCC.ethg++ <--> Eth100M <--> R4.ethg++;
        R1.ethg++ <--> Eth100M <--> R2.ethg++;
        R1.ethg++ <--> Eth100M <--> R3.ethg++;
        R2.ethg++ <--> Eth100M <--> R3.ethg++;
        R2.ethg++ <--> Eth100M <--> R4.ethg++;
}
