# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2024.

import sys, csv, re

codes = [{"code":"3222","system":"gprdproduct"},{"code":"18223","system":"gprdproduct"},{"code":"17545","system":"gprdproduct"},{"code":"5220","system":"gprdproduct"},{"code":"19690","system":"gprdproduct"},{"code":"34622","system":"gprdproduct"},{"code":"18497","system":"gprdproduct"},{"code":"16060","system":"gprdproduct"},{"code":"764","system":"gprdproduct"},{"code":"52858","system":"gprdproduct"},{"code":"16161","system":"gprdproduct"},{"code":"11252","system":"gprdproduct"},{"code":"13435","system":"gprdproduct"},{"code":"38395","system":"gprdproduct"},{"code":"59448","system":"gprdproduct"},{"code":"24268","system":"gprdproduct"},{"code":"58910","system":"gprdproduct"},{"code":"12874","system":"gprdproduct"},{"code":"3793","system":"gprdproduct"},{"code":"17689","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('acei-loop-diuretic-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["acei-loop-diuretic-m1-180mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["acei-loop-diuretic-m1-180mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["acei-loop-diuretic-m1-180mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
