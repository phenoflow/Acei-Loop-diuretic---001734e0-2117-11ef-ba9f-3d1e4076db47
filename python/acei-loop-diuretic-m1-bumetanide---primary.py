# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2024.

import sys, csv, re

codes = [{"code":"31932","system":"gprdproduct"},{"code":"55548","system":"gprdproduct"},{"code":"34934","system":"gprdproduct"},{"code":"814","system":"gprdproduct"},{"code":"39602","system":"gprdproduct"},{"code":"36767","system":"gprdproduct"},{"code":"45305","system":"gprdproduct"},{"code":"5218","system":"gprdproduct"},{"code":"32091","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('acei-loop-diuretic-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["acei-loop-diuretic-m1-bumetanide---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["acei-loop-diuretic-m1-bumetanide---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["acei-loop-diuretic-m1-bumetanide---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
