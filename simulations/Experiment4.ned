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
import inet.common.misc.ThruputMeteringChannel;

network E4_base
{
   submodules:
        PCA: StandardHost {
            @display("p=120,90");
        }
        PCB: StandardHost {
            @display("p=280,90");
        }
        S1: EtherSwitch {
            @display("p=200,90");
        }
        R1: Router {
            @display("p=200,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
}

network E4_1 extends E4_base
{
    types:
    	channel C extends ThruputMeteringChannel{
            parameters:
                datarate = 10Mbps;
                delay = 5ms;
                per = 0;
                ber = 0;
                thruputDisplayFormat = default("N B P U");
        }
    connections:
        PCA.ethg++ <--> C <--> S1.ethg++;
		S1.ethg++ <--> C <--> R1.ethg++;
		S1.ethg++ <--> C <--> R1.ethg++;
		PCB.ethg++ <--> C <--> S1.ethg++;
}

network E4_1_2 extends E4_1
{
	submodules:
        scenarioManager: ScenarioManager {
            @display("p=40,150");
        }
}

network E4_1_3
{
    types:
    	channel C extends ThruputMeteringChannel{
            parameters:
                datarate = 10Mbps;
                delay = 5ms;
                per = 0;
                ber = 0;
                thruputDisplayFormat = default("N p b u");
        }
        channel C_err extends ThruputMeteringChannel{
            parameters:
                datarate = 10Mbps;
                delay = 5ms;
                per = 0.02;
                ber = 0;
                thruputDisplayFormat = default("N p b u");
        }
    submodules:
        PCA: StandardHost {
            @display("p=120,90");
        }
        PCB: StandardHost {
            @display("p=280,90");
        }
        S1: EtherSwitch {
            @display("p=200,90");
        }
        R1: Router {
            @display("p=200,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        scenarioManager: ScenarioManager {
            @display("p=40,150");
        }

    connections:
        PCA.ethg++ <--> C_err <--> S1.ethg++;
        PCB.ethg++ <--> C <--> S1.ethg++;
        S1.ethg++ <--> C <--> R1.ethg++;
        S1.ethg++ <--> C <--> R1.ethg++;
}

network E4_2
{
    submodules:
        PCA: StandardHost {
            @display("p=120,90");
        }
        PCB: StandardHost {
            @display("p=280,90");
        }
        switch: EtherSwitch {
            @display("p=200,110");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> switch.ethg++;
        PCB.ethg++ <--> Eth100M <--> switch.ethg++;
}
