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

import inet.applications.httptools.server.HttpServer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.ethernet.EtherSwitch;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.node.internetcloud.InternetCloud;
import inet.visualizer.integrated.IntegratedVisualizer;


network E1_1
{
    @display("bgb=390,220");
    submodules:
        PCA: StandardHost {
            @display("p=60,180");
        }
        PCB: StandardHost {
            @display("p=140,180");
        }
        PCC: StandardHost {
            @display("p=250,180");
        }
        PCD: StandardHost {
            @display("p=330,180");
        }
        S1: EtherSwitch {
            @display("p=100,120");
        }
        S2: EtherSwitch {
            @display("p=290,120");
        }
        R1: Router {
            @display("p=195,60");
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
        PCC.ethg++ <--> Eth100M <--> S2.ethg++;
        PCD.ethg++ <--> Eth100M <--> S2.ethg++;
        S1.ethg++ <--> Eth100M <--> R1.ethg++;
        S2.ethg++ <--> Eth100M <--> R1.ethg++;
}

//network E1_2
//{
//    submodules:
//        R1: Router {
//            @display("p=160,175");
//        }
//        PCA: StandardHost {
//            @display("p=110,300");
//        }
//        PCB: StandardHost {
//            @display("p=210,300");
//        }
//        S1: EtherSwitch {
//            @display("p=160,230");
//        }
//        Internet: InternetCloud {
//            @display("p=160,110");
//        }
//        Server: StandardHost {
//            @display("p=160,35");
//        }
//        configurator: Ipv4NetworkConfigurator {
//            @display("p=40,30");
//        }
//        visualizer: IntegratedVisualizer {
//            @display("p=40,90");
//        }
//    connections:
//        PCA.ethg++ <--> Eth100M <--> S1.ethg++;
//        PCB.ethg++ <--> Eth100M <--> S1.ethg++;
//        S1.ethg++ <--> Eth100M <--> R1.ethg++;
//        R1.ethg++ <--> Eth100M <--> Internet.ethg++;
//        Internet.ethg++ <--> Eth100M <--> Server.ethg++;
//}
