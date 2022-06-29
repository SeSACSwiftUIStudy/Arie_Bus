//
//  SearchAPI.swift
//  Bus
//
//  Created by Arie on 2022/06/29.
//

import Foundation
import Combine

enum SearchAPI {
    static func all() -> [Bus] {
        let decoder = JSONDecoder()
        do {
            let result = try decoder.decode([Bus].self, from: busList)
            return result
        } catch {
            return []
        }
    }
    
    static func searchBy(text: String) -> AnyPublisher<[Bus], Never> {
        let decoder = JSONDecoder()
        do {
            let result = try decoder.decode([Bus].self, from: busList)
            let searchResult = result.filter {$0.name.contains(text) }
            return Just(searchResult)
                .eraseToAnyPublisher()
        } catch {
            print("error")
            return Just([])
                .eraseToAnyPublisher()
        }
    }
}


let busList = """
[{"id":"100100124","name":"0017","isBookmarked":false},{"id":"104000007","name":"01A","isBookmarked":false},{"id":"104000008","name":"01B","isBookmarked":false},{"id":"100100001","name":"02","isBookmarked":false},{"id":"100100002","name":"03","isBookmarked":false},{"id":"106000002","name":"04","isBookmarked":false},{"id":"100100549","name":"100","isBookmarked":false},{"id":"100100006","name":"101","isBookmarked":false},{"id":"100100129","name":"1014","isBookmarked":false},{"id":"100100130","name":"1017","isBookmarked":false},{"id":"100100007","name":"102","isBookmarked":false},{"id":"100100131","name":"1020","isBookmarked":false},{"id":"100100008","name":"103","isBookmarked":false},{"id":"100100009","name":"104","isBookmarked":false},{"id":"100100010","name":"105","isBookmarked":false},{"id":"100100011","name":"106","isBookmarked":false},{"id":"100100012","name":"107","isBookmarked":false},{"id":"100100013","name":"108","isBookmarked":false},{"id":"100100014","name":"109","isBookmarked":false},{"id":"100100016","name":"110A고려대","isBookmarked":false},{"id":"100100015","name":"110B국민대","isBookmarked":true},{"id":"100100132","name":"1111","isBookmarked":false},{"id":"100100133","name":"1113","isBookmarked":false},{"id":"100100134","name":"1114","isBookmarked":false},{"id":"100100566","name":"1115","isBookmarked":false},{"id":"107000001","name":"1116","isBookmarked":false},{"id":"100100137","name":"1119","isBookmarked":false},{"id":"100100138","name":"1120","isBookmarked":false},{"id":"100100425","name":"1122","isBookmarked":false},{"id":"100100139","name":"1124","isBookmarked":false},{"id":"100100142","name":"1126","isBookmarked":false},{"id":"100100143","name":"1127","isBookmarked":false},{"id":"100100144","name":"1128","isBookmarked":false},{"id":"100100145","name":"1129","isBookmarked":false},{"id":"100100146","name":"1130","isBookmarked":false},{"id":"100100147","name":"1131","isBookmarked":false},{"id":"100100148","name":"1132","isBookmarked":false},{"id":"100100149","name":"1133","isBookmarked":false},{"id":"100100150","name":"1135","isBookmarked":false},{"id":"100100151","name":"1136","isBookmarked":false},{"id":"100100152","name":"1137","isBookmarked":false},{"id":"100100153","name":"1138","isBookmarked":false},{"id":"100100154","name":"1139","isBookmarked":false},{"id":"100100155","name":"1140","isBookmarked":false},{"id":"100100156","name":"1141","isBookmarked":false},{"id":"100100157","name":"1142","isBookmarked":false},{"id":"100100158","name":"1143","isBookmarked":false},{"id":"100100159","name":"1144","isBookmarked":false},{"id":"100100164","name":"1154","isBookmarked":false},{"id":"100100165","name":"1155","isBookmarked":false},{"id":"100100166","name":"1156","isBookmarked":false},{"id":"100100170","name":"1162","isBookmarked":false},{"id":"100100171","name":"1164","isBookmarked":false},{"id":"100100172","name":"1165","isBookmarked":false},{"id":"108000002","name":"1167","isBookmarked":false},{"id":"100100017","name":"120","isBookmarked":false},{"id":"100100583","name":"121","isBookmarked":false},{"id":"100100175","name":"1213","isBookmarked":false},{"id":"100100177","name":"1218","isBookmarked":false},{"id":"100100178","name":"1221","isBookmarked":false},{"id":"100100179","name":"1222","isBookmarked":false},{"id":"100100181","name":"1224","isBookmarked":false},{"id":"100100183","name":"1226","isBookmarked":false},{"id":"100100184","name":"1227","isBookmarked":false},{"id":"100100018","name":"130","isBookmarked":false},{"id":"100100019","name":"140","isBookmarked":false},{"id":"100100020","name":"141","isBookmarked":false},{"id":"100100021","name":"142","isBookmarked":false},{"id":"100100022","name":"143","isBookmarked":false},{"id":"100100023","name":"144","isBookmarked":false},{"id":"100100024","name":"145","isBookmarked":false},{"id":"100100025","name":"146","isBookmarked":false},{"id":"100100026","name":"147","isBookmarked":false},{"id":"100100027","name":"148","isBookmarked":false},{"id":"100100029","name":"150","isBookmarked":false},{"id":"100100030","name":"151","isBookmarked":false},{"id":"100100031","name":"152","isBookmarked":false},{"id":"100100032","name":"153","isBookmarked":false},{"id":"100100033","name":"160","isBookmarked":false},{"id":"100100034","name":"162","isBookmarked":false},{"id":"100100036","name":"171","isBookmarked":false},{"id":"100100185","name":"1711","isBookmarked":false},{"id":"100100037","name":"172","isBookmarked":false},{"id":"110000002","name":"173","isBookmarked":false},{"id":"100100038","name":"201","isBookmarked":false},{"id":"100100186","name":"2012","isBookmarked":false},{"id":"100100188","name":"2013","isBookmarked":false},{"id":"100100189","name":"2014","isBookmarked":false},{"id":"100100190","name":"2015","isBookmarked":false},{"id":"100100522","name":"2016","isBookmarked":false},{"id":"100100039","name":"202","isBookmarked":false},{"id":"100100191","name":"2112","isBookmarked":false},{"id":"100100192","name":"2113","isBookmarked":false},{"id":"100100193","name":"2114","isBookmarked":false},{"id":"100100598","name":"2115","isBookmarked":false},{"id":"100100194","name":"2211","isBookmarked":false},{"id":"100100198","name":"2221","isBookmarked":false},{"id":"100100199","name":"2222","isBookmarked":false},{"id":"100100201","name":"2224","isBookmarked":false},{"id":"100100202","name":"2227","isBookmarked":false},{"id":"100100203","name":"2230","isBookmarked":false},{"id":"100100204","name":"2233","isBookmarked":false},{"id":"100100205","name":"2234","isBookmarked":false},{"id":"100100206","name":"2235","isBookmarked":false},{"id":"100100599","name":"2311","isBookmarked":false},{"id":"100100611","name":"2312","isBookmarked":false},{"id":"100100407","name":"240","isBookmarked":false},{"id":"100100595","name":"241","isBookmarked":false},{"id":"100100209","name":"2412","isBookmarked":false},{"id":"100100210","name":"2413","isBookmarked":false},{"id":"100100211","name":"2415","isBookmarked":false},{"id":"104000006","name":"242","isBookmarked":false},{"id":"100100042","name":"260","isBookmarked":false},{"id":"100100043","name":"261","isBookmarked":false},{"id":"100100044","name":"262","isBookmarked":false},{"id":"100100046","name":"270","isBookmarked":false},{"id":"100100047","name":"271","isBookmarked":false},{"id":"100100048","name":"272","isBookmarked":false},{"id":"100100049","name":"273","isBookmarked":false},{"id":"100100051","name":"301","isBookmarked":false},{"id":"100100438","name":"3011","isBookmarked":false},{"id":"100100579","name":"3012","isBookmarked":false},{"id":"100100052","name":"302","isBookmarked":false},{"id":"100100053","name":"303","isBookmarked":false},{"id":"100100564","name":"320","isBookmarked":false},{"id":"100100212","name":"3212","isBookmarked":false},{"id":"100100213","name":"3214","isBookmarked":false},{"id":"100100215","name":"3216","isBookmarked":false},{"id":"100100216","name":"3217","isBookmarked":false},{"id":"100100218","name":"3220","isBookmarked":false},{"id":"100100219","name":"3313","isBookmarked":false},{"id":"100100220","name":"3314","isBookmarked":false},{"id":"100100221","name":"3315","isBookmarked":false},{"id":"100100222","name":"3316","isBookmarked":false},{"id":"100100478","name":"3317","isBookmarked":false},{"id":"100100498","name":"3318","isBookmarked":false},{"id":"100100501","name":"3319","isBookmarked":false},{"id":"100100578","name":"3321","isBookmarked":false},{"id":"100100613","name":"3322","isBookmarked":false},{"id":"100100496","name":"333","isBookmarked":false},{"id":"100100055","name":"340","isBookmarked":false},{"id":"100100056","name":"341","isBookmarked":false},{"id":"100100223","name":"3411","isBookmarked":false},{"id":"100100224","name":"3412","isBookmarked":false},{"id":"100100225","name":"3413","isBookmarked":false},{"id":"100100226","name":"3414","isBookmarked":false},{"id":"100100228","name":"3416","isBookmarked":false},{"id":"100100229","name":"3417","isBookmarked":false},{"id":"124000038","name":"342","isBookmarked":false},{"id":"100100232","name":"3422","isBookmarked":false},{"id":"100100609","name":"3425","isBookmarked":false},{"id":"100100612","name":"3426","isBookmarked":false},{"id":"107000002","name":"343","isBookmarked":false},{"id":"100100553","name":"350","isBookmarked":false},{"id":"100100057","name":"360","isBookmarked":false},{"id":"124000036","name":"362","isBookmarked":false},{"id":"100100061","name":"370","isBookmarked":false},{"id":"100100596","name":"400","isBookmarked":false},{"id":"100100062","name":"401","isBookmarked":false},{"id":"100100063","name":"402","isBookmarked":false},{"id":"100100597","name":"405","isBookmarked":false},{"id":"100100064","name":"406","isBookmarked":false},{"id":"100100068","name":"420","isBookmarked":false},{"id":"100100409","name":"421","isBookmarked":false},{"id":"100100604","name":"4211","isBookmarked":false},{"id":"100100234","name":"4212","isBookmarked":false},{"id":"100100500","name":"4312","isBookmarked":false},{"id":"100100237","name":"4318","isBookmarked":false},{"id":"100100427","name":"4319","isBookmarked":false},{"id":"100100459","name":"440","isBookmarked":false},{"id":"100100070","name":"441","isBookmarked":false},{"id":"100100454","name":"4419","isBookmarked":false},{"id":"100100246","name":"4432","isBookmarked":false},{"id":"100100247","name":"4433","isBookmarked":false},{"id":"122000001","name":"4435","isBookmarked":false},{"id":"113000002","name":"452","isBookmarked":false},{"id":"100100071","name":"461","isBookmarked":false},{"id":"100100605","name":"463","isBookmarked":false},{"id":"100100073","name":"470","isBookmarked":false},{"id":"100100075","name":"472","isBookmarked":false},{"id":"100100076","name":"500","isBookmarked":false},{"id":"100100077","name":"501","isBookmarked":false},{"id":"100100248","name":"5012","isBookmarked":false},{"id":"100100410","name":"502","isBookmarked":false},{"id":"100100078","name":"503","isBookmarked":false},{"id":"100100079","name":"504","isBookmarked":false},{"id":"100100080","name":"505","isBookmarked":false},{"id":"100100081","name":"506","isBookmarked":false},{"id":"100100082","name":"507","isBookmarked":false},{"id":"100100083","name":"540","isBookmarked":false},{"id":"100100574","name":"541","isBookmarked":false},{"id":"100100249","name":"5413","isBookmarked":false},{"id":"100100603","name":"542","isBookmarked":false},{"id":"100100250","name":"5511","isBookmarked":false},{"id":"100100251","name":"5513","isBookmarked":false},{"id":"100100252","name":"5515","isBookmarked":false},{"id":"100100253","name":"5516","isBookmarked":false},{"id":"100100254","name":"5517","isBookmarked":false},{"id":"100100255","name":"5519","isBookmarked":false},{"id":"100100257","name":"5522A난곡","isBookmarked":false},{"id":"100100258","name":"5522B호암","isBookmarked":false},{"id":"100100259","name":"5523","isBookmarked":false},{"id":"100100260","name":"5524","isBookmarked":false},{"id":"100100261","name":"5525","isBookmarked":false},{"id":"100100263","name":"5528","isBookmarked":false},{"id":"100100264","name":"5530","isBookmarked":false},{"id":"100100265","name":"5531","isBookmarked":false},{"id":"100100267","name":"5535","isBookmarked":false},{"id":"100100268","name":"5536","isBookmarked":false},{"id":"100100269","name":"5537","isBookmarked":false},{"id":"100100272","name":"5615","isBookmarked":false},{"id":"100100273","name":"5616","isBookmarked":false},{"id":"100100274","name":"5617","isBookmarked":false},{"id":"100100275","name":"5618","isBookmarked":false},{"id":"100100276","name":"5619","isBookmarked":false},{"id":"100100277","name":"5620","isBookmarked":false},{"id":"100100278","name":"5621","isBookmarked":false},{"id":"100100279","name":"5623","isBookmarked":false},{"id":"100100280","name":"5624","isBookmarked":false},{"id":"100100281","name":"5625","isBookmarked":false},{"id":"100100282","name":"5626","isBookmarked":false},{"id":"100100283","name":"5627","isBookmarked":false},{"id":"100100284","name":"5630","isBookmarked":false},{"id":"100100285","name":"5633","isBookmarked":false},{"id":"100100266","name":"5634","isBookmarked":false},{"id":"100100084","name":"571","isBookmarked":false},{"id":"100100286","name":"5712","isBookmarked":false},{"id":"100100287","name":"5713","isBookmarked":false},{"id":"100100288","name":"5714","isBookmarked":false},{"id":"100100085","name":"600","isBookmarked":false},{"id":"100100507","name":"6009","isBookmarked":false},{"id":"100100086","name":"601","isBookmarked":false},{"id":"100100087","name":"602","isBookmarked":false},{"id":"100100088","name":"603","isBookmarked":false},{"id":"100100089","name":"604","isBookmarked":false},{"id":"100100090","name":"605","isBookmarked":false},{"id":"100100091","name":"606","isBookmarked":false},{"id":"100100513","name":"6100","isBookmarked":false},{"id":"100100373","name":"6101","isBookmarked":false},{"id":"100100289","name":"6211","isBookmarked":false},{"id":"100100093","name":"640","isBookmarked":false},{"id":"100100094","name":"641","isBookmarked":false},{"id":"100100290","name":"6411","isBookmarked":false},{"id":"100100096","name":"643","isBookmarked":false},{"id":"100100097","name":"650","isBookmarked":false},{"id":"100100098","name":"651","isBookmarked":false},{"id":"100100291","name":"6511","isBookmarked":false},{"id":"100100292","name":"6512","isBookmarked":false},{"id":"100100293","name":"6513","isBookmarked":false},{"id":"100100294","name":"6514","isBookmarked":false},{"id":"100100521","name":"6515","isBookmarked":false},{"id":"100100576","name":"6516","isBookmarked":false},{"id":"100100099","name":"652","isBookmarked":false},{"id":"100100497","name":"653","isBookmarked":false},{"id":"115000007","name":"654","isBookmarked":false},{"id":"116000004","name":"660","isBookmarked":false},{"id":"100100102","name":"661","isBookmarked":false},{"id":"100100295","name":"6611","isBookmarked":false},{"id":"100100453","name":"6613","isBookmarked":false},{"id":"100100297","name":"6614","isBookmarked":false},{"id":"116000002","name":"6615","isBookmarked":false},{"id":"100100298","name":"6616","isBookmarked":false},{"id":"100100299","name":"6617","isBookmarked":false},{"id":"100100550","name":"662","isBookmarked":false},{"id":"100100300","name":"6620","isBookmarked":false},{"id":"100100301","name":"6623","isBookmarked":false},{"id":"100100302","name":"6624","isBookmarked":false},{"id":"100100303","name":"6625","isBookmarked":false},{"id":"100100304","name":"6627","isBookmarked":false},{"id":"100100305","name":"6628","isBookmarked":false},{"id":"100100306","name":"6629","isBookmarked":false},{"id":"100100307","name":"6630","isBookmarked":false},{"id":"100100308","name":"6631","isBookmarked":false},{"id":"100100309","name":"6632","isBookmarked":false},{"id":"100100311","name":"6635","isBookmarked":false},{"id":"100100312","name":"6637","isBookmarked":false},{"id":"100100313","name":"6638","isBookmarked":false},{"id":"100100601","name":"6640A","isBookmarked":false},{"id":"100100602","name":"6640B","isBookmarked":false},{"id":"100100316","name":"6642","isBookmarked":false},{"id":"100100318","name":"6645","isBookmarked":false},{"id":"100100320","name":"6647","isBookmarked":false},{"id":"115000005","name":"6648","isBookmarked":false},{"id":"114000001","name":"6649","isBookmarked":false},{"id":"100100322","name":"6654","isBookmarked":false},{"id":"100100329","name":"6657","isBookmarked":false},{"id":"100100330","name":"6712","isBookmarked":false},{"id":"100100331","name":"6714","isBookmarked":false},{"id":"100100332","name":"6715","isBookmarked":false},{"id":"100100451","name":"6716","isBookmarked":false},{"id":"100100495","name":"672","isBookmarked":false},{"id":"100100551","name":"673","isBookmarked":false},{"id":"111000008","name":"674","isBookmarked":false},{"id":"100100440","name":"700","isBookmarked":false},{"id":"100100103","name":"701","isBookmarked":false},{"id":"100100450","name":"7011","isBookmarked":false},{"id":"100100449","name":"7013A","isBookmarked":false},{"id":"100100448","name":"7013B","isBookmarked":false},{"id":"100100447","name":"7016","isBookmarked":false},{"id":"100100337","name":"7017","isBookmarked":false},{"id":"100100338","name":"7018","isBookmarked":false},{"id":"100100339","name":"7019","isBookmarked":false},{"id":"100100340","name":"7021","isBookmarked":false},{"id":"100100341","name":"7022","isBookmarked":false},{"id":"100100342","name":"7024","isBookmarked":false},{"id":"100100446","name":"7025","isBookmarked":false},{"id":"100100104","name":"702A서오릉","isBookmarked":false},{"id":"100100105","name":"702B용두초교","isBookmarked":false},{"id":"100100107","name":"704","isBookmarked":false},{"id":"100100587","name":"705","isBookmarked":false},{"id":"100100511","name":"707","isBookmarked":false},{"id":"123000011","name":"708","isBookmarked":false},{"id":"100100110","name":"710","isBookmarked":false},{"id":"100100111","name":"720","isBookmarked":false},{"id":"100100112","name":"721","isBookmarked":false},{"id":"100100344","name":"7211","isBookmarked":false},{"id":"100100499","name":"7212","isBookmarked":false},{"id":"100100537","name":"740","isBookmarked":false},{"id":"123000010","name":"741","isBookmarked":false},{"id":"100100116","name":"742","isBookmarked":false},{"id":"100100114","name":"750A","isBookmarked":false},{"id":"100100565","name":"750B","isBookmarked":false},{"id":"100100117","name":"752","isBookmarked":false},{"id":"100100118","name":"753","isBookmarked":false},{"id":"111000014","name":"761","isBookmarked":false},{"id":"100100345","name":"7611","isBookmarked":false},{"id":"100100346","name":"7612","isBookmarked":false},{"id":"100100347","name":"7613","isBookmarked":false},{"id":"100100437","name":"771","isBookmarked":false},{"id":"100100348","name":"7711","isBookmarked":false},{"id":"100100349","name":"7713","isBookmarked":false},{"id":"100100462","name":"7715","isBookmarked":false},{"id":"124000008","name":"7719","isBookmarked":false},{"id":"100100352","name":"7720","isBookmarked":false},{"id":"100100353","name":"7722","isBookmarked":false},{"id":"100100354","name":"7723","isBookmarked":false},{"id":"100100357","name":"7726","isBookmarked":false},{"id":"100100358","name":"7727","isBookmarked":false},{"id":"100100359","name":"7728","isBookmarked":false},{"id":"111000011","name":"773","isBookmarked":false},{"id":"100100360","name":"7730","isBookmarked":false},{"id":"111000010","name":"7734","isBookmarked":false},{"id":"100100363","name":"7737","isBookmarked":false},{"id":"100100364","name":"7738","isBookmarked":false},{"id":"100100552","name":"7739","isBookmarked":false},{"id":"111000012","name":"774","isBookmarked":false},{"id":"107000003","name":"8002","isBookmarked":false},{"id":"107000004","name":"8003","isBookmarked":false},{"id":"110000003","name":"8112","isBookmarked":false},{"id":"106000001","name":"8221","isBookmarked":false},{"id":"124000010","name":"8331","isBookmarked":false},{"id":"103000001","name":"8441","isBookmarked":false},{"id":"100100383","name":"8541","isBookmarked":false},{"id":"108000001","name":"8551","isBookmarked":false},{"id":"116000001","name":"8552","isBookmarked":false},{"id":"113000001","name":"8761","isBookmarked":false},{"id":"111000009","name":"8771","isBookmarked":false},{"id":"100100525","name":"8772","isBookmarked":false},{"id":"100100387","name":"8774","isBookmarked":false},{"id":"112000001","name":"8777","isBookmarked":false},{"id":"100100389","name":"9401","isBookmarked":false},{"id":"100100390","name":"9403","isBookmarked":false},{"id":"100100391","name":"9404","isBookmarked":false},{"id":"100100392","name":"9408","isBookmarked":false},{"id":"100100397","name":"9701","isBookmarked":false},{"id":"100100398","name":"9703","isBookmarked":false},{"id":"100100400","name":"9707","isBookmarked":false},{"id":"100100607","name":"9711","isBookmarked":false},{"id":"100100406","name":"9714","isBookmarked":false},{"id":"100100593","name":"N13","isBookmarked":false},{"id":"100100610","name":"N15","isBookmarked":false},{"id":"100100592","name":"N16","isBookmarked":false},{"id":"100100586","name":"N26","isBookmarked":false},{"id":"100100591","name":"N30","isBookmarked":false},{"id":"100100585","name":"N37","isBookmarked":false},{"id":"100100589","name":"N61","isBookmarked":false},{"id":"100100588","name":"N62","isBookmarked":false},{"id":"115000008","name":"N65","isBookmarked":false},{"id":"100900016","name":"TOUR01","isBookmarked":false},{"id":"101000001","name":"TOUR02","isBookmarked":false},{"id":"101000002","name":"TOUR03","isBookmarked":false},{"id":"101000003","name":"TOUR04","isBookmarked":false},{"id":"100000017","name":"TOUR11","isBookmarked":false},{"id":"100000018","name":"TOUR12","isBookmarked":false},{"id":"122900003","name":"강남01","isBookmarked":false},{"id":"122900006","name":"강남02","isBookmarked":false},{"id":"122900004","name":"강남03","isBookmarked":false},{"id":"122900002","name":"강남05","isBookmarked":false},{"id":"122900005","name":"강남06","isBookmarked":false},{"id":"122900007","name":"강남06-1","isBookmarked":false},{"id":"122900010","name":"강남06-2","isBookmarked":false},{"id":"122900001","name":"강남07","isBookmarked":false},{"id":"122900008","name":"강남08","isBookmarked":false},{"id":"122900009","name":"강남10","isBookmarked":false},{"id":"124900002","name":"강동01","isBookmarked":false},{"id":"124900003","name":"강동02","isBookmarked":false},{"id":"124900001","name":"강동05","isBookmarked":false},{"id":"108900006","name":"강북01","isBookmarked":false},{"id":"108900002","name":"강북02","isBookmarked":false},{"id":"108900003","name":"강북03","isBookmarked":false},{"id":"108900005","name":"강북04","isBookmarked":false},{"id":"108900008","name":"강북05","isBookmarked":false},{"id":"108900007","name":"강북06","isBookmarked":false},{"id":"108900013","name":"강북08","isBookmarked":false},{"id":"108900004","name":"강북09","isBookmarked":false},{"id":"108900009","name":"강북10","isBookmarked":false},{"id":"108900001","name":"강북11","isBookmarked":false},{"id":"108900012","name":"강북12","isBookmarked":false},{"id":"115900006","name":"강서01","isBookmarked":false},{"id":"115900003","name":"강서02","isBookmarked":false},{"id":"115900004","name":"강서03","isBookmarked":false},{"id":"115900001","name":"강서04","isBookmarked":false},{"id":"115900005","name":"강서05","isBookmarked":false},{"id":"115900008","name":"강서05-1","isBookmarked":false},{"id":"115900002","name":"강서06","isBookmarked":false},{"id":"115900007","name":"강서07","isBookmarked":false},{"id":"120900005","name":"관악01","isBookmarked":false},{"id":"120900008","name":"관악02","isBookmarked":false},{"id":"120900003","name":"관악03","isBookmarked":false},{"id":"120900009","name":"관악04","isBookmarked":false},{"id":"120900010","name":"관악05","isBookmarked":false},{"id":"120900004","name":"관악06","isBookmarked":false},{"id":"120900006","name":"관악07","isBookmarked":false},{"id":"120900007","name":"관악08","isBookmarked":false},{"id":"120900002","name":"관악10","isBookmarked":false},{"id":"114900004","name":"관악11","isBookmarked":false},{"id":"104900005","name":"광진01","isBookmarked":false},{"id":"104900003","name":"광진02","isBookmarked":false},{"id":"104900002","name":"광진03","isBookmarked":false},{"id":"104900001","name":"광진04","isBookmarked":false},{"id":"104900004","name":"광진05","isBookmarked":false},{"id":"116900013","name":"구로01","isBookmarked":false},{"id":"116900014","name":"구로02","isBookmarked":false},{"id":"116900010","name":"구로03","isBookmarked":false},{"id":"116900011","name":"구로04","isBookmarked":false},{"id":"116900009","name":"구로05","isBookmarked":false},{"id":"116900012","name":"구로06","isBookmarked":false},{"id":"116900006","name":"구로07","isBookmarked":false},{"id":"116900015","name":"구로08","isBookmarked":false},{"id":"116900007","name":"구로09","isBookmarked":false},{"id":"116900003","name":"구로10","isBookmarked":false},{"id":"116900004","name":"구로11","isBookmarked":false},{"id":"116900002","name":"구로12","isBookmarked":false},{"id":"116900001","name":"구로13","isBookmarked":false},{"id":"116900005","name":"구로14","isBookmarked":false},{"id":"116900016","name":"구로15","isBookmarked":false},{"id":"117900008","name":"금천01","isBookmarked":false},{"id":"117900006","name":"금천02","isBookmarked":false},{"id":"117900003","name":"금천03","isBookmarked":false},{"id":"117900002","name":"금천04","isBookmarked":false},{"id":"117900001","name":"금천05","isBookmarked":false},{"id":"117900004","name":"금천06","isBookmarked":false},{"id":"117900007","name":"금천07","isBookmarked":false},{"id":"117900005","name":"금천08","isBookmarked":false},{"id":"117900010","name":"금천11","isBookmarked":false},{"id":"110900004","name":"노원01","isBookmarked":false},{"id":"110900009","name":"노원02","isBookmarked":false},{"id":"110900005","name":"노원03","isBookmarked":false},{"id":"110900001","name":"노원04","isBookmarked":false},{"id":"110900003","name":"노원05","isBookmarked":false},{"id":"110900007","name":"노원08","isBookmarked":false},{"id":"110900006","name":"노원09","isBookmarked":false},{"id":"110900002","name":"노원11","isBookmarked":false},{"id":"110900008","name":"노원13","isBookmarked":false},{"id":"109900011","name":"노원14","isBookmarked":false},{"id":"109900010","name":"노원15","isBookmarked":false},{"id":"109900001","name":"도봉01","isBookmarked":false},{"id":"108900010","name":"도봉02","isBookmarked":false},{"id":"109900007","name":"도봉03","isBookmarked":false},{"id":"109900008","name":"도봉04","isBookmarked":false},{"id":"109900004","name":"도봉05","isBookmarked":false},{"id":"109900003","name":"도봉06","isBookmarked":false},{"id":"109900002","name":"도봉07","isBookmarked":false},{"id":"109900006","name":"도봉08","isBookmarked":false},{"id":"109900005","name":"도봉09","isBookmarked":false},{"id":"105900003","name":"동대문01","isBookmarked":false},{"id":"105900002","name":"동대문02","isBookmarked":false},{"id":"105900006","name":"동대문03","isBookmarked":false},{"id":"105900001","name":"동대문05","isBookmarked":false},{"id":"119900007","name":"동작01","isBookmarked":false},{"id":"119900013","name":"동작02","isBookmarked":false},{"id":"119900020","name":"동작03","isBookmarked":false},{"id":"119900022","name":"동작05","isBookmarked":false},{"id":"119900023","name":"동작05-1","isBookmarked":false},{"id":"119900014","name":"동작06","isBookmarked":false},{"id":"119900018","name":"동작07","isBookmarked":false},{"id":"119900009","name":"동작08","isBookmarked":false},{"id":"119900019","name":"동작09","isBookmarked":false},{"id":"119900006","name":"동작10","isBookmarked":false},{"id":"119900011","name":"동작11","isBookmarked":false},{"id":"119900021","name":"동작12","isBookmarked":false},{"id":"120900001","name":"동작13","isBookmarked":false},{"id":"119900012","name":"동작14","isBookmarked":false},{"id":"119900010","name":"동작15","isBookmarked":false},{"id":"119900017","name":"동작16","isBookmarked":false},{"id":"119900016","name":"동작17","isBookmarked":false},{"id":"119900015","name":"동작18","isBookmarked":false},{"id":"119900008","name":"동작19","isBookmarked":false},{"id":"119900001","name":"동작20","isBookmarked":false},{"id":"119900024","name":"동작21","isBookmarked":false},{"id":"102900001","name":"마포01","isBookmarked":false},{"id":"113900005","name":"마포02","isBookmarked":false},{"id":"113900002","name":"마포03","isBookmarked":false},{"id":"113900011","name":"마포05","isBookmarked":false},{"id":"113900012","name":"마포06","isBookmarked":false},{"id":"113900010","name":"마포07","isBookmarked":false},{"id":"113900013","name":"마포08","isBookmarked":false},{"id":"113900015","name":"마포09","isBookmarked":false},{"id":"113900008","name":"마포10","isBookmarked":false},{"id":"113900004","name":"마포11","isBookmarked":false},{"id":"113900003","name":"마포12","isBookmarked":false},{"id":"113900007","name":"마포13","isBookmarked":false},{"id":"113900006","name":"마포14","isBookmarked":false},{"id":"113900014","name":"마포15","isBookmarked":false},{"id":"113900009","name":"마포16","isBookmarked":false},{"id":"113900001","name":"마포17","isBookmarked":false},{"id":"113900016","name":"마포18","isBookmarked":false},{"id":"113900017","name":"마포18-1","isBookmarked":false},{"id":"112900010","name":"서대문01","isBookmarked":false},{"id":"112900014","name":"서대문02대","isBookmarked":false},{"id":"112900015","name":"서대문02소","isBookmarked":false},{"id":"112900004","name":"서대문03","isBookmarked":false},{"id":"112900011","name":"서대문04","isBookmarked":false},{"id":"112900009","name":"서대문05","isBookmarked":false},{"id":"112900007","name":"서대문06","isBookmarked":false},{"id":"112900003","name":"서대문07","isBookmarked":false},{"id":"100900012","name":"서대문08","isBookmarked":false},{"id":"112900012","name":"서대문09대","isBookmarked":false},{"id":"112900013","name":"서대문09소","isBookmarked":false},{"id":"112900001","name":"서대문10","isBookmarked":false},{"id":"112900006","name":"서대문11","isBookmarked":false},{"id":"112900002","name":"서대문12","isBookmarked":false},{"id":"112900005","name":"서대문13","isBookmarked":false},{"id":"112900008","name":"서대문14","isBookmarked":false},{"id":"108900014","name":"서대문15","isBookmarked":false},{"id":"121900009","name":"서초01","isBookmarked":false},{"id":"121900008","name":"서초02","isBookmarked":false},{"id":"121900005","name":"서초03","isBookmarked":false},{"id":"119900003","name":"서초05","isBookmarked":false},{"id":"119900002","name":"서초06","isBookmarked":false},{"id":"121900011","name":"서초07","isBookmarked":false},{"id":"121900002","name":"서초08","isBookmarked":false},{"id":"121900007","name":"서초09","isBookmarked":false},{"id":"121900003","name":"서초10","isBookmarked":false},{"id":"121900006","name":"서초11","isBookmarked":false},{"id":"121900013","name":"서초13","isBookmarked":false},{"id":"121900010","name":"서초14","isBookmarked":false},{"id":"121900012","name":"서초15","isBookmarked":false},{"id":"119900005","name":"서초16","isBookmarked":false},{"id":"119900004","name":"서초17","isBookmarked":false},{"id":"121900016","name":"서초18","isBookmarked":false},{"id":"121900015","name":"서초18-1","isBookmarked":false},{"id":"121900004","name":"서초20","isBookmarked":false},{"id":"121900001","name":"서초21","isBookmarked":false},{"id":"121900014","name":"서초22","isBookmarked":false},{"id":"103900003","name":"성동01","isBookmarked":false},{"id":"103900004","name":"성동02","isBookmarked":false},{"id":"103900011","name":"성동03-1","isBookmarked":false},{"id":"103900012","name":"성동03-2","isBookmarked":false},{"id":"101900001","name":"성동05","isBookmarked":false},{"id":"103900007","name":"성동06","isBookmarked":false},{"id":"103900005","name":"성동07","isBookmarked":false},{"id":"103900002","name":"성동08","isBookmarked":false},{"id":"103900001","name":"성동09","isBookmarked":false},{"id":"103900008","name":"성동10","isBookmarked":false},{"id":"103900009","name":"성동12","isBookmarked":false},{"id":"103900010","name":"성동13","isBookmarked":false},{"id":"103900013","name":"성동14","isBookmarked":false},{"id":"107900008","name":"성북01","isBookmarked":false},{"id":"107900003","name":"성북02","isBookmarked":false},{"id":"107900002","name":"성북03","isBookmarked":false},{"id":"107900005","name":"성북04","isBookmarked":false},{"id":"107900011","name":"성북05","isBookmarked":false},{"id":"107900012","name":"성북06","isBookmarked":false},{"id":"107900013","name":"성북07","isBookmarked":false},{"id":"107900007","name":"성북08","isBookmarked":false},{"id":"107900006","name":"성북09","isBookmarked":false},{"id":"107900014","name":"성북10-1","isBookmarked":false},{"id":"107900017","name":"성북10-2","isBookmarked":false},{"id":"107900004","name":"성북12","isBookmarked":false},{"id":"107900001","name":"성북13","isBookmarked":false},{"id":"107900010","name":"성북14-1","isBookmarked":false},{"id":"107900016","name":"성북14-2","isBookmarked":false},{"id":"107900015","name":"성북15","isBookmarked":false},{"id":"105900004","name":"성북20","isBookmarked":false},{"id":"105900005","name":"성북21","isBookmarked":false},{"id":"107900009","name":"성북22","isBookmarked":false},{"id":"114900001","name":"양천01","isBookmarked":false},{"id":"114900002","name":"양천02","isBookmarked":false},{"id":"114900003","name":"양천03","isBookmarked":false},{"id":"116900018","name":"양천04","isBookmarked":false},{"id":"116900008","name":"영등포01","isBookmarked":false},{"id":"118900004","name":"영등포02","isBookmarked":false},{"id":"118900005","name":"영등포03","isBookmarked":false},{"id":"118900001","name":"영등포04","isBookmarked":false},{"id":"118900006","name":"영등포05","isBookmarked":false},{"id":"118900003","name":"영등포06","isBookmarked":false},{"id":"118900002","name":"영등포07","isBookmarked":false},{"id":"118900007","name":"영등포08","isBookmarked":false},{"id":"116900017","name":"영등포09","isBookmarked":false},{"id":"118900008","name":"영등포10","isBookmarked":false},{"id":"118900009","name":"영등포11","isBookmarked":false},{"id":"114900006","name":"영등포12","isBookmarked":false},{"id":"114900005","name":"영등포13","isBookmarked":false},{"id":"102900003","name":"용산01","isBookmarked":false},{"id":"102900002","name":"용산02","isBookmarked":false},{"id":"102900004","name":"용산03","isBookmarked":false},{"id":"101900002","name":"용산04","isBookmarked":false},{"id":"111900002","name":"은평01","isBookmarked":false},{"id":"111900003","name":"은평02","isBookmarked":false},{"id":"111900001","name":"은평03","isBookmarked":false},{"id":"111900004","name":"은평04","isBookmarked":false},{"id":"111900005","name":"은평05","isBookmarked":false},{"id":"111900007","name":"은평06","isBookmarked":false},{"id":"111900006","name":"은평07","isBookmarked":false},{"id":"111900011","name":"은평08-1","isBookmarked":false},{"id":"111900012","name":"은평08-2","isBookmarked":false},{"id":"111900009","name":"은평09","isBookmarked":false},{"id":"111900010","name":"은평10","isBookmarked":false},{"id":"100900006","name":"종로01","isBookmarked":false},{"id":"100900008","name":"종로02","isBookmarked":false},{"id":"100900010","name":"종로03","isBookmarked":false},{"id":"100900011","name":"종로05","isBookmarked":false},{"id":"100900004","name":"종로07","isBookmarked":false},{"id":"100900005","name":"종로08","isBookmarked":false},{"id":"100900003","name":"종로09","isBookmarked":false},{"id":"100900007","name":"종로11","isBookmarked":false},{"id":"100900009","name":"종로12","isBookmarked":false},{"id":"100900002","name":"종로13","isBookmarked":false},{"id":"106900001","name":"중랑01","isBookmarked":false},{"id":"106900002","name":"중랑02","isBookmarked":false}]
""".data(using: .utf8)!