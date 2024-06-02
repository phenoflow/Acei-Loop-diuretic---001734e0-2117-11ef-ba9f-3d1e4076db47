# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2024.

import sys, csv, re

codes = [{"code":"57028","system":"gprdproduct"},{"code":"52010","system":"gprdproduct"},{"code":"40384","system":"gprdproduct"},{"code":"34583","system":"gprdproduct"},{"code":"58224","system":"gprdproduct"},{"code":"55903","system":"gprdproduct"},{"code":"33894","system":"gprdproduct"},{"code":"19223","system":"gprdproduct"},{"code":"56763","system":"gprdproduct"},{"code":"53271","system":"gprdproduct"},{"code":"34893","system":"gprdproduct"},{"code":"56169","system":"gprdproduct"},{"code":"47006","system":"gprdproduct"},{"code":"52407","system":"gprdproduct"},{"code":"49164","system":"gprdproduct"},{"code":"756","system":"gprdproduct"},{"code":"15031","system":"gprdproduct"},{"code":"55639","system":"gprdproduct"},{"code":"19208","system":"gprdproduct"},{"code":"56970","system":"gprdproduct"},{"code":"82","system":"gprdproduct"},{"code":"54404","system":"gprdproduct"},{"code":"34877","system":"gprdproduct"},{"code":"54928","system":"gprdproduct"},{"code":"34943","system":"gprdproduct"},{"code":"37650","system":"gprdproduct"},{"code":"45300","system":"gprdproduct"},{"code":"32241","system":"gprdproduct"},{"code":"40247","system":"gprdproduct"},{"code":"45340","system":"gprdproduct"},{"code":"48039","system":"gprdproduct"},{"code":"54037","system":"gprdproduct"},{"code":"42894","system":"gprdproduct"},{"code":"43416","system":"gprdproduct"},{"code":"34657","system":"gprdproduct"},{"code":"34651","system":"gprdproduct"},{"code":"562","system":"gprdproduct"},{"code":"58871","system":"gprdproduct"},{"code":"57048","system":"gprdproduct"},{"code":"65","system":"gprdproduct"},{"code":"47159","system":"gprdproduct"},{"code":"59788","system":"gprdproduct"},{"code":"49588","system":"gprdproduct"},{"code":"58863","system":"gprdproduct"},{"code":"34357","system":"gprdproduct"},{"code":"52658","system":"gprdproduct"},{"code":"56038","system":"gprdproduct"},{"code":"55446","system":"gprdproduct"},{"code":"34952","system":"gprdproduct"},{"code":"32597","system":"gprdproduct"},{"code":"41746","system":"gprdproduct"},{"code":"57346","system":"gprdproduct"},{"code":"46116","system":"gprdproduct"},{"code":"35007","system":"gprdproduct"},{"code":"60506","system":"gprdproduct"},{"code":"54288","system":"gprdproduct"},{"code":"60010","system":"gprdproduct"},{"code":"624","system":"gprdproduct"},{"code":"1299","system":"gprdproduct"},{"code":"33977","system":"gprdproduct"},{"code":"56356","system":"gprdproduct"},{"code":"37710","system":"gprdproduct"},{"code":"38367","system":"gprdproduct"},{"code":"53612","system":"gprdproduct"},{"code":"56855","system":"gprdproduct"},{"code":"34710","system":"gprdproduct"},{"code":"50509","system":"gprdproduct"},{"code":"6786","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('acei-loop-diuretic-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["acei-loop-diuretic-m1-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["acei-loop-diuretic-m1-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["acei-loop-diuretic-m1-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
