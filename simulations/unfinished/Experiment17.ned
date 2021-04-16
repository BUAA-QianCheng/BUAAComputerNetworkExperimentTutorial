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

import inet.node.ethernet.Eth100M;
import inet.node.ethernet.Eth1G;
import inet.node.ethernet.EtherSwitch;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.node.internetcloud.InternetCloud;
import inet.visualizer.integrated.IntegratedVisualizer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;

module ClassRoom
{
    parameters:
        int studentsNum;
    gates:
        inout ethg[];
    submodules:
        connectSwitch: EtherSwitch {
            @display("p=100,50");
        }
        studentHosts[studentsNum]: StandardHost {
            @display("p=50,125");
        }
        teacherHost: StandardHost {
            @display("p=150,125");
        }
    connections:
        ethg++  <--> connectSwitch.ethg++;
        for i=0..studentsNum-1 {
            studentHosts[i].ethg++ <--> Eth100M <--> connectSwitch.ethg++;
        }
        teacherHost.ethg++ <--> Eth100M <--> connectSwitch.ethg++;
        
}

network E17_1
{
    submodules:
        internetHost: StandardHost {
            @display("p=455,70");
        }
        internetCloud: InternetCloud {
            @display("p=455,140");
        }
        coreRouter1: Router {
            @display("p=395,265");
        }
        coreRouter2: Router {
            @display("p=515,265");
        }
        networkCenterCoreSwitch: Router {
            @display("p=455,202;i=device/switch");
        }
        coreSwtich: Router {
            @display("p=455,330;i=device/switch");
        }
        collectSwitch3: Router {
            @display("p=125,330;i=device/switch");
        }
        collectSwtich4: Router {
            @display("p=200,430;i=device/switch");
        }
        collectSwitch5: Router {
            @display("p=360,515;i=device/switch");
        }
        collectSwitch6: Router {
            @display("p=543,515;i=device/switch");
        }
        collectSwitch7: Router {
            @display("p=695,430;i=device/switch");
        }
        collectSwitch8: Router {
            @display("p=780,330;i=device/switch");
        }
        room301: ClassRoom {
            @display("p=30,260");
        }
        room302: ClassRoom {
            @display("p=30,330");
        }
        room303: ClassRoom {
            @display("p=30,400");
        }
        room304: ClassRoom {
            @display("p=30,460");
        }
        room401: ClassRoom {
            @display("p=30,540");
        }
        room402: ClassRoom {
            @display("p=70,580");
        }
        room403: ClassRoom {
            @display("p=110,620");
        }
        room404: ClassRoom {
            @display("p=150,660");
        }
        room501: ClassRoom {
            @display("p=190,715");
        }
        room502: ClassRoom {
            @display("p=240,715");
        }
        room503: ClassRoom {
            @display("p=290,715");
        }
        room504: ClassRoom {
            @display("p=340,715");
        }
        room505: ClassRoom {
            @display("p=390,715");
        }
        room506: ClassRoom {
            @display("p=440,715");
        }
        room601: ClassRoom {
            @display("p=460,630");
        }
        room602: ClassRoom {
            @display("p=510,630");
        }
        room603: ClassRoom {
            @display("p=560,630");
        }
        room604: ClassRoom {
            @display("p=610,630");
        }
        room701: ClassRoom {
            @display("p=745,660");
        }
        room702: ClassRoom {
            @display("p=785,620");
        }
        room703: ClassRoom {
            @display("p=835,580");
        }
        room704: ClassRoom {
            @display("p=875,540");
        }
        room801: ClassRoom {
            @display("p=875,260");
        }
        room802: ClassRoom {
            @display("p=875,330");
        }
        room803: ClassRoom {
            @display("p=875,400");
        }
        room804: ClassRoom {
            @display("p=875,470");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=40,30");
        }
        visualizer: IntegratedVisualizer {
            @display("p=40,90");
        }
    connections:
        room301.ethg++ <--> Eth100M <--> collectSwitch3.ethg++;
        room302.ethg++ <--> Eth100M <--> collectSwitch3.ethg++;
        room303.ethg++ <--> Eth100M <--> collectSwitch3.ethg++;
        room304.ethg++ <--> Eth100M <--> collectSwitch3.ethg++;
        room401.ethg++ <--> Eth100M <--> collectSwtich4.ethg++;
        room402.ethg++ <--> Eth100M <--> collectSwtich4.ethg++;
        room403.ethg++ <--> Eth100M <--> collectSwtich4.ethg++;
        room404.ethg++ <--> Eth100M <--> collectSwtich4.ethg++;
        room501.ethg++ <--> Eth100M <--> collectSwitch5.ethg++;
        room502.ethg++ <--> Eth100M <--> collectSwitch5.ethg++;
        room503.ethg++ <--> Eth100M <--> collectSwitch5.ethg++;
        room504.ethg++ <--> Eth100M <--> collectSwitch5.ethg++;
        room505.ethg++ <--> Eth100M <--> collectSwitch5.ethg++;
        room506.ethg++ <--> Eth100M <--> collectSwitch5.ethg++;
        room601.ethg++ <--> Eth100M <--> collectSwitch6.ethg++;
        room602.ethg++ <--> Eth100M <--> collectSwitch6.ethg++;
        room603.ethg++ <--> Eth100M <--> collectSwitch6.ethg++;
        room604.ethg++ <--> Eth100M <--> collectSwitch6.ethg++;
        room701.ethg++ <--> Eth100M <--> collectSwitch7.ethg++;
        room702.ethg++ <--> Eth100M <--> collectSwitch7.ethg++;
        room703.ethg++ <--> Eth100M <--> collectSwitch7.ethg++;
        room704.ethg++ <--> Eth100M <--> collectSwitch7.ethg++;
        room801.ethg++ <--> Eth100M <--> collectSwitch8.ethg++;
        room802.ethg++ <--> Eth100M <--> collectSwitch8.ethg++;
        room803.ethg++ <--> Eth100M <--> collectSwitch8.ethg++;
        room804.ethg++ <--> Eth100M <--> collectSwitch8.ethg++;
        collectSwitch3.ethg++ <--> Eth100M <--> coreSwtich.ethg++;
        collectSwtich4.ethg++ <--> Eth100M <--> coreSwtich.ethg++;
        collectSwitch5.ethg++ <--> Eth100M <--> coreSwtich.ethg++;
        collectSwitch6.ethg++ <--> Eth100M <--> coreSwtich.ethg++;
        collectSwitch7.ethg++ <--> Eth100M <--> coreSwtich.ethg++;
        collectSwitch8.ethg++ <--> Eth100M <--> coreSwtich.ethg++;
        coreSwtich.ethg++ <--> Eth100M <--> coreRouter1.ethg++;
        coreSwtich.ethg++ <--> Eth100M <--> coreRouter2.ethg++;
        coreRouter1.ethg++ <--> Eth100M <--> networkCenterCoreSwitch.ethg++;
        coreRouter2.ethg++ <--> Eth100M <--> networkCenterCoreSwitch.ethg++;
        networkCenterCoreSwitch.ethg++ <--> Eth100M <--> internetCloud.ethg++;
        internetCloud.ethg++ <--> Eth100M <--> internetHost.ethg++;
}
