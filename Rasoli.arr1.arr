use context essentials2021

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
