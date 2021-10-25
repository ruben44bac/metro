defmodule Metro.File do
  @moduledoc """
  In case of not finding the file in server
  """
  @spec get_file :: <<_::623_416>>
  def get_file() do
    """
    <?xml version="1.0" encoding="UTF-8"?>
    <kml xmlns="http://www.opengis.net/kml/2.2">
      <Document>
        <name>Metro de la Ciudad de México</name>
        <description>Mapa del Sistema de Transporte Colectivo | Red del Metro de la Ciudad de México. Cortesía de www.defe.mx</description>
        <Style id="icon-1445-normal">
          <IconStyle>
            <scale>1.1</scale>
            <Icon>
              <href>http://www.gstatic.com/mapspro/images/stock/1445-trans-metro.png</href>
            </Icon>
          </IconStyle>
          <LabelStyle>
            <scale>0</scale>
          </LabelStyle>
        </Style>
        <Style id="icon-1445-highlight">
          <IconStyle>
            <scale>1.1</scale>
            <Icon>
              <href>http://www.gstatic.com/mapspro/images/stock/1445-trans-metro.png</href>
            </Icon>
          </IconStyle>
          <LabelStyle>
            <scale>1.1</scale>
          </LabelStyle>
        </Style>
        <StyleMap id="icon-1445">
          <Pair>
            <key>normal</key>
            <styleUrl>#icon-1445-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#icon-1445-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Style id="line-009D57-10494-nodesc-normal">
          <LineStyle>
            <color>ff579d00</color>
            <width>10.494</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <Style id="line-009D57-10494-nodesc-highlight">
          <LineStyle>
            <color>ff579d00</color>
            <width>15.741</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <StyleMap id="line-009D57-10494-nodesc">
          <Pair>
            <key>normal</key>
            <styleUrl>#line-009D57-10494-nodesc-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#line-009D57-10494-nodesc-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Style id="line-3F5BA9-9913-nodesc-normal">
          <LineStyle>
            <color>ffa95b3f</color>
            <width>9.913</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <Style id="line-3F5BA9-9913-nodesc-highlight">
          <LineStyle>
            <color>ffa95b3f</color>
            <width>14.8695</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <StyleMap id="line-3F5BA9-9913-nodesc">
          <Pair>
            <key>normal</key>
            <styleUrl>#line-3F5BA9-9913-nodesc-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#line-3F5BA9-9913-nodesc-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Style id="line-4186F0-10300-nodesc-normal">
          <LineStyle>
            <color>fff08641</color>
            <width>10.3</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <Style id="line-4186F0-10300-nodesc-highlight">
          <LineStyle>
            <color>fff08641</color>
            <width>15.45</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <StyleMap id="line-4186F0-10300-nodesc">
          <Pair>
            <key>normal</key>
            <styleUrl>#line-4186F0-10300-nodesc-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#line-4186F0-10300-nodesc-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Style id="line-777777-10106-nodesc-normal">
          <LineStyle>
            <color>ff777777</color>
            <width>10.106</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <Style id="line-777777-10106-nodesc-highlight">
          <LineStyle>
            <color>ff777777</color>
            <width>15.159</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <StyleMap id="line-777777-10106-nodesc">
          <Pair>
            <key>normal</key>
            <styleUrl>#line-777777-10106-nodesc-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#line-777777-10106-nodesc-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Style id="line-795046-9719-nodesc-normal">
          <LineStyle>
            <color>ff465079</color>
            <width>9.719</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <Style id="line-795046-9719-nodesc-highlight">
          <LineStyle>
            <color>ff465079</color>
            <width>14.5785</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <StyleMap id="line-795046-9719-nodesc">
          <Pair>
            <key>normal</key>
            <styleUrl>#line-795046-9719-nodesc-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#line-795046-9719-nodesc-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Style id="line-93D7E8-10688-nodesc-normal">
          <LineStyle>
            <color>ffe8d793</color>
            <width>10.688</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <Style id="line-93D7E8-10688-nodesc-highlight">
          <LineStyle>
            <color>ffe8d793</color>
            <width>16.032</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <StyleMap id="line-93D7E8-10688-nodesc">
          <Pair>
            <key>normal</key>
            <styleUrl>#line-93D7E8-10688-nodesc-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#line-93D7E8-10688-nodesc-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Style id="line-CDDC39-10688-nodesc-normal">
          <LineStyle>
            <color>ff39dccd</color>
            <width>10.688</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <Style id="line-CDDC39-10688-nodesc-highlight">
          <LineStyle>
            <color>ff39dccd</color>
            <width>16.032</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <StyleMap id="line-CDDC39-10688-nodesc">
          <Pair>
            <key>normal</key>
            <styleUrl>#line-CDDC39-10688-nodesc-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#line-CDDC39-10688-nodesc-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Style id="line-DB4436-10494-nodesc-normal">
          <LineStyle>
            <color>ff3644db</color>
            <width>10.494</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <Style id="line-DB4436-10494-nodesc-highlight">
          <LineStyle>
            <color>ff3644db</color>
            <width>15.741</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <StyleMap id="line-DB4436-10494-nodesc">
          <Pair>
            <key>normal</key>
            <styleUrl>#line-DB4436-10494-nodesc-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#line-DB4436-10494-nodesc-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Style id="line-EE9C96-10494-nodesc-normal">
          <LineStyle>
            <color>ff969cee</color>
            <width>10.494</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <Style id="line-EE9C96-10494-nodesc-highlight">
          <LineStyle>
            <color>ff969cee</color>
            <width>15.741</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <StyleMap id="line-EE9C96-10494-nodesc">
          <Pair>
            <key>normal</key>
            <styleUrl>#line-EE9C96-10494-nodesc-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#line-EE9C96-10494-nodesc-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Style id="line-F4B400-10494-nodesc-normal">
          <LineStyle>
            <color>ff00b4f4</color>
            <width>10.494</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <Style id="line-F4B400-10494-nodesc-highlight">
          <LineStyle>
            <color>ff00b4f4</color>
            <width>15.741</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <StyleMap id="line-F4B400-10494-nodesc">
          <Pair>
            <key>normal</key>
            <styleUrl>#line-F4B400-10494-nodesc-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#line-F4B400-10494-nodesc-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Style id="line-F8971B-10300-nodesc-normal">
          <LineStyle>
            <color>ff1b97f8</color>
            <width>10.3</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <Style id="line-F8971B-10300-nodesc-highlight">
          <LineStyle>
            <color>ff1b97f8</color>
            <width>15.45</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <StyleMap id="line-F8971B-10300-nodesc">
          <Pair>
            <key>normal</key>
            <styleUrl>#line-F8971B-10300-nodesc-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#line-F8971B-10300-nodesc-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Style id="line-FFDD5E-10494-nodesc-normal">
          <LineStyle>
            <color>ff5eddff</color>
            <width>10.494</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <Style id="line-FFDD5E-10494-nodesc-highlight">
          <LineStyle>
            <color>ff5eddff</color>
            <width>15.741</width>
          </LineStyle>
          <BalloonStyle>
            <text><![CDATA[<h3>$[name]</h3>]]></text>
          </BalloonStyle>
        </Style>
        <StyleMap id="line-FFDD5E-10494-nodesc">
          <Pair>
            <key>normal</key>
            <styleUrl>#line-FFDD5E-10494-nodesc-normal</styleUrl>
          </Pair>
          <Pair>
            <key>highlight</key>
            <styleUrl>#line-FFDD5E-10494-nodesc-highlight</styleUrl>
          </Pair>
        </StyleMap>
        <Folder>
          <name>Líneas de Metro</name>
          <Placemark>
            <name>Línea 1</name>
            <styleUrl>#line-EE9C96-10494-nodesc</styleUrl>
            <LineString>
              <tessellate>1</tessellate>
              <coordinates>
                -99.2005488,19.3982501,0
                -99.187097,19.4031605,0
                -99.1821724,19.4129053,0
                -99.1762608,19.420813,0
                -99.1706067,19.421926,0
                -99.1627908,19.4236259,0
                -99.154653,19.425867,0
                -99.149074,19.42741,0
                -99.1422343,19.4267827,0
                -99.1374546,19.4265399,0
                -99.132911,19.4257912,0
                -99.1246551,19.4254927,0
                -99.1194355,19.4288468,0
                -99.1148007,19.4302734,0
                -99.1102624,19.4272178,0
                -99.102264,19.4232414,0
                -99.0960038,19.4197101,0
                -99.0903497,19.4164114,0
                -99.0823781,19.412288,0
                -99.0722072,19.4153591,0
              </coordinates>
            </LineString>
          </Placemark>
          <Placemark>
            <name>Línea 2</name>
            <styleUrl>#line-4186F0-10300-nodesc</styleUrl>
            <LineString>
              <tessellate>1</tessellate>
              <coordinates>
                -99.214788,19.4634108,0
                -99.203158,19.4587829,0
                -99.1870825,19.4586984,0
                -99.182151,19.457488,0
                -99.1747749,19.4521567,0
                -99.1718835,19.4489852,0
                -99.1673774,19.4447058,0
                -99.1611063,19.441782,0
                -99.1555005,19.4397232,0
                -99.1471374,19.4373152,0
                -99.1419393,19.4361922,0
                -99.1369029,19.4356521,0
                -99.1329861,19.4332227,0
                -99.132911,19.4257912,0
                -99.1345682,19.416019,0
                -99.1357434,19.4084883,0
                -99.1368914,19.4008785,0
                -99.1378087,19.3952064,0
                -99.1390371,19.3874695,0
                -99.140260219574,19.3795146127671,0
                -99.1415638,19.369945,0
                -99.1429317,19.3619032,0
                -99.1449916,19.353284,0
                -99.142524,19.3441988,0
              </coordinates>
            </LineString>
          </Placemark>
          <Placemark>
            <name>Línea 3</name>
            <styleUrl>#line-CDDC39-10688-nodesc</styleUrl>
            <LineString>
              <tessellate>1</tessellate>
              <coordinates>
                -99.1739595,19.3244574,0
                -99.1766363,19.3359178,0
                -99.1810191,19.3468358,0
                -99.1760355,19.3537143,0
                -99.1704994,19.3614528,0
                -99.1649204,19.3707294,0
                -99.1591108,19.3798486,0
                -99.1574532,19.3855061,0
                -99.1562569,19.3956264,0
                -99.1538858,19.4135984,0
                -99.1505706,19.4195583,0
                -99.149074,19.42741,0
                -99.1478777,19.4332682,0
                -99.1471374,19.4373152,0
                -99.1453725,19.4451408,0
                -99.1427922,19.4551006,0
                -99.1369236,19.4702742,0
                -99.1321707,19.4769704,0
                -99.1265702,19.4837877,0
                -99.1209751134766,19.4906856228133,0
                -99.1194999,19.4953987,0
              </coordinates>
            </LineString>
          </Placemark>
          <Placemark>
            <name>Línea 4</name>
            <styleUrl>#line-93D7E8-10688-nodesc</styleUrl>
            <LineString>
              <tessellate>1</tessellate>
              <coordinates>
                -99.1070652,19.482574,0
                -99.1080093,19.4743304,0
                -99.1119307,19.4647057,0
                -99.1139048,19.4580545,0
                -99.1161579,19.4488638,0
                -99.1182554,19.4389745,0
                -99.1194355,19.4288468,0
                -99.1205406,19.4216528,0
                -99.1217637,19.4091258,0
                -99.1216993,19.4027355,0
              </coordinates>
            </LineString>
          </Placemark>
          <Placemark>
            <name>Línea 5</name>
            <styleUrl>#line-FFDD5E-10494-nodesc</styleUrl>
            <LineString>
              <tessellate>1</tessellate>
              <coordinates>
                -99.1492832,19.5008499,0
                -99.1449058,19.4896945,0
                -99.1407001,19.4790945,0
                -99.1369236,19.4702742,0
                -99.1307974,19.4634058,0
                -99.1193229,19.458798,0
                -99.1139048,19.4580545,0
                -99.105413,19.4514081,0
                -99.0963578,19.4511957,0
                -99.0871739,19.4457529,0
                -99.0876889,19.4338247,0
                -99.0874207,19.4240913,0
                -99.0722072,19.4153591,0
              </coordinates>
            </LineString>
          </Placemark>
          <Placemark>
            <name>Línea 6</name>
            <styleUrl>#line-DB4436-10494-nodesc</styleUrl>
            <LineString>
              <tessellate>1</tessellate>
              <coordinates>
                -99.2000628,19.5046121,0
                -99.195728302002,19.4947514274251,0
                -99.1864371,19.4910143,0
                -99.17382,19.4908171,0
                -99.1627693,19.488683,0
                -99.1555542,19.4903266,0
                -99.1449058,19.4896945,0
                -99.1346973,19.4877576,0
                -99.1265702,19.4837877,0
                -99.1179228,19.4815524,0
                -99.1070652,19.482574,0
              </coordinates>
            </LineString>
          </Placemark>
          <Placemark>
            <name>Línea 7</name>
            <styleUrl>#line-F8971B-10300-nodesc</styleUrl>
            <LineString>
              <tessellate>1</tessellate>
              <coordinates>
                -99.189586,19.3607037,0
                -99.1878051,19.3761645,0
                -99.1863245,19.3847724,0
                -99.1860509,19.3912798,0
                -99.187097,19.4031605,0
                -99.1912866,19.4119136,0
                -99.1919732,19.4255433,0
                -99.1910237,19.4335161,0
                -99.1914367675781,19.4468455104825,0
                -99.1870825,19.4586984,0
                -99.1905999,19.4700922,0
                -99.1905784606934,19.4806724417591,0
                -99.1948807000001,19.4905036,0
                -99.2000628,19.5046121,0
              </coordinates>
            </LineString>
          </Placemark>
          <Placemark>
            <name>Línea 8</name>
            <styleUrl>#line-009D57-10494-nodesc</styleUrl>
            <LineString>
              <tessellate>1</tessellate>
              <coordinates>
                -99.1392624,19.4427583,0
                -99.1419393,19.4361922,0
                -99.1414833068848,19.4306578806949,0
                -99.1422343,19.4267827,0
                -99.1433448,19.4216528,0
                -99.1441816,19.4133303,0
                -99.1357434,19.4084883,0
                -99.1262913,19.4065657,0
                -99.1216993,19.4027355,0
                -99.1135132,19.398551,0
                -99.1122043,19.3886637,0
                -99.1095865,19.3793223,0
                -99.1077197,19.3737557,0
                -99.1091895,19.3650309,0
                -99.1013199,19.3561791,0
                -99.0934932,19.3578999,0
                -99.085511,19.3560526,0
                -99.0747285,19.3507281,0
                -99.0638816,19.3459804,0
              </coordinates>
            </LineString>
          </Placemark>
          <Placemark>
            <name>Línea 9</name>
            <styleUrl>#line-795046-9719-nodesc</styleUrl>
            <LineString>
              <tessellate>1</tessellate>
              <coordinates>
                -99.187097,19.4031605,0
                -99.1788948,19.4062317,0
                -99.1684502,19.406171,0
                -99.1552055,19.4066618,0
                -99.1448736,19.407021,0
                -99.1357434,19.4084883,0
                -99.1217637,19.4091258,0
                -99.1128802,19.4085693,0
                -99.1030419,19.4085693,0
                -99.0912294,19.4084529,0
                -99.0824747,19.4072234,0
                -99.0722072,19.4153591,0
              </coordinates>
            </LineString>
          </Placemark>
          <Placemark>
            <name>Línea A</name>
            <styleUrl>#line-3F5BA9-9913-nodesc</styleUrl>
            <LineString>
              <tessellate>1</tessellate>
              <coordinates>
                -99.0722072,19.4153591,0
                -99.0698737,19.4047948,0
                -99.0593863,19.3987332,0
                -99.0463722,19.3912849,0
                -99.0356326,19.3851316,0
                -99.0170825,19.3733205,0
                -99.0056777,19.3647171,0
                -98.9952278137207,19.3613566081823,0
                -98.9768708,19.3590285,0
                -98.9609921,19.3506572,0
              </coordinates>
            </LineString>
          </Placemark>
          <Placemark>
            <name>Línea B</name>
            <styleUrl>#line-777777-10106-nodesc</styleUrl>
            <LineString>
              <tessellate>1</tessellate>
              <coordinates>
                -99.1453725,19.4451408,0
                -99.1392624,19.4427583,0
                -99.1313499,19.4433754,0
                -99.1233194,19.4425205,0
                -99.1182554,19.4389745,0
                -99.1148007,19.4302734,0
                -99.1036642,19.436607,0
                -99.0943193,19.4408057,0
                -99.0871739,19.4457529,0
                -99.079417,19.450963,0
                -99.0692568,19.4581051,0
                -99.0613174,19.4616861,0
                -99.0545368,19.4730559,0
                -99.0488827,19.4858612,0
                -99.0466619,19.4909688,0
                -99.041968,19.5017045,0
                -99.0359974,19.5153316,0
                -99.0333796,19.5213181,0
                -99.0301716,19.5284976,0
                -99.027347266674,19.5344532308002,0
              </coordinates>
            </LineString>
          </Placemark>
          <Placemark>
            <name>Línea 12</name>
            <styleUrl>#line-F4B400-10494-nodesc</styleUrl>
            <LineString>
              <tessellate>1</tessellate>
              <coordinates>
                -99.1878051,19.3761645,0
                -99.1789698600769,19.373684838504,0
                -99.171416759491,19.3720957839934,0
                -99.1649204,19.3707294,0
                -99.1557097434998,19.3701423390627,0
                -99.1500341892242,19.3693022493275,0
                -99.1429317,19.3619032,0
                -99.1215705871582,19.3574291928694,0
                -99.1013199,19.3561791,0
                -99.1075731,19.3382167,0
                -99.1051529,19.3276583,0
                -99.0977311134338,19.3224426830973,0
                -99.085865020752,19.3204785190829,0
                -99.0755867958069,19.3184940819814,0
                -99.0698146820068,19.3095233157067,0
                -99.0605020523071,19.3047441060938,0
                -99.0505456924438,19.3008760842049,0
                -99.0417265892029,19.2992559431495,0
                -99.0240240097046,19.2980205748147,0
                -99.0174150466919,19.2906891806738,0
              </coordinates>
            </LineString>
          </Placemark>
        </Folder>
        <Folder>
          <name>Estaciones de Metro</name>
          <Placemark>
            <name>Acatitla</name>
            <description>Línea A. Santa Martha Acatitla, Iztapalapa, Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0056777,19.3647171,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Aculco</name>
            <description>Línea 8. Jardínes de Churubusco, Iztapalapa, 09410 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1077197,19.3737557,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Agrícola Oriental</name>
            <description>Línea A. Pantitlan, Iztacalco, 08100 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0698737,19.4047948,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Allende</name>
            <description>Línea 2. República de Guatemala, Centro, Cuauhtémoc, 06010 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1369029,19.4356521,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Apatlaco</name>
            <description>Línea 8. Eje 3 Oriente (Francisco del Paso y Troncoso), Purísima Atlazolpa, Iztapalapa, 09429 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1095865,19.3793223,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Aquiles Serdán</name>
            <description>Línea 7. Tezozomoc, Azcapotzalco, 02700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1948807,19.4905036,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Aragón</name>
            <description>Línea 5. Simon Bolívar, 15410 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0963578,19.4511957,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Atlalilco</name>
            <description>Línea 8. Ampliación Ricardo Flores Magón, Iztapalapa, 09000 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1013199,19.3561791,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Auditorio</name>
            <description>Línea 7. Bosque de Chapultepec I, Miguel Hidalgo, 11100 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1919732,19.4255433,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Autobuses del Norte</name>
            <description>Línea 5. Eje Central (Lázaro Cárdenas), Panamericana, Gustavo A. Madero, 07770 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1407001,19.4790945,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Azcapotzalco</name>
            <description>Línea 6. Eje 4 Norte (Refinería Azcapotzalco), Reynosa Tamaulipas, Azcapotzalco, 02700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1864371,19.4910143,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Balbuena</name>
            <description>Línea 1. Jardín Balbuena, 15900 Ciudad de México, DF, México.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.102264,19.4232414,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Balderas</name>
            <description>Línea 1, 3. Calle de Balderas, Centro, Cuauhtémoc, 06000 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.149074,19.42741,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Barranca del Muerto</name>
            <description>Línea 7 (Estación Terminal). Merced Gómez, Álvaro Obregón, 01010 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.189586,19.3607037,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Bellas Artes</name>
            <description>Línea 2, 8. Angela Peralta, Centro, Cuauhtémoc, Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1419393,19.4361922,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Bondojito</name>
            <description>Línea 4. Tablas de San Aguistin, Gustavo A. Madero, 07860 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1119307,19.4647057,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Bosque de Aragón</name>
            <description>Línea B. San Juan de Aragón 4a Sección, Gustavo A. Madero, 07979 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0692568,19.4581051,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Boulevard Puerto Aéreo</name>
            <description>Línea 1. Calz Ignacio Zaragoza, Industrial Puerto Aéreo, 15710 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0960038,19.4197101,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Calle 11</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.085865020752,19.3204785190829,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Camarones</name>
            <description>Línea 7. San Miguel Amantla, Azcapotzalco, 02700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.19016,19.479226,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Canal de San Juan</name>
            <description>Línea A. Pantitlan, Iztacalco, 08100 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0593863,19.3987332,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Canal del Norte</name>
            <description>Línea 4. Michoacana, 15240 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1161579,19.4488638,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Candelaria</name>
            <description>Línea 1, 4. El Parque, 15960 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1194355,19.4288468,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Centro Médico</name>
            <description>Línea 3, 9. Avenida Cuauhtémoc 330, Doctores, Cuauhtémoc, 06720 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1552055,19.4066618,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Cerro de la Estrella</name>
            <description>Línea 8. San Miguel, Iztapalapa, 09360 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.085511,19.3560526,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Chabacano</name>
            <description>Línea 2, 8 y 9. Vista Alegre, Cuauhtémoc, 06860 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1357434,19.4084883,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Chapultepec</name>
            <description>Línea 1. Av Chapultepec, Condesa, Cuauhtémoc, 06700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1762608,19.420813,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Chilpancingo</name>
            <description>Línea 9. Hipódromo, Cuauhtémoc, 06100 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1684502,19.406171,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Ciudad Azteca</name>
            <description>Línea B. San Agustín 3ra Sección, 55120 MEX, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.027347266674,19.5344532308002,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Ciudad Deportiva</name>
            <description>Línea 9. Granjas México, Iztacalco, 08400 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0912294,19.4084529,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Colegio Militar</name>
            <description>Línea 2. Felipe Carrillo Puerto, Popotla, Miguel Hidalgo, 11400 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1718835,19.4489852,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Constitución de 1917</name>
            <description>Línea 8 (Estación Terminal). Los Angeles, Iztapalapa, 09830 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0638816,19.3459804,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Constituyentes</name>
            <description>Línea 7. Daniel Garza, Miguel Hidalgo, 11850 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1912866,19.4119136,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Consulado</name>
            <description>Línea 4, 5. Mártires de Río Blanco, Gustavo A. Madero, 07880 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1139048,19.4580545,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Copilco</name>
            <description>Línea 3. Eje 10 Sur (Copilco), Copilco Universidad, Coyoacán, 04360 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1766363,19.3359178,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Coyoacán</name>
            <description>Línea 3. Xoco, Benito Juárez, 03330 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1704994,19.3614528,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Coyuya</name>
            <description>Línea 8. Eje 3 Oriente (Francisco del Paso y Troncoso), Los Reyes, Iztacalco, 08320 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1135132,19.398551,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Cuatro Caminos</name>
            <description>Línea 2 (Estación Terminal). Ahuizotla, Alce Blanco, 53370 Ciudad de México, MEX, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.214788,19.4634108,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Cuauhtémoc</name>
            <description>Línea 1. Av Chapultepec, Juárez, Cuauhtémoc, 06600 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.154653,19.425867,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Cuitláhuac</name>
            <description>Línea 2. México-Tacuba, Popotla, Miguel Hidalgo, 11400 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.182151,19.457488,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Culhuacán</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca. Iztapalapa, 09800 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1075731,19.3382167,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Deportivo 18 de Marzo</name>
            <description>Línea 3, 6. Tepeyac Insurgentes, Gustavo A. Madero, 07020 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1265702,19.4837877,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Deportivo Oceanía</name>
            <description>Línea B. Av 608 S/N, San Juan de Aragón 4a Sección, Gustavo A. Madero, 07969 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.079417,19.450963,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>División del Norte</name>
            <description>Línea 3. Narvarte, Benito Juárez, Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1591108,19.3798486,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Doctores</name>
            <description>Línea 8. Obrera, Cuauhtémoc, 06720 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1433448,19.4216528,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Eduardo Molina</name>
            <description>Línea 5. Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.105413,19.4514081,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Eje Central</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1500341892242,19.3693022493275,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>El Rosario</name>
            <description>Línea 6 y 7 (Estación Terminal). Cultura Norte, El Rosario, Azcapotzalco, 02700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.2000628,19.5046121,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Ermita</name>
            <description>Línea 2.  Calz de Tlalpan, Portales, Benito Juárez, Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1429317,19.3619032,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Escuadrón 201</name>
            <description>Línea 8. Granjas San Antonio, Iztapalapa, 09070 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1091895,19.3650309,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Etiopía | Plaza de la Transparencia</name>
            <description>Línea 3. Eje 4 Sur (Xola), Narvarte, Benito Juárez, 03020 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1562569,19.3956264,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Eugenia</name>
            <description>Línea 3. Eje 1 Poniente (Av. Cuauhtémoc), Narvarte, Benito Juárez, 03020 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1574532,19.3855061,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Ferrería</name>
            <description>Línea 6. Eje 4 Norte (Calz. Azcapotzalco La Villa), Santa Catarina, Azcapotzalco, 02700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.17382,19.4908171,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Fray Servando</name>
            <description>Línea 4. El Parque, 15960 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1205406,19.4216528,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Garibaldi</name>
            <description>Línea 8 (Estación Terminal) y Línea B. Eje Central Lázaro Cárdenas, Centro, Cuauhtémoc, 06000 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1392624,19.4427583,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>General Anaya</name>
            <description>Línea 2. San Diego Churubusco, Coyoacán, 04120 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1449916,19.353284,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Gómez Farías</name>
            <description>Línea 1. Federal, 15700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0903497,19.4164114,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Guelatao</name>
            <description>Línea A. Ejército de Oriente Indeco II ISSSTE, Iztapalapa, 09230 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0356326,19.3851316,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Guerrero</name>
            <description>Línea 3, B. Zarco, Guerrero, Cuauhtémoc, 06300 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1453725,19.4451408,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Hangares</name>
            <description>Línea 5. Aeropuerto Int. de La Ciudad de México, 15620 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0874207,19.4240913,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Hidalgo</name>
            <description>Línea 2, 3. Tabacalera, Cuauhtémoc, 06030 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1471374,19.4373152,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Hospital 20 de Noviembre</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.171416759491,19.3720957839934,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Hospital General</name>
            <description>Línea 3. Doctores, Cuauhtémoc, 06720 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1538858,19.4135984,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Impulsora</name>
            <description>Línea B. De Las Zapatas (Hda. Presillas), Impulsora Popular Avícola, 57100 Ciudad Nezahualcóyotl, MEX, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0488827,19.4858612,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Indios Verdes</name>
            <description>Línea 3 (Estación Terminal).  Residencial Zacatenco, Gustavo A. Madero, 07369 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1194999,19.4953987,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Instituto del Petróleo</name>
            <description>Línea 5 y 6. Nueva Vallejo, Gustavo A. Madero, 07750 Ciudad de México, MEX, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1449058,19.4896945,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Insurgentes</name>
            <description>Línea 1. Av Chapultepec, Juárez, Cuauhtémoc, 06600 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1627908,19.4236259,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Insurgentes Sur</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1789698600769,19.373684838504,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Isabel la Católica</name>
            <description>Línea 1.  Centro, Cuauhtémoc, 06000 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1374546,19.4265399,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Iztacalco</name>
            <description>Línea 8. Picos Iztacalco 1B y 2a, Iztacalco, 08770 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1122043,19.3886637,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Iztapalapa</name>
            <description>Línea 8. San Lucas, Iztapalapa, 09000 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0934932,19.3578999,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Jamaica</name>
            <description>Línea 4 y 9. Magdalena Mixhuca, 15860 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1217637,19.4091258,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Juanacatlán</name>
            <description>Línea 1. Pedro Antonio de Los Santos, San Miguel Chapultepec, Miguel Hidalgo, 11850 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1821724,19.4129053,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Juárez</name>
            <description>Línea 3. Centro, Cuauhtémoc, 06000 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1478777,19.4332682,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Lagunilla</name>
            <description>Línea B. Barrio de Tepito, Cuauhtémoc, 06200 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1313499,19.4433754,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>La Paz</name>
            <description>Línea A. Los Reyes, 56400 Los Reyes, MEX, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -98.9609921,19.3506572,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>La Raza</name>
            <description>Línea 3, 5. Vallejo, Gustavo A. Madero, 07870 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1369236,19.4702742,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>La Viga</name>
            <description>Línea 8. Asturias, Cuauhtémoc, 06850 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1262913,19.4065657,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>La Villa | Basílica de Guadalupe</name>
            <description>Línea 6. Aragón La Villa (Aragón), Gustavo A. Madero, 07000 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1179228,19.4815524,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Lázaro Cárdenas</name>
            <description>Línea 9. Buenos Aires, Cuauhtémoc, 06780 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1448736,19.407021,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Lindavista</name>
            <description>Línea 6. Gustavo A. Madero, 07300 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1346973,19.4877576,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Lomas Estrella</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0977311134338,19.3224426830973,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Los Reyes</name>
            <description>Línea A. 56400 Los Reyes, MEX, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -98.9768708,19.3590285,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Martin Carrera</name>
            <description>Línea 4, 6 (Estación Terminal).  Eje 1 Oriente F.C. Hidalgo, Villa Gustavo a Madero, Gustavo A. Madero, 07050 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1070652,19.482574,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Misterios</name>
            <description>Línea 5. Vallejo, Gustavo A. Madero, 07870 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1307974,19.4634058,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Morelos</name>
            <description>Línea 4, B. 15270 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1182554,19.4389745,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Niños Heroes</name>
            <description>Línea 3. Doctores, Cuauhtémoc, 06720 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1505706,19.4195583,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Nopalera</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0505456924438,19.3008760842049,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Obrera</name>
            <description>Línea 8. Doctores, Cuauhtémoc, 06720 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1441816,19.4133303,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Observatorio</name>
            <description>Línea 1 (Estación Terminal).  Central Camionera Poniente, Álvaro Obregón, 01120 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.2005488,19.3982501,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Olímpica</name>
            <description>Línea B. Fuentes de Aragón/valle de Anáhuac, 55210 MEX, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0333796,19.5213181,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Panteones</name>
            <description>Línea 2. Refinería 18 de Marzo, Miguel Hidalgo, 11219 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.203158,19.4587829,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Pantitlán</name>
            <description>Línea 1, 5, 9 y A (Estación Terminal). Pantitlan, Iztacalco, 08100 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0722072,19.4153591,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Parque de los Venados</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1557097434998,19.3701423390627,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Patriotismo</name>
            <description>Línea 9. Hipódromo, Cuauhtémoc, 06100 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1788948,19.4062317,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Peñón Viejo</name>
            <description>Línea A. Zona Urbana Ejidal Santa Martha Acatitla Sur, Iztapalapa, 09530 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0170825,19.3733205,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Periférico Oriente</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0755867958069,19.3184940819814,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Pino Suárez</name>
            <description>Línea 1, 2. José María Pino Suárez, Centro, Cuauhtémoc, 06000 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.132911,19.4257912,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Polanco</name>
            <description>Línea 7. Av Horacio, Polanco, Miguel Hidalgo, 11550 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1910237,19.4335161,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Puebla</name>
            <description>Línea 9. Granjas México, Iztacalco, 08400 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0824747,19.4072234,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Merced</name>
            <description>Línea 1. Centro, 15100 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1246551,19.4254927,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Mexicaltzingo</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1215705871582,19.3574291928694,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Miguel Ángel de Quevedo (Av. Universidad)</name>
            <description>Línea 3. Av Universidad, Oxtopulco Universidad, Coyoacán, 04360 Coyacán, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1810191,19.3468358,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Mixcoac</name>
            <description>Línea 7. Benito Juárez, 03910 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1878051,19.3761645,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Mixiuhca</name>
            <description>Línea 9. Jardín Balbuena, 15900 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1128802,19.4085693,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Moctezuma</name>
            <description>Línea 1. Moctezuma 1a Sección, Ciudad de México, DF, México.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1102624,19.4272178,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Muzquiz</name>
            <description>Línea B. Valle de Aragón 3ra Sección, 55280 MEX, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.041968,19.5017045,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Nativitas</name>
            <description>Línea 2. Sobre la Calzada de Tlalpan entre el Eje 5 y el Eje 6 Sur.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.140260219574,19.3795146127671,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Nezahualcóyotl</name>
            <description>Línea B. Joyas de Aragón, 57170 Ciudad Nezahualcóyotl, MEX, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0545368,19.4730559,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Normal</name>
            <description>Línea 2. Un Hogar Para Nosotros, Miguel Hidalgo, 11330 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1673774,19.4447058,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Norte 45</name>
            <description>Línea 6. San Miguel Amantla, Azcapotzalco, 02700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1627693,19.488683,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Oceanía</name>
            <description>Línea 5 y B. Pensador Mexicano, 15510 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0871739,19.4457529,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Olivos</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0605020523071,19.3047441060938,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Plaza Aragón</name>
            <description>Línea B. Ciudad y Puerto, 55130 MEX, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0301716,19.5284976,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Politécnico</name>
            <description>Línea 5. Nueva Industrial Vallejo, Gustavo A. Madero, 07700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1492832,19.5008499,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Popotla</name>
            <description>Línea 2. México-Tacuba, Popotla, Miguel Hidalgo, 11400 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1747749,19.4521567,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Portales</name>
            <description>Línea 2. Benito Juárez, 03300 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1415638,19.369945,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Potrero</name>
            <description>Línea 3. Insurgentes Norte, Guadalupe Insurgentes, Gustavo A. Madero, 07870 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1321707,19.4769704,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Refinería</name>
            <description>Línea 7. Ff. Cc. Nacionales de México, San Miguel Amantla, Azcapotzalco, 11219 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1905999,19.4700922,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Revolución</name>
            <description>Línea 2. Buenavista, Cuauhtémoc, 06350 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1555005,19.4397232,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Ricardo Flores Magón</name>
            <description>Línea B. Revolución, 15460 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1036642,19.436607,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Río de los Remedios</name>
            <description>Línea B. Valle de Aragón 2da Sección, 57100 Ciudad Nezahualcóyotl, MEX, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0466619,19.4909688,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Romero Rubio</name>
            <description>Línea B. 15400 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0943193,19.4408057,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Salto del Agua</name>
            <description>Línea 1, 8. Av Arcos de Belén, Centro, Cuauhtémoc, 06720 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1422343,19.4267827,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>San Andrés Tomatlán</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca. Iztapalapa, Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1051529,19.3276583,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>San Antonio</name>
            <description>Línea 7. Santa María Nonoalco, Benito Juárez, 03700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1863245,19.3847724,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>San Antonio Abad</name>
            <description>Línea 2. Tránsito, Cuauhtémoc, 06820 Ciudad de México, DF, México.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1345682,19.416019,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>San Cosme</name>
            <description>Línea 2. Ribera de San Cosme, Santa María La Ribera, Cuauhtémoc, 06470 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1611063,19.441782,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>San Joaquín</name>
            <description>Línea 7. Cuauhtémoc Pensil, Miguel Hidalgo, 11490 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1918445,19.4458136,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>San Juan de Letrán</name>
            <description>Línea 8. Centro, Cuauhtémoc, 06000 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.141494,19.4312447,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>San Lázaro</name>
            <description>Línea 1, B. 7 de Julio, 15390 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1148007,19.4302734,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>San Pedro de los Pinos</name>
            <description>Línea 7. San Pedro de Los Pinos, Benito Juárez, 03800 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1860509,19.3912798,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Santa Anita</name>
            <description>Línea 4 (Estación Terminal) y Línea 8. Iztacalco, 08300 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1216993,19.4027355,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Santa María</name>
            <description>Línea A.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -98.9952278137207,19.3613566081823,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Sevilla</name>
            <description>Línea 1. Roma Norte, Cuauhtémoc, 06700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1706067,19.421926,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Tacubaya</name>
            <description>Línea 1, 7, 9. Miguel Hidalgo, 11870 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.187097,19.4031605,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Tacuba</name>
            <description>Línea 2, 7. México-tacuba, Tacuba, Miguel Hidalgo, 11410 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1870825,19.4586984,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Tasqueña</name>
            <description><![CDATA[Línea 2 (Estación Terminal). Talleres de mantenimiento del metro "Taxqueña", Campestre Churubusco, Coyoacán, 04200 Ciudad de México, DF, México.]]></description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.142524,19.3441988,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Tlatelolco</name>
            <description>Línea 3. Zoltan Kodaly, Tlatelolco, Cuauhtémoc, 06900 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1427922,19.4551006,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Talismán</name>
            <description>Línea 4. Granjas Modernas, Gustavo A. Madero, 07460 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1080093,19.4743304,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Tecnológico</name>
            <description>Línea B. Sor Juana Inés de La Cruz, Fuentes de Aragón/valle de Anáhuac, 55210 MEX, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0359974,19.5153316,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Tepalcates</name>
            <description>Línea A. Ejército Constitucionalista I II y ÌII, Iztapalapa, 09220 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0463722,19.3912849,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Tepito</name>
            <description>Línea B. Centro, Cuauhtémoc, 06000 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1233194,19.4425205,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Terminal Aérea</name>
            <description>Línea 5. Aeropuerto Int. de La Ciudad de México, 15620 Ciudad de México, DF, México.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0876889,19.4338247,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Tezonco</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0698146820068,19.3095233157067,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Tezozomoc</name>
            <description>Línea 6. San Miguel Amantla, Azcapotzalco, 02700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1962701,19.495065,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Tlaltenco</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0240240097046,19.2980205748147,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Tláhuac</name>
            <description>Línea 12 (Estación Terminal). Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0174150466919,19.2906891806738,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>UAM-I</name>
            <description>Línea 8. Los Angeles, Iztapalapa, 09830 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0747285,19.3507281,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Universidad</name>
            <description>Línea 3 (Estación Terminal). Av Antonio Delfin Madrigal, Coyoacán, Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1739595,19.3244574,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Valle Gómez</name>
            <description>Línea 5. 7 de Noviembre, 07840 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1193229,19.458798,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Vallejo</name>
            <description>Línea 6. Eje 4 Norte (Calz. Azcapotzalco La Villa), San Andrés de Las Salinas, Azcapotzalco, 02700 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1555542,19.4903266,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Velódromo</name>
            <description>Línea 9. Jardín Balbuena, 15900 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1030419,19.4085693,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Viaducto</name>
            <description>Línea 2. Calz de Tlalpan, Alamos, Benito Juárez, 03400 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1368914,19.4008785,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Villa de Aragón</name>
            <description>Línea B. Av 608, San Juan de Aragón 4a Sección, Gustavo A. Madero, 07979 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0613174,19.4616861,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Villa de Cortés</name>
            <description>Línea 2. Calz de Tlalpan, Josefa Ortiz de Domínguez, Benito Juárez, 03430 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1390371,19.3874695,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Viveros</name>
            <description>Línea 3. Axotla, Álvaro Obregón, 01030 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1760355,19.3537143,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Xola</name>
            <description>Línea 2. Alamos, Benito Juárez, 03400 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1378087,19.3952064,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Zapata</name>
            <description>Línea 3. Sta Cruz Atoyac, Benito Juárez, 03100 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1649204,19.3707294,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Zapotitlán</name>
            <description>Línea 12. Nota: la localización de la estación es aproximada a esta marca.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0417265892029,19.2992559431495,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Zaragoza</name>
            <description>Línea 1. Calz Ignacio Zaragoza, Puebla, 15730 Ciudad de México, DF, México.</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.0823781,19.412288,0
              </coordinates>
            </Point>
          </Placemark>
          <Placemark>
            <name>Zócalo</name>
            <description>Línea 2. Centro, Cuauhtémoc, 06000 Ciudad de México, DF, México</description>
            <styleUrl>#icon-1445</styleUrl>
            <Point>
              <coordinates>
                -99.1329861,19.4332227,0
              </coordinates>
            </Point>
          </Placemark>
        </Folder>
        <Folder>
          <name>Otros Transportes</name>
        </Folder>
      </Document>
    </kml>
    """
  end
end
