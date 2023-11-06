use context essentials2021

#oppgave A og B

include shared-gdrive(
  "dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
Energiforbrukstabellen =load-table: komponent, energi
  source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
  sanitize energi using string-sanitizer
end

Energiforbrukstabellen

fun energi-to-number(s :: String) ->
  Number:
  cases(Option) string-to-number(s):
    | some(a) => a
    | none=> 0
  end
where:
  energi-to-number("") is 0
  energi-to-number("30") is 30
  energi-to-number("37") is 37
  energi-to-number("5") is 5
  energi-to-number("4") is 4
  energi-to-number("15") is 15
  energi-to-number("48") is 48
  energi-to-number("12") is 12
  energi-to-number("4") is 4
end


#oppgave C

Energiforbrukstabellen
version-new = transform-column(Energiforbrukstabellen, "energi", energi-to-number)

version-new
fun sum-on-energi():
  t = transform-column(Energiforbrukstabellen, "energi", energi-to-number)

  sum(t, "energi")

end


#oppgave D

distance-travelled-per-day = 20
distance-per-unit-of-fuel = 1
energy-per-unit-of-fuel = 0.25

energy-per-day = ( distance-travelled-per-day / 
                            distance-per-unit-of-fuel ) * 
                                        energy-per-unit-of-fuel

energy-per-day

fun add-bil(value :: Number) -> Number:
if value == 0: energy-per-day else: value 
end 
end

t2 = transform-column(version-new, "energi", add-bil)
t2


#oppgave E

denbestecharten = table: komponent :: String, energi :: Number 
  
  
  row: "bil", 5
  row: "fly", 30
  row: "ovnk", 37
  row: "lys", 5
  row: "dingser", 4
  row: "mlk", 15
  row: "varer", 48
  row: "varertransport", 12
  row: "offtjen", 4
    
    
end 
#her definerer jeg, slik at jeg kan kjøre den inn påpyret 
bar-chart(denbestecharten, "komponent", "energi")



#Oppgave individuell 1 (lage nordiske flagger)

fun nordisk-flagg(land) :
  if (land == "Norge"):
frame(
  overlay-xy(rectangle(16, 120, "solid", "dark-blue"),
  -52, 0,
  overlay-xy(rectangle(170, 16, "solid", "dark-blue"),
    -0, -52,
    overlay-xy(rectangle(30, 120, "solid", "white"),
      -45, 0,
        overlay(rectangle(170, 30, "solid", "white"),
              (rectangle(170, 120, "solid", "fire-brick")))))))

  else if (land == "Sverige"):
frame(
overlay-xy(rectangle(16, 120, "solid", "gold"),
  -52, 0,
  overlay-xy(rectangle(170, 16, "solid", "gold"),
    -0, -52,
      (rectangle(170, 120, "solid", "steel-blue")))))

  else if (land == "Island"):
frame(
overlay-xy(rectangle(16, 120, "solid", "fire-brick"),
  -52, 0,
  overlay-xy(rectangle(170, 16, "solid", "fire-brick"),
    -0, -52,
    overlay-xy(rectangle(30, 120, "solid", "white"),
      -45, 0,
      overlay(rectangle(170, 30, "solid", "white"),
          (rectangle(170, 120, "solid", "navy")))))))
    
  else if (land == "Danmark"):
    frame(
      overlay-xy(rectangle(160, 1200, "solid", "white"),
        -520, 0,
        overlay-xy(rectangle(1700, 160, "solid", "white"),
          -0, -520,
          (rectangle(1700, 1200, "solid", "fire-brick")))))
   
  
  else if (land == "Faeroyene"):
    frame(
overlay-xy(rectangle(16, 120, "solid", "crimson"),
  -52, 0,
  overlay-xy(rectangle(170, 16, "solid", "crimson"),
    -0, -52,
    overlay-xy(rectangle(30, 120, "solid", "navy"),
      -45, 0,
      overlay(rectangle(170, 30, "solid", "navy"),
          (rectangle(170, 120, "solid", "white")))))))

    
  else if (land == "Finland"):
    frame(
    overlay-xy(rectangle(30, 120, "solid", "navy"),
      -45, 0,
      overlay(rectangle(170, 30, "solid", "navy"),
      (rectangle(170, 120, "solid", "white")))))
    
  end
end

