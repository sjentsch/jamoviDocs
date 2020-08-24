function autXlt(srcLng, tgtLng)
   apiKey = 'ya29.c.Ko8B2QfvrHXFCVA0BDSNR3NsgRQ1FFC-PsIi03-kOiTKfvep2KZWtHtHjuy2ZaCZ9QD3VznwuayhMltnrRhYHgrsaN3hvKlE2UjMKxrPCvN6MqMMCwWrtMYxh_buZk0c467wGh6H0J74m6BRM7WoZwQrXbS-951naJuDUJZxKuF87JN8ouLkYMe7_cfUktVmWUk';

   [errFnd, outFnd] = system(['find _locale/', srcLng, '/* -type f -name *.po'])
   if errFnd == 0
      fleLst = strsplit(outFnd, '\n');
      fleLst(cellfun(@isempty, fleLst)) = [];
      for ZF = 1:length(fleLst)
         if exist(fleLst{ZF}, 'file') == 2 && exist(strrep(fleLst{ZF}, srcLng, tgtLng), 'file') == 2
            srcPO = textread(fleLst{ZF},                         '%s', 'delimiter', '\n');
            srcPrt = [find(not(cellfun(@isempty, regexp(srcPO, ['#: ', strrep(strrep(fleLst{ZF}, ['_locale/', srcLng, '/LC_MESSAGES'], '../..'), '.po', '.rst:')]))))', length(srcPO) + 1];
            tgtPO = textread(strrep(fleLst{ZF}, srcLng, tgtLng), '%s', 'delimiter', '\n');
            tgtExc = [find(not(cellfun(@isempty, regexp(tgtPO, ['#~ ]))))', length(tgtPO) + 1]

            
            tgtPrt = [find(not(cellfun(@isempty, regexp(tgtPO, ['#: ', strrep(strrep(fleLst{ZF}, ['_locale/', tgtLng, '/LC_MESSAGES'], '../..'), '.po', '.rst:')]))))', length(tgtPO) + 1];
            
            outPO = srcPO(1:srcPrt(1) - 1)
            for ZP = 1:length(srcPrt) - 1
               crrPrt = srcPO(srcPrt(ZP):srcPrt(ZP + 1) - 1);
               if ~isempty(regexp(crrPrt{2}, '^msgid "'))
                  orgStr = catStr(crrPrt{2:end}, 'msgid')
                  orgRng = [crrLne, crrLne + size(orgStr, 1) - 1];
                  crrLne = orgRng(2) 
               else
                  error('Error with parsing %d', srcPrt(ZP) + 1);
               end
               if ~isempty(regexp(crrPrt{orgRng(2) + 1}, '^msgstr "'))
                  srcStr = catStr(crrPrt{orgRng(2) + 1:end}, 'msgstr')
                  srcRng = [crrLne, crrLne + size(srcStr, 1) - 1];
                  crrLne = srcRng(2);
               else
                  error('Error with parsing %d', srcPrt(ZP) + orgRng(2));                 
               end
               if (srcRng(2) + 1) != size(crrPrt, 1) || not(isempty(crrPrt{srcRng(2) + 1}))
                  error('Error with parsing %d', srcPrt(ZP) + srcRng(2));
               end
               if isempty(srcStr) || strcmp(orgStr, srcStr)
                  % no translation needed
                  
               else
                  % translate string using Google Translate and extract result
                  % request with API-v2
                  %srcJSON = ['{"q":["', strrep(strrep(srcStr, ' ``', ' [['), '`` ', ']] '), '"], "source":"', srcLng, '", "target":"', tgtLng, '", "format":"text"}']
                  %[errXlt, outXlt] = system(['curl -s -X POST -H "Authorization: Bearer ', apiKey, '" -H "Content-Type: application/json; charset=utf-8" -d ''', srcJSON, ''' https://translation.googleapis.com/language/translate/v2']);
                  % request with API-v3
                  srcJSON = ['{ "sourceLanguageCode": "', srcLng, '", "targetLanguageCode": "', tgtLng, '", "contents": ["', strrep(strrep(srcStr, ' ``', ' [['), '`` ', ']] '), '"], "mimeType": "text/plain" }'];
                  [errKey, apiKey] = system('export GOOGLE_APPLICATION_CREDENTIALS="/home/sjentsch/Downloads/jamovi Translation-5c7929358966.json"; ~/.bin/google-cloud-sdk/bin/gcloud auth application-default print-access-token');
                  if errKey == 0
                     [errXlt, outXlt] = system(['curl -s -X POST -H "Authorization: Bearer ', apiKey(1:length(apiKey) - 1), '" -H "Content-Type: application/json; charset=utf-8" -d ''', srcJSON, ''' https://translation.googleapis.com/v3/projects/953088912373:translateText']);
                     if errXlt == 0
                        splXlt = strtrim(strsplit(outXlt, {'{', '}'}));
                        tgtStr = strtrim(strrep(strrep(strsplit(splXlt{not(cellfun(@isempty, regexp(splXlt, '^"translatedText"')))}, ':'){2}, ' [[', ' ``'), ']] ', '`` '));
                        tgtStr = tgtStr(2:end - 1);
                     else
                        error('Error %d when using Google-Translate-API.\n\n%s', errXlt, outXlt);
                     end
                  else
                     error('Error %d when obtaining credentials for using Google-Translate-API.\n\n%s', errKey, apiKey)
                  end
               end
            end
         end
      end
   end
end

function outStr = cutStr(inpStr)
   if length(inpStr) <= 71
      outStr = {['msgStr "', inpStr, '"']};
   else
      outStr = {'msgStr ""'}
      while 1 == 1
         inpDlm = sort([strfind(inpStr, ' '), strfind(inpStr, '-'), length(inpStr)]);
         crrDlm = max(inpDlm(inpDlm < 79));
         outStr = [outStr, {['"', inpStr(1:crrDlm), '"']}];
         inpStr(1:crrDlm) = [];
         if max(inpDlm) < 79; break; end
      end   
end

function outStr = catStr(inpCll, inpKey)
   orgStr = regexprep(regexprep(crrPrt{crrLne}, '^', inpKey, ' "', ''), '"$', '');
   crrLne = 2;
   while ~isempty(regexp(crrPrt{crrLne}, '^"'))
      orgStr = [orgStr, regexprep(regexprep(crrPrt{crrLne}, '^"', ''), '"$', '')];
      crrLne = crrLne + 1;
   end
end
