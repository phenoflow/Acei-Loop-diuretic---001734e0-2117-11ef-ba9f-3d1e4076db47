# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2024.

import sys, csv, re

codes = [{"code":"34006","system":"gprdproduct"},{"code":"24359","system":"gprdproduct"},{"code":"9731","system":"gprdproduct"},{"code":"16206","system":"gprdproduct"},{"code":"16285","system":"gprdproduct"},{"code":"32896","system":"gprdproduct"},{"code":"34374","system":"gprdproduct"},{"code":"7606","system":"gprdproduct"},{"code":"15096","system":"gprdproduct"},{"code":"60007","system":"gprdproduct"},{"code":"27696","system":"gprdproduct"},{"code":"42488","system":"gprdproduct"},{"code":"14870","system":"gprdproduct"},{"code":"20538","system":"gprdproduct"},{"code":"13821","system":"gprdproduct"},{"code":"43322","system":"gprdproduct"},{"code":"56375","system":"gprdproduct"},{"code":"42285","system":"gprdproduct"},{"code":"40668","system":"gprdproduct"},{"code":"27447","system":"gprdproduct"},{"code":"58669","system":"gprdproduct"},{"code":"26292","system":"gprdproduct"},{"code":"47616","system":"gprdproduct"},{"code":"46715","system":"gprdproduct"},{"code":"5988","system":"gprdproduct"},{"code":"27690","system":"gprdproduct"},{"code":"8102","system":"gprdproduct"},{"code":"41203","system":"gprdproduct"},{"code":"43915","system":"gprdproduct"},{"code":"20117","system":"gprdproduct"},{"code":"59911","system":"gprdproduct"},{"code":"5728","system":"gprdproduct"},{"code":"6351","system":"gprdproduct"},{"code":"42388","system":"gprdproduct"},{"code":"34557","system":"gprdproduct"},{"code":"6","system":"gprdproduct"},{"code":"575","system":"gprdproduct"},{"code":"13123","system":"gprdproduct"},{"code":"14761","system":"gprdproduct"},{"code":"46948","system":"gprdproduct"},{"code":"14943","system":"gprdproduct"},{"code":"19192","system":"gprdproduct"},{"code":"60291","system":"gprdproduct"},{"code":"18202","system":"gprdproduct"},{"code":"2961","system":"gprdproduct"},{"code":"25717","system":"gprdproduct"},{"code":"11251","system":"gprdproduct"},{"code":"46699","system":"gprdproduct"},{"code":"9680","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('acei-loop-diuretic-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["acei-loop-diuretic-m1-400mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["acei-loop-diuretic-m1-400mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["acei-loop-diuretic-m1-400mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
