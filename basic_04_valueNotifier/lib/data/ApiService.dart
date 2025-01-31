import 'dart:convert';

import 'package:basic_04_valueNotifier/data/Product.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<ProductItem>> fetchBestProduction() async {
    List<ProductItem> bestProductions = [];
    final url = Uri.parse(
      'https://store.ohou.se/api/ranks?page=1&type=best',
    );
    var headers = {
      'accept':
          'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7',
      'accept-language': 'ko-KR,ko;q=0.9',
      'cache-control': 'max-age=0',
      'cookie':
          'bp-m-ver=1.0.0; bp-p-type=Web; bp-p-ver=Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36; bp-cid=c250127145639-b4ac9e9273fa; bp-locale=ko-KR; bp-tz=Asia/Seoul; b_visitor_id=w1737957399401684958; bp-a-ver=25.1.1; _ohouse_session_4=057ece1e3dd6b940435488d017d4a416; _fbp=fb.1.1737957400627.702044626616807072; airbridge_migration_metadata__ohouse=%7B%22version%22%3A%221.10.64%22%7D; ab180ClientId=6afc3707-9515-404a-91ba-83850bd643e1; a1_gid=02sZiGYpJpsAAmAV; a1_sgid=02sZiGYpJpsAAmAV1737957401322; _fwb=7MAG2RScnudDkTfmLohYQ.1737957401329; _ohouse_guest_id=w1737957399401684958; _wp_uid=1-60803034418e620139b072cdce57aab9-s1721522741.938097|mac_osx|chrome-13q8k4a; __lt__cid=73b8de98-8095-4171-82d5-86bfdf9102eb; _gcl_au=1.1.316431058.1737957402; _ga=GA1.2.1392670974.1737957402; _tt_enable_cookie=1; _ttp=D6UZds4_n56i5mplgf1bRrElVpM.tt.1; _hjSessionUser_877658=eyJpZCI6ImZlYmJiOTYyLWRjZjctNWQ3YS04NGJjLTYwMDYyMzc5MzBkOSIsImNyZWF0ZWQiOjE3Mzc5NTc0MDMyMzgsImV4aXN0aW5nIjp0cnVlfQ==; _fwb=7MAG2RScnudDkTfmLohYQ.1737957401329; _wp_uid=1-60803034418e620139b072cdce57aab9-s1721522741.938097|mac_osx|chrome-13q8k4a; _gid=GA1.2.69304538.1738045514; amp_5a87b5=El1lk_Mhrd2Y7xfgujZ9ri...1iilpbn6f.1iilr9tij.1.0.1; bp-a-name=store-web; wcs_bt=s_2e85116be219:1738047553; ab.storage.sessionId.5195e134-c2c9-4bdb-8431-ee5fca29b935=%7B%22g%22%3A%2220510c30-aa09-62ef-fd22-6aee36ed50c3%22%2C%22e%22%3A1738122500702%2C%22c%22%3A1738120700702%2C%22l%22%3A1738120700702%7D; ab.storage.deviceId.5195e134-c2c9-4bdb-8431-ee5fca29b935=%7B%22g%22%3A%225bdadcf5-319a-240b-2603-8e98a62dd363%22%2C%22c%22%3A1737957401482%2C%22l%22%3A1738120700703%7D; cto_bundle=P-ZgEF9RZ3RMU0NoUENOSUVqQjhKZmw1NmxWUWNNWGpzbDdERmFzTUpkSzBlZCUyRmFqc3QlMkJxU2NPT1p5czhDY2YwbUVkZ2V4QTNQdW54VE4lMkJmaDA5ZzdoQ3hTRTRSMHFlWEgyJTJGRjRlaUdqMGhvcnVJZ09vV1pKdVpocTM0OGFYanhpM3loYUxVbk02eWpiMUt5YzNJelhiUjYzcVVSTzNzT2ZBc1RVZlBtamVITEV3akxxekxOb2M0Y1BnUzBUNHElMkZoRFRMSFRCTE5aenk0OHE5Um5DRnBxdXU0N0NDV2p6ekw4TVEzeFh4cXZQQUk3NFFOMnRYWnhNU0U4ZFN5OWg1cXhPWSUyRmpXdlVYYmtzd0I5YjVIVWRLRElnYnVkTkxGQTd3bUpNUFdvbXU4MHhwcyUzRA; airbridge_session=%7B%22id%22%3A%22d30d93cc-e4ee-4db8-a179-4ee17081e7c4%22%2C%22timeout%22%3A1800000%2C%22start%22%3A1738120700849%2C%22end%22%3A1738120700849%7D; _ga_57WM2Y5X7N=GS1.2.1738120701.3.0.1738120701.60.0.0; bp-sid=s250128152511-0719da8d4368:1738131911206:1738122501822; _abck=B0021EDE83B1AA52F163E7CCC3FC3646~0~YAAQBl/RF0FU+pWUAQAAnmUKsg1LrFcgop70FhhTxiyZPH6cI5TQ/mw4pMXgmk/+Ut4i0I1ytxOQeojk8+hsH8SWeUMTgCT0DzJ+s3IhkDh2+OT3zOSvSeDT/PQ1AFK4g7J8pUS7bchxYS/bqqExcBhqYbqzYZsdCUdnhQ8FS2WOMPwOs5LEQB5RCRXIhn1TYiijS2ttLoOhdIF2Fx77zdvXBzbyhFBSBg3Cn2ASr3ZA6WLPkl/lUpNxrgRE1SO+qIYwALWrJcowlQSfzG6wi2mgs+bGiKFuZHeAA5rGVNOaZrPPpcJE3utbGHe9tm53SGsClKXr4FHoLBSTXba4MXQhzVk23PWhaDsmHjGqLK1iHFE3caOmIez7ahhtn2o2byFTAdgSlQjPggHDt8hW3t9LScrzgJfC7ri5GEXnTub+NYZbpA9vRVLrovVGDoO4rSnNKTofQXlQE288MD5Ga1Px447XvPs+vdmbZqcc0Z8UXcfRuE66Eg==~-1~-1~-1; _dd_s=isExpired=1; bm_sz=A57ABBA9EF7B244DBC36567D15F5C754~YAAQh+AsF/l9BJKUAQAAMLhFshqpuWys3w8MGnYkHjLvw1vreyt+wc5MOorA9JbOIginiocbbSVGg79iONXjt77kgcZOs4GC11zG9x2GMz1QrXBzf0f2ZdU4jshBkarojDQc3z2PIb4CGpomsHdWqniUsYPlx9G8xbcdy6yzNCW89T6VKkPrM4lN6p/MFjES8jZTOrkZ4dx0KaecHTzw8ErvkiEXSgRdoh5SAz7aBrkvzDIa9KUiTw1HGhmPy+U3sNZKr8x5T7xdKNNMnKBFvXJA1ptdWuXl17RRUFIwbdNIhmF/W3ArhHUr3NP+j0DwtBAlhFm0y+j07cisA9cD3JX5FRkOaoIMt9zQjjNpLG7LiZVVgW2uh4lCZWjtS3H/stoZxnt0INnfn6RFmhKxz7zkA7s01VfigSl/RTHLdLhxerN8oJwqGe2kuN8=~4539442~3294521',
      'if-none-match': '"15rz6yicz0jtjx"',
      'priority': 'u=0, i',
      'sec-ch-ua':
          '"Google Chrome";v="131", "Chromium";v="131", "Not_A Brand";v="24"',
      'sec-ch-ua-mobile': '?0',
      'sec-ch-ua-platform': '"macOS"',
      'sec-fetch-dest': 'document',
      'sec-fetch-mode': 'navigate',
      'sec-fetch-site': 'none',
      'sec-fetch-user': '?1',
      'upgrade-insecure-requests': '1',
      'user-agent':
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'
    };

    final response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      List<ProductItem> bestProductions = [];

      if (json case {'products': List productionList}) {
        return Product.fromJson(json).products ?? [];
      }
    }
    throw Exception('Failed to load data');
  }
}
