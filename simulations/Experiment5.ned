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
import inet.node.internetcloud.InternetCloud;
import inet.visualizer.integrated.IntegratedVisualizer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.applications.httptools.configurator.HttpController;

network E5_1
{
    submodules:
        R1: Router {
            @display("p=160,175");
        }
        PCA: StandardHost {
            @display("p=90,300");
        }
        PCB: StandardHost {
            @display("p=135,300");
        }
        PCC: StandardHost {
            @display("p=185,300");
        }
        PCD: StandardHost {
            @display("p=230,300");
        }
        S1: EtherSwitch {
            @display("p=160,230");
        }
        Internet: InternetCloud {
            @display("p=160,110");
        }
        Server: StandardHost {
            @display("p=160,35");
        }
        httpController: HttpController {
            @display("p=40,150;i=block/cogwheel");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }

    connections:
        PCA.ethg++ <--> Eth100M <--> S1.ethg++;
        PCB.ethg++ <--> Eth100M <--> S1.ethg++;
        PCC.ethg++ <--> Eth100M <--> S1.ethg++;
        PCD.ethg++ <--> Eth100M <--> S1.ethg++;
        S1.ethg++ <--> Eth100M <--> R1.ethg++;
        R1.ethg++ <--> Eth100M <--> Internet.ethg++;
        Internet.ethg++ <--> Eth100M <--> Server.ethg++;
}

network E5_2
{
    submodules:
        PCA: StandardHost {
            @display("p=90,175");
        }
        PCB: StandardHost {
            @display("p=135,175");
        }
        PCC: StandardHost {
            @display("p=185,175");
        }
        PCD: StandardHost {
            @display("p=230,175");
        }
        S1: EtherSwitch {
            @display("p=160,105");
        }
        Server: StandardHost {
            @display("p=160,35");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        PCA.ethg++ <--> Eth100M <--> S1.ethg++;
        PCB.ethg++ <--> Eth100M <--> S1.ethg++;
        PCC.ethg++ <--> Eth100M <--> S1.ethg++;
        PCD.ethg++ <--> Eth100M <--> S1.ethg++;
        Server.ethg++ <--> Eth100M <--> S1.ethg++;
}
