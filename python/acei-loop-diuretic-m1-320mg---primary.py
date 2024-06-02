# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2024.

import sys, csv, re

codes = [{"code":"6285","system":"gprdproduct"},{"code":"34712","system":"gprdproduct"},{"code":"24041","system":"gprdproduct"},{"code":"4661","system":"gprdproduct"},{"code":"34696","system":"gprdproduct"},{"code":"39199","system":"gprdproduct"},{"code":"41522","system":"gprdproduct"},{"code":"57610","system":"gprdproduct"},{"code":"54201","system":"gprdproduct"},{"code":"5189","system":"gprdproduct"},{"code":"34768","system":"gprdproduct"},{"code":"57600","system":"gprdproduct"},{"code":"14478","system":"gprdproduct"},{"code":"54825","system":"gprdproduct"},{"code":"41292","system":"gprdproduct"},{"code":"5159","system":"gprdproduct"},{"code":"37573","system":"gprdproduct"},{"code":"51897","system":"gprdproduct"},{"code":"56051","system":"gprdproduct"},{"code":"4705","system":"gprdproduct"},{"code":"30625","system":"gprdproduct"},{"code":"69","system":"gprdproduct"},{"code":"1904","system":"gprdproduct"},{"code":"55","system":"gprdproduct"},{"code":"18910","system":"gprdproduct"},{"code":"56510","system":"gprdproduct"},{"code":"35380","system":"gprdproduct"},{"code":"6468","system":"gprdproduct"},{"code":"55399","system":"gprdproduct"},{"code":"33078","system":"gprdproduct"},{"code":"17960","system":"gprdproduct"},{"code":"33353","system":"gprdproduct"},{"code":"59939","system":"gprdproduct"},{"code":"19198","system":"gprdproduct"},{"code":"29780","system":"gprdproduct"},{"code":"8268","system":"gprdproduct"},{"code":"31587","system":"gprdproduct"},{"code":"6118","system":"gprdproduct"},{"code":"6243","system":"gprdproduct"},{"code":"34453","system":"gprdproduct"},{"code":"56244","system":"gprdproduct"},{"code":"7441","system":"gprdproduct"},{"code":"2982","system":"gprdproduct"},{"code":"55588","system":"gprdproduct"},{"code":"17686","system":"gprdproduct"},{"code":"59996","system":"gprdproduct"},{"code":"4258","system":"gprdproduct"},{"code":"7799","system":"gprdproduct"},{"code":"27926","system":"gprdproduct"},{"code":"59290","system":"gprdproduct"},{"code":"34798","system":"gprdproduct"},{"code":"53967","system":"gprdproduct"},{"code":"22439","system":"gprdproduct"},{"code":"19194","system":"gprdproduct"},{"code":"53719","system":"gprdproduct"},{"code":"45324","system":"gprdproduct"},{"code":"32918","system":"gprdproduct"},{"code":"35162","system":"gprdproduct"},{"code":"32560","system":"gprdproduct"},{"code":"52887","system":"gprdproduct"},{"code":"43413","system":"gprdproduct"},{"code":"46365","system":"gprdproduct"},{"code":"8105","system":"gprdproduct"},{"code":"1021","system":"gprdproduct"},{"code":"21231","system":"gprdproduct"},{"code":"53551","system":"gprdproduct"},{"code":"18200","system":"gprdproduct"},{"code":"12313","system":"gprdproduct"},{"code":"47815","system":"gprdproduct"},{"code":"42902","system":"gprdproduct"},{"code":"55002","system":"gprdproduct"},{"code":"18219","system":"gprdproduct"},{"code":"34953","system":"gprdproduct"},{"code":"51433","system":"gprdproduct"},{"code":"5868","system":"gprdproduct"},{"code":"29634","system":"gprdproduct"},{"code":"59030","system":"gprdproduct"},{"code":"59884","system":"gprdproduct"},{"code":"59111","system":"gprdproduct"},{"code":"46979","system":"gprdproduct"},{"code":"38854","system":"gprdproduct"},{"code":"31548","system":"gprdproduct"},{"code":"31716","system":"gprdproduct"},{"code":"34799","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('acei-loop-diuretic-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["acei-loop-diuretic-m1-320mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["acei-loop-diuretic-m1-320mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["acei-loop-diuretic-m1-320mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
