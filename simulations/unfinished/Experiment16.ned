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

import inet.node.ethernet.Eth1G;
import inet.node.ethernet.EtherSwitch;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.node.internetcloud.InternetCloud;
import inet.visualizer.integrated.IntegratedVisualizer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;

network E16_1
{
    submodules:
        Hosts1: StandardHost {
            @display("p=125,880");
        }
        Hosts2: StandardHost {
            @display("p=205,880");
        }
        Hosts3: StandardHost {
            @display("p=280,880");
        }
        Hosts4: StandardHost {
            @display("p=360,880");
        }
        Hosts5: StandardHost {
            @display("p=590,880");
        }
        Hosts6: StandardHost {
            @display("p=660,880");
        }
        Hosts7: StandardHost {
            @display("p=730,880");
        }
        Hosts8: StandardHost {
            @display("p=800,880");
        }
        InternetHost: StandardHost {
            @display("p=42,30");
        }
        NetworkController: StandardHost {
            @display("p=755,165");
        }
        Proxy: StandardHost {
            @display("p=213,89");
        }
        RADIUS: StandardHost {
            @display("p=72,575");
        }
        VideoServer: StandardHost {
            @display("p=540,580");
        }
        VOIP1: StandardHost {
            @display("p=245,750");
        }
        VOIP2: StandardHost {
            @display("p=877,788");
        }
        WWWServer: StandardHost {
            @display("p=48,157");
        }
        internetCloud: InternetCloud {
            @display("p=83,80");
        }

        AS1_ls: EtherSwitch {
            @display("p=142,188");
        }
        ls1: EtherSwitch {
            @display("p=143,255");
        }
        ls2: EtherSwitch {
            @display("p=287,258");
        }
        ls3: Router {
            @display("p=187,575;i=device/switch");
        }
        ls4: Router {
            @display("p=295,575;i=device/switch");
        }
        ls5: EtherSwitch {
            @display("p=125,785");
        }
        ls6: EtherSwitch {
            @display("p=280,785");
        }
        ls7: EtherSwitch {
            @display("p=640,255");
        }
        ls8: EtherSwitch {
            @display("p=754,255");
        }
        ls9: Router {
            @display("p=640,580;i=device/switch");
        }
        ls10: Router {
            @display("p=755,580;i=device/switch");
        }
        ls11: EtherSwitch {
            @display("p=590,810");
        }
        ls13: EtherSwitch {
            @display("p=660,810");
        }
        ls12: EtherSwitch {
            @display("p=730,810");
        }
        ls14: EtherSwitch {
            @display("p=800,810");
        }
        ls15: EtherSwitch {
            @display("p=205,785");
        }
        ls16: EtherSwitch {
            @display("p=360,785");
        }
        Eudemon: Router {
            @display("p=141,126");
        }
        rt1: Router {
            @display("p=287,154");
        }
        rt2: Router {
            @display("p=343,194");
        }
        rt3: Router {
            @display("p=144,334");
        }
        rt4: Router {
            @display("p=244,334");
        }
        rt5: Router {
            @display("p=344,334");
        }
        rt6: Router {
            @display("p=144,490");
        }
        rt7: Router {
            @display("p=244,490");
        }
        rt8: Router {
            @display("p=344,490");
        }
        rt9: Router {
            @display("p=180,650");
        }
        rt10: Router {
            @display("p=300,650");
        }
        rt11: Router {
            @display("p=125,719");
        }
        rt12: Router {
            @display("p=205,719");
        }
        rt13: Router {
            @display("p=280,718");
        }
        rt14: Router {
            @display("p=360,722");
        }
        rt15: Router {
            @display("p=515,195");
        }
        rt16: Router {
            @display("p=515,335");
        }
        rt17: Router {
            @display("p=640,390");
        }
        rt18: Router {
            @display("p=754,390");
        }
        rt19: Router {
            @display("p=640,500");
        }
        rt20: Router {
            @display("p=755,500");
        }
        rt21: Router {
            @display("p=640,655");
        }
        rt22: Router {
            @display("p=755,655");
        }
        rt23: Router {
            @display("p=590,725");
        }
        rt24: Router {
            @display("p=660,725");
        }
        rt25: Router {
            @display("p=730,725");
        }
        rt26: Router {
            @display("p=800,725");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=854,42");
        }
        visualizer: IntegratedVisualizer {
            @display("p=854,102");
        }
    connections:
        Eudemon.ethg++ <--> Eth1G <--> internetCloud.ethg++;
        InternetHost.ethg++ <--> Eth1G <--> internetCloud.ethg++;
        AS1_ls.ethg++ <--> Eth1G <--> WWWServer.ethg++;
        Eudemon.ethg++ <--> Eth1G <--> AS1_ls.ethg++;
        Eudemon.ethg++ <--> Eth1G <--> Proxy.ethg++;
        AS1_ls.ethg++ <--> Eth1G <--> ls2.ethg++;
        AS1_ls.ethg++ <--> Eth1G <--> ls1.ethg++;
        Hosts1.ethg++ <--> Eth1G <--> ls5.ethg++;
        Hosts2.ethg++ <--> Eth1G <--> ls15.ethg++;
        Hosts3.ethg++ <--> Eth1G <--> ls6.ethg++;
        Hosts4.ethg++ <--> Eth1G <--> ls16.ethg++;
        Hosts5.ethg++ <--> Eth1G <--> ls11.ethg++;
        Hosts6.ethg++ <--> Eth1G <--> ls13.ethg++;
        Hosts7.ethg++ <--> Eth1G <--> ls12.ethg++;
        Hosts8.ethg++ <--> Eth1G <--> ls14.ethg++;
        VideoServer.ethg++ <--> Eth1G <--> ls9.ethg++;
        RADIUS.ethg++ <--> Eth1G <--> ls3.ethg++;
        NetworkController.ethg++ <--> Eth1G <--> ls8.ethg++;
        VOIP1.ethg++ <--> Eth1G <--> rt12.ethg++;
        VOIP2.ethg++ <--> Eth1G <--> rt26.ethg++;

        ls1.ethg++ <--> Eth1G <--> rt1.ethg++;
        ls1.ethg++ <--> Eth1G <--> rt2.ethg++;
        ls1.ethg++ <--> Eth1G <--> rt3.ethg++;
        ls1.ethg++ <--> Eth1G <--> rt4.ethg++;
        ls1.ethg++ <--> Eth1G <--> rt5.ethg++;
        ls2.ethg++ <--> Eth1G <--> rt1.ethg++;
        ls2.ethg++ <--> Eth1G <--> rt2.ethg++;
        ls2.ethg++ <--> Eth1G <--> rt3.ethg++;
        ls2.ethg++ <--> Eth1G <--> rt4.ethg++;
        ls2.ethg++ <--> Eth1G <--> rt5.ethg++;
        ls3.ethg++ <--> Eth1G <--> rt6.ethg++;
        ls3.ethg++ <--> Eth1G <--> rt7.ethg++;
        ls3.ethg++ <--> Eth1G <--> rt8.ethg++;
        ls3.ethg++ <--> Eth1G <--> rt9.ethg++;
        ls3.ethg++ <--> Eth1G <--> rt10.ethg++;
        ls3.ethg++ <--> Eth1G <--> ls4.ethg++;
        ls4.ethg++ <--> Eth1G <--> rt6.ethg++;
        ls4.ethg++ <--> Eth1G <--> rt7.ethg++;
        ls4.ethg++ <--> Eth1G <--> rt8.ethg++;
        ls4.ethg++ <--> Eth1G <--> rt9.ethg++;
        ls4.ethg++ <--> Eth1G <--> rt10.ethg++;
        ls5.ethg++ <--> Eth1G <--> rt11.ethg++;
        ls5.ethg++ <--> Eth1G <--> rt12.ethg++;
        ls6.ethg++ <--> Eth1G <--> rt13.ethg++;
        ls6.ethg++ <--> Eth1G <--> rt14.ethg++;
        ls7.ethg++ <--> Eth1G <--> rt15.ethg++;
        ls7.ethg++ <--> Eth1G <--> rt16.ethg++;
        ls7.ethg++ <--> Eth1G <--> rt17.ethg++;
        ls7.ethg++ <--> Eth1G <--> rt18.ethg++;
        ls8.ethg++ <--> Eth1G <--> rt15.ethg++;
        ls8.ethg++ <--> Eth1G <--> rt16.ethg++;
        ls8.ethg++ <--> Eth1G <--> rt17.ethg++;
        ls8.ethg++ <--> Eth1G <--> rt18.ethg++;
        ls9.ethg++ <--> Eth1G <--> ls10.ethg++;
        ls9.ethg++ <--> Eth1G <--> rt19.ethg++;
        ls9.ethg++ <--> Eth1G <--> rt20.ethg++;
        ls9.ethg++ <--> Eth1G <--> rt21.ethg++;
        ls9.ethg++ <--> Eth1G <--> rt22.ethg++;
        ls10.ethg++ <--> Eth1G <--> rt19.ethg++;
        ls10.ethg++ <--> Eth1G <--> rt20.ethg++;
        ls10.ethg++ <--> Eth1G <--> rt21.ethg++;
        ls10.ethg++ <--> Eth1G <--> rt22.ethg++;
        ls11.ethg++ <--> Eth1G <--> rt23.ethg++;
        ls11.ethg++ <--> Eth1G <--> rt24.ethg++;
        ls12.ethg++ <--> Eth1G <--> rt25.ethg++;
        ls12.ethg++ <--> Eth1G <--> rt26.ethg++;
        ls13.ethg++ <--> Eth1G <--> rt23.ethg++;
        ls13.ethg++ <--> Eth1G <--> rt24.ethg++;
        ls14.ethg++ <--> Eth1G <--> rt25.ethg++;
        ls14.ethg++ <--> Eth1G <--> rt26.ethg++;
        ls15.ethg++ <--> Eth1G <--> rt11.ethg++;
        ls15.ethg++ <--> Eth1G <--> rt12.ethg++;
        ls16.ethg++ <--> Eth1G <--> rt13.ethg++;
        ls16.ethg++ <--> Eth1G <--> rt14.ethg++;

        rt1.ethg++ <--> Eth1G <--> rt15.ethg++;
        rt2.ethg++ <--> Eth1G <--> rt16.ethg++;
        rt3.ethg++ <--> Eth1G <--> rt6.ethg++;
        rt4.ethg++ <--> Eth1G <--> rt7.ethg++;
        rt5.ethg++ <--> Eth1G <--> rt8.ethg++;
        rt17.ethg++ <--> Eth1G <--> rt19.ethg++;
        rt18.ethg++ <--> Eth1G <--> rt20.ethg++;
        rt9.ethg++ <--> Eth1G <--> rt11.ethg++;
        rt9.ethg++ <--> Eth1G <--> rt13.ethg++;
        rt10.ethg++ <--> Eth1G <--> rt12.ethg++;
        rt10.ethg++ <--> Eth1G <--> rt14.ethg++;
        rt21.ethg++ <--> Eth1G <--> rt23.ethg++;
        rt21.ethg++ <--> Eth1G <--> rt25.ethg++;
        rt22.ethg++ <--> Eth1G <--> rt24.ethg++;
        rt22.ethg++ <--> Eth1G <--> rt26.ethg++;

}
