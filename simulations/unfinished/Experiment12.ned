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

package buaacomputernetworkexperimentaltutorial.simulations.unfinished;

import inet.node.inet.StandardHost;
import inet.node.mpls.LdpMplsRouter;
import inet.node.inet.Router;
import inet.node.ethernet.Eth100M;
import inet.node.ethernet.EtherSwitch;
import inet.visualizer.integrated.IntegratedVisualizer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
//
// TODO auto-generated type
//
network E12_1
{
    submodules:
        RT1: Router {
            @display("p=105,130");
        }
        RT2: Router {
            @display("p=250,125");
        }
        LSRA: LdpMplsRouter {
            @display("p=125,70");
        }
        LSRB: LdpMplsRouter {
            @display("p=175,35");
        }
        LSRC: LdpMplsRouter {
            @display("p=225,70");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        RT1.pppg++ <--> Eth100M <--> LSRA.pppg++;
        RT2.pppg++ <--> Eth100M <--> LSRC.pppg++;
        LSRA.pppg++ <--> Eth100M <--> LSRB.pppg++;
        LSRC.pppg++ <--> Eth100M <--> LSRB.pppg++;
}

network E12_2
{
    submodules:
        CE1: Router {
            @display("p=105,130");
        }
        CE2: Router {
            @display("p=250,125");
        }
        PE1: LdpMplsRouter {
            @display("p=125,70");
        }
        LSR: LdpMplsRouter {
            @display("p=175,35");
        }
        PE2: LdpMplsRouter {
            @display("p=225,70");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        CE1.pppg++ <--> Eth100M <--> PE1.pppg++;
        CE2.pppg++ <--> Eth100M <--> PE2.pppg++;
        PE1.pppg++ <--> Eth100M <--> LSR.pppg++;
        PE2.pppg++ <--> Eth100M <--> LSR.pppg++;
}
