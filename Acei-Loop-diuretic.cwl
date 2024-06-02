cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  acei-loop-diuretic-m1-imidapril---primary:
    run: acei-loop-diuretic-m1-imidapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  acei-loop-diuretic-m1-100mg---primary:
    run: acei-loop-diuretic-m1-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-imidapril---primary/output
  acei-loop-diuretic-m1-erbumine---primary:
    run: acei-loop-diuretic-m1-erbumine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-100mg---primary/output
  acei-loop-diuretic-m1-320mg---primary:
    run: acei-loop-diuretic-m1-320mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-erbumine---primary/output
  acei-loop-diuretic-m1-625mg---primary:
    run: acei-loop-diuretic-m1-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-320mg---primary/output
  acei-loop-diuretic-m1-400mg---primary:
    run: acei-loop-diuretic-m1-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-625mg---primary/output
  acei-loop-diuretic-m1-lopace---primary:
    run: acei-loop-diuretic-m1-lopace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-400mg---primary/output
  acei-loop-diuretic-m1-250mg---primary:
    run: acei-loop-diuretic-m1-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-lopace---primary/output
  acei-loop-diuretic-m1-500microgram---primary:
    run: acei-loop-diuretic-m1-500microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-250mg---primary/output
  acei-loop-diuretic-m1-150mg---primary:
    run: acei-loop-diuretic-m1-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-500microgram---primary/output
  acei-loop-diuretic-m1-tritace---primary:
    run: acei-loop-diuretic-m1-tritace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-150mg---primary/output
  acei-loop-diuretic-m1-olmesartan---primary:
    run: acei-loop-diuretic-m1-olmesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-tritace---primary/output
  acei-loop-diuretic-m1-ramipril---primary:
    run: acei-loop-diuretic-m1-ramipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-olmesartan---primary/output
  acei-loop-diuretic-m1-fosinopril---primary:
    run: acei-loop-diuretic-m1-fosinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-ramipril---primary/output
  acei-loop-diuretic-m1-solution---primary:
    run: acei-loop-diuretic-m1-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-fosinopril---primary/output
  acei-loop-diuretic-m1-perdix---primary:
    run: acei-loop-diuretic-m1-perdix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-solution---primary/output
  acei-loop-diuretic-m1-aprovel---primary:
    run: acei-loop-diuretic-m1-aprovel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-perdix---primary/output
  acei-loop-diuretic-m1-180mg---primary:
    run: acei-loop-diuretic-m1-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-aprovel---primary/output
  acei-loop-diuretic-m1-500mg---primary:
    run: acei-loop-diuretic-m1-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-180mg---primary/output
  acei-loop-diuretic-m1-trandolapril---primary:
    run: acei-loop-diuretic-m1-trandolapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-500mg---primary/output
  acei-loop-diuretic-m1-wafer---primary:
    run: acei-loop-diuretic-m1-wafer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-trandolapril---primary/output
  acei-loop-diuretic-m1-gopten---primary:
    run: acei-loop-diuretic-m1-gopten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-wafer---primary/output
  acei-loop-diuretic-m1-tablet---primary:
    run: acei-loop-diuretic-m1-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-gopten---primary/output
  acei-loop-diuretic-m1-candesartan---primary:
    run: acei-loop-diuretic-m1-candesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-tablet---primary/output
  acei-loop-diuretic-m1-bumetanide---primary:
    run: acei-loop-diuretic-m1-bumetanide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-candesartan---primary/output
  acei-loop-diuretic-m1-tosilate---primary:
    run: acei-loop-diuretic-m1-tosilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-bumetanide---primary/output
  acei-loop-diuretic-m1-ampoule---primary:
    run: acei-loop-diuretic-m1-ampoule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-tosilate---primary/output
  acei-loop-diuretic-m1-cozaarcomp---primary:
    run: acei-loop-diuretic-m1-cozaarcomp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-ampoule---primary/output
  acei-loop-diuretic-m1-staril---primary:
    run: acei-loop-diuretic-m1-staril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-cozaarcomp---primary/output
  acei-loop-diuretic-m1-300mg---primary:
    run: acei-loop-diuretic-m1-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-staril---primary/output
  acei-loop-diuretic-m1-160mg---primary:
    run: acei-loop-diuretic-m1-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-300mg---primary/output
  acei-loop-diuretic-m1-burinex---primary:
    run: acei-loop-diuretic-m1-burinex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-160mg---primary/output
  acei-loop-diuretic-m1-carace---primary:
    run: acei-loop-diuretic-m1-carace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-burinex---primary/output
  acei-loop-diuretic-m1-vascace---primary:
    run: acei-loop-diuretic-m1-vascace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-carace---primary/output
  acei-loop-diuretic-m1-tanatril---primary:
    run: acei-loop-diuretic-m1-tanatril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-vascace---primary/output
  acei-loop-diuretic-m1-chloride---primary:
    run: acei-loop-diuretic-m1-chloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-tanatril---primary/output
  intravenous-acei-loop-diuretic-m1---primary:
    run: intravenous-acei-loop-diuretic-m1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-chloride---primary/output
  acei-loop-diuretic-m1-cilazapril---primary:
    run: acei-loop-diuretic-m1-cilazapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: intravenous-acei-loop-diuretic-m1---primary/output
  dryptal-acei-loop-diuretic-m1---primary:
    run: dryptal-acei-loop-diuretic-m1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-cilazapril---primary/output
  acei-loop-diuretic-m1-quinapril---primary:
    run: acei-loop-diuretic-m1-quinapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: dryptal-acei-loop-diuretic-m1---primary/output
  acei-loop-diuretic-m1-coversyl---primary:
    run: acei-loop-diuretic-m1-coversyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-quinapril---primary/output
  acei-loop-diuretic-m1-capozide---primary:
    run: acei-loop-diuretic-m1-capozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-coversyl---primary/output
  acei-loop-diuretic-m1-suspension---primary:
    run: acei-loop-diuretic-m1-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-capozide---primary/output
  acei-loop-diuretic-m1-torem---primary:
    run: acei-loop-diuretic-m1-torem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-suspension---primary/output
  acei-loop-diuretic-m1-losartan---primary:
    run: acei-loop-diuretic-m1-losartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-torem---primary/output
  acei-loop-diuretic-m1-odrik---primary:
    run: acei-loop-diuretic-m1-odrik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-losartan---primary/output
  acei-loop-diuretic-m1-captopril---primary:
    run: acei-loop-diuretic-m1-captopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-odrik---primary/output
  acei-loop-diuretic-m1-teveten---primary:
    run: acei-loop-diuretic-m1-teveten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-captopril---primary/output
  acei-loop-diuretic-m1-amlodipine---primary:
    run: acei-loop-diuretic-m1-amlodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-teveten---primary/output
  acei-loop-diuretic-m1-indapamide---primary:
    run: acei-loop-diuretic-m1-indapamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-amlodipine---primary/output
  acei-loop-diuretic-m1-modifiedrelease---primary:
    run: acei-loop-diuretic-m1-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-indapamide---primary/output
  acei-loop-diuretic-m1-syringe---primary:
    run: acei-loop-diuretic-m1-syringe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-modifiedrelease---primary/output
  acei-loop-diuretic-m1-lisopress---primary:
    run: acei-loop-diuretic-m1-lisopress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-syringe---primary/output
  acei-loop-diuretic-m1-enalapril---primary:
    run: acei-loop-diuretic-m1-enalapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-lisopress---primary/output
  acei-loop-diuretic-m1-coamilofruse---primary:
    run: acei-loop-diuretic-m1-coamilofruse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-enalapril---primary/output
  acei-loop-diuretic-m1-moexipril---primary:
    run: acei-loop-diuretic-m1-moexipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-coamilofruse---primary/output
  acei-loop-diuretic-m1-exforge---primary:
    run: acei-loop-diuretic-m1-exforge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-moexipril---primary/output
  acei-loop-diuretic-m1-eprosartan---primary:
    run: acei-loop-diuretic-m1-eprosartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-exforge---primary/output
  acei-loop-diuretic-m1-zestril---primary:
    run: acei-loop-diuretic-m1-zestril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-eprosartan---primary/output
  acei-loop-diuretic-m1-ecopace---primary:
    run: acei-loop-diuretic-m1-ecopace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-zestril---primary/output
  acei-loop-diuretic-m1-accupro---primary:
    run: acei-loop-diuretic-m1-accupro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-ecopace---primary/output
  acei-loop-diuretic-m1-irbesartan---primary:
    run: acei-loop-diuretic-m1-irbesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-accupro---primary/output
  acei-loop-diuretic-m1-capsule---primary:
    run: acei-loop-diuretic-m1-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-irbesartan---primary/output
  acei-loop-diuretic-m1-innovace---primary:
    run: acei-loop-diuretic-m1-innovace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-capsule---primary/output
  acei-loop-diuretic-m1-arginine---primary:
    run: acei-loop-diuretic-m1-arginine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-innovace---primary/output
  acei-loop-diuretic-m1-kaplon---primary:
    run: acei-loop-diuretic-m1-kaplon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-arginine---primary/output
  acei-loop-diuretic-m1-amiloride---primary:
    run: acei-loop-diuretic-m1-amiloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-kaplon---primary/output
  acei-loop-diuretic-m1-tensopril---primary:
    run: acei-loop-diuretic-m1-tensopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-amiloride---primary/output
  zestoretic-acei-loop-diuretic-m1---primary:
    run: zestoretic-acei-loop-diuretic-m1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-tensopril---primary/output
  acei-loop-diuretic-m1-capoten---primary:
    run: acei-loop-diuretic-m1-capoten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: zestoretic-acei-loop-diuretic-m1---primary/output
  acei-loop-diuretic-m1-azilsartan---primary:
    run: acei-loop-diuretic-m1-azilsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-capoten---primary/output
  acei-loop-diuretic-m1-acepril---primary:
    run: acei-loop-diuretic-m1-acepril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-azilsartan---primary/output
  acei-loop-diuretic-m1-olmetec---primary:
    run: acei-loop-diuretic-m1-olmetec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-acepril---primary/output
  acei-loop-diuretic-m1-quinil---primary:
    run: acei-loop-diuretic-m1-quinil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-olmetec---primary/output
  acei-loop-diuretic-m1-titration---primary:
    run: acei-loop-diuretic-m1-titration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-quinil---primary/output
  acei-loop-diuretic-m1-perindopril---primary:
    run: acei-loop-diuretic-m1-perindopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-titration---primary/output
  etacrynic-acei-loop-diuretic-m1---primary:
    run: etacrynic-acei-loop-diuretic-m1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-perindopril---primary/output
  pralenal-acei-loop-diuretic-m1---primary:
    run: pralenal-acei-loop-diuretic-m1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: etacrynic-acei-loop-diuretic-m1---primary/output
  acei-loop-diuretic-m1-ednyt---primary:
    run: acei-loop-diuretic-m1-ednyt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: pralenal-acei-loop-diuretic-m1---primary/output
  acei-loop-diuretic-m1-600mg---primary:
    run: acei-loop-diuretic-m1-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-ednyt---primary/output
  acei-loop-diuretic-m1-torasemide---primary:
    run: acei-loop-diuretic-m1-torasemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-600mg---primary/output
  acei-loop-diuretic-m1-codiovan---primary:
    run: acei-loop-diuretic-m1-codiovan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-torasemide---primary/output
  acei-loop-diuretic-m1-valsartan---primary:
    run: acei-loop-diuretic-m1-valsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-codiovan---primary/output
  acei-loop-diuretic-m1-captomex---primary:
    run: acei-loop-diuretic-m1-captomex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-valsartan---primary/output
  acei-loop-diuretic-m1-triamterene---primary:
    run: acei-loop-diuretic-m1-triamterene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-captomex---primary/output
  acei-loop-diuretic-m1-furosemide---primary:
    run: acei-loop-diuretic-m1-furosemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-triamterene---primary/output
  acei-loop-diuretic-m1-minijet---primary:
    run: acei-loop-diuretic-m1-minijet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-furosemide---primary/output
  acei-loop-diuretic-m1-lasix---primary:
    run: acei-loop-diuretic-m1-lasix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-minijet---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: acei-loop-diuretic-m1-lasix---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
