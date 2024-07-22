# PenduloInvertido
Repositorio con el simulador de un péndulo invertido 

El simulador emplea las ecuaciones no lineales encontradas empleando el metodo de lagrange, usando como coordenadas generalizadas $\theta$ y $y$

![Imagen del Pendulo](PenduloInvertido.png "This is a sample image.")

# Las ecuaciónes del Modelo son 

$ \dot{y}  = v_y \\
  \dot{\theta}  = \omega \\
  \dot{v}_y  =  \frac{f_u+f_d-ky+m_2lsin(\theta)\omega^2}{m(\theta)}-\frac{m_2l^2\left(gm_2sin(\theta)cos(\theta)+2f_dcos^2(\theta)\right)}{J_bm(\theta)} \\
   \dot{\omega}  =\frac{m_1+m_1}{J_bm(\theta)}\left(2f_dl cos(\theta)+gm_2l sin(\theta) \right) - \frac{m_2 cos(\theta)}{J_bm(\theta)} \left( m_2l sin(\theta)\omega^2l+f_dl+f_ul-kyl \right)$


# Instrucciones 

1. Abra el Archivo PenduloInvertido.m y ejecútelo, de esta forma podrá ver los resultados 
2. Si desea ver las animaciones debe abrir el archivo de PenduloSK y buscar dentro del bloque 3D Animation y hacer click en VR Sink Block 

# Creditos y Reconocimientos

Este simulador usa el ambiente virtual del siguiente repositorio, [jitendra825](https://github.com/jitendra825/Inverted-Pendulum-Simulink), para animar el movimiento del péndulo. 

