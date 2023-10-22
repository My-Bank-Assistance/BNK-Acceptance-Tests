Feature: HU01:  Como usuario de la aplicación BNK, quiero tener la opción de realizar consultas relacionadas con los movimientos que realice, para mantener un registro detallado de mis finanzas y tener un seguimiento de cualquier problema o duda que surja.

    Scenario: E01: Registro de consultas de movimientos.
        Given que soy un usuario de la aplicación BNK
        When realice una consulta en el boton "movimientos"
        And el sistema me genere un  listado de todos mis movientos 
        And cuando haga click al boton "Ver todos"
        Then Entonces el sistema me muestra un listado de mis movientos, mostrando la fecha, el asunto, el estado actual, lugar y tipo de movimiento.

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |      opcion_Movimientos   |
            |      "MENU"         | "HOME" - !Bienvenido |  "Ver todos mis movientos"|
        Examples: Datos de Salida
            |                                 Lista de los Movientos                                                   |
            |  "Se muestra todos los movientos del usuario como la "fecha, asunto, estado, lugar y tipo" del moviento "|

Feature: HU02:  Como usuario de la aplicación BNK, quiero recibir actualizaciones sobre el estado de mis movimientos, para estar al tanto del progreso y recibir respuestas oportunas para cualquier problema o duda que se haya planteado.

    Scenario: E01: Actualización de estado de consulta.
        Given que soy un usuario de la aplicación BNK
        When realice una consulta de mis movimientos 
        And haya actualizaciones en el estado de mi cuenta
        And el sistema me genere un  listado de todos mis movientos 
        And aparesca un  mensaje de " !Ultimo movimiento realizado" y "Justo Ahora"
        Then Entonces el sistema actualiza y muestra un nuevo listado de movientos con el ultimo movimiento realizado, mostrando la fecha, el asunto, el estado actual, lugar y tipo de movimiento.

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |      opcion_Movimientos   | Ultimo Movimiento realizado  |
            |      "MENU"         | "HOME" - !Bienvenido |  "Ver todos mis movientos"| " Panaderia"  - "Justo Ahora"|
        Examples: Datos de Salida
            |                            Lista de los Movientos Actualizada                                                        |
            |  "Se muestra todos los movientos del usuario actualizados con la "fecha, asunto, estado, lugar y tipo" del moviento "|

Feature: HU03:  Como usuario de la aplicación BNK, quiero tener la opción de poder recibir asesoría y lecciones para el entendimiento de las finanzas, para mantenerme al tanto del mundo financiero.
    Scenario: E01: Aprendizaje autónomo como servicio de BNK.
        Given que soy un usuario de la aplicación BNK
        When el usuario se encuentre en la pagina principal 
        And haga click en el boton de "Aprender"
        And seleccione alguna de las "lecciones brindadas por la IA"
        And haga clcik en "Educacion Finaciera"  y en "Solicitar asesoria"
        Then el sistema muestra la solicitud de servicio se debe mostrar en un registro detallado que incluya la fecha, la descripción 
        And el modelo de aprendizaje, duración de la asesoría y cantidad de lecciones/asesorías que brinda


        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |      opcion_APRENDER   | Educacion Financiera  |
            |      "MENU"         | "HOME" - !Bienvenido |  " Lecciones o Cursos" | " Solicitud de Aesoria"|
        Examples: Datos de Salida
            |                            Resumen de Solicitud                                                                          |
            |  "fecha, la descripción el modelo de aprendizaje, duración de la asesoría y cantidad de lecciones/asesorías que brindao "|

Feature: HU04:  Como usuario de la aplicación BNK, quiero tener la capacidad de acceder al historial completo de mis consultas y movimientos, para revisar todas las interacciones anteriores, incluyendo los movimientos enviados y recibidos
    Scenario: E01: Acceso al historial de consultas y movimientos
        Given que soy un usuario de la aplicación BNK
        When acceda al historial de consultas 
        And movimientos con sus respectivos montos
        Then podré revisar todas las interacciones anteriores, incluyendo los movimientos enviados y recibidos


        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |      opcion_APRENDER         | 
            |      "MENU"         | "HOME" - !Bienvenido |  " Historial de Movimientos" | 
        Examples: Datos de Salida
            |        Resumen de Movimientos       |
            |  "Movimientos enviados y recibidos "|

Feature: HU05: Como usuario de la aplicación BNK, quiero tener la opción de acceder a una configuración más detallada, para poder tener una experiencia más personalizada
    Scenario: E01: Personalización de la inteligencia artificial
        Given que soy un usuario de la aplicación BNK
        When acceda a la opción de personalización de la inteligencia artificial 
        And haga click a "Personalizar"
        Then podré personalizar todas las interacciones 
        And la forma en la que contesta, cantidad de información que brinda, modulación de voz y filtrado de palabras

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   | opcion_Buscador  | 
            |      "MENU"         | "HOME" - !Bienvenido |  " Personalizar" | 
        Examples: Datos de Salida
            |    Interfaz_personalizada  |
            |   "Modulacion de Voz "     |

Feature: HU06: Como usuario de la aplicación BNK, quiero recibir notificaciones para estar informado sobre el progreso de mis movimientos y cualquier tipo de asesoría/lección y novedades en el mundo financiero, al igual que mantenerme al tanto de mis transacciones, mis clases y recibir más información sobre el área de finanzas
    Scenario: E01: Personalización de notificaciones
        Given que soy un usuario de la aplicación BNK
        And se encuentra en el buscador
        When acceda a la opción de "personalización de notificaciones" 
        And haga click a "Personalizar"
        Then podré personalizar todas las notificaciones y así realizar un filtrado de la información que deseo recibir, incluyendo la forma en la que recibo la notificación

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |            opcion_Buscador          | 
            |      "MENU"         | "HOME" - !Bienvenido | "personalización de notificaciones" | 
        Examples: Datos de Salida
            |    Notificaciones_personalizadas    |
            |   "Eliminar mensajes cada 3 meses " |

Feature: HU07: Como usuario de la aplicación BNK, quiero tener la opción de marcar mis movimientos, asesorías/lecciones e información leída como resultas o completadas una vez que se hayan abordado satisfactoriamente, para mantener un seguimiento ordenado de las tareas pendientes y las tareas realizadas
    Scenario: E01: Marcar tareas como resueltas
        Given que soy un usuario de la aplicación BNK
        And se encuentra en el buscador
        When tenga movimientos, asesorías/lecciones e información que hayan sido resueltos satisfactoriamente  
        Then podré marcarlas como resueltas o completas en la aplicación
        And el sistema me mostrara iconos de (check) y (x)

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |           opcion_Buscador            | 
            |      "MENU"         | "HOME" - !Bienvenido | "Movimientos" - "asesorías/lecciones"| 
        Examples: Datos de Salida
            |           Tarea Resueltas           |
            |  Marcar -> "Movimientos" -> (check) |


Feature: HU08:  Como usuario de la aplicación BNK, quiero recibir notificaciones sobre los pagos que realizó cada mes y los préstamos que he accedido para estar al tanto de los movimientos de mi dinero y prevenir deudas. 
    Scenario: E01: Recibir notificaciones sobre deudas por vencer y préstamos bancarios. 
        Given el usuario quiere estar actualizado  sus deudas y préstamos bancarios. 
        When el usuario haga click al botón "Mi historial de mis movimientos bancarias"
        And seleccioné un ítem entre "deudas por vencer" o "préstamos activos."
        Then la aplicación le muestra el historial de sus deudas por vencer y préstamos bancarios activos con respecto a la opción seleccionada anteriormente. 
        And se le muestra un mensaje al usuario donde se le brinda el historial de sus deudas pendientes y préstamos bancarios activos, para que pueda ver los movimientos de su dinero. 

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |      opcion_Movimientos   |               opcion1_Deudas por Vencer                   |                               opcion2_Prestamos Activos                        |
            |      "MENU"         | "HOME" - !Bienvenido |  "Ver todos mis movientos"| " Prestamo de s/.50"  - "Fecha  de vencimiento 23-07-2023"|  "Transferencia de dinero de s/.500" - "Moviento entrante y fecha 20 -08-2023" |
        Examples: Datos de Salida
            |                            Lista de los Movientos de Deudas y Prestamos                                                           |
            |  "Se muestra todos los movientos del las deudas y Prestamos con la "fecha de entrega y venciminto , asunto, estado, lugar y tipo" | 

    Scenario: E02: Restablecer la lista de las deudas pendientes y préstamos bancarios cada mes.   
        Given  el usuario se encuentra en el "menú principal" de la aplicación. 
        When el usuario haga click al botón "Mi historial de mis movimientos bancarias"
        And dé clic al botón "Restablecer mi historial de mis movimientos bancarias" 
        Then  la aplicación elimina las deudas pagadas y préstamos recibidos durante todo un mes 
        And le sistema le muestra un mensaje de copia de las deudas que a pagada y los prestamo que a recibido con su respectiva fecha 
       

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |      opcion_Movimientos   |   Restablecer mi historial    |   
            |      "MENU"         | "HOME" - !Bienvenido |  "Ver todos mis movientos"|  ---------------------------- |
        Examples: Datos de Salida
            |                            Lista de los Movientos Restablecida                                                       |
            |  "Se muestra una copia con todos los movientos pagados y recibidos con su respectivida fecha, asunto, estado y tipo "|

Feature: HU09:  Como  micro emprendedor, quiero  recibir capacitación financiera, digitalización y liderazgo para tener una mejor gestión empresarial y tomar las  decisiones que brinden mayores beneficios a mi negocio.
    Scenario: E01: Recibir capacitaciones financieras 
        Given  el micro-emprendedor está buscando cursos de capacitación financiera 
        And se encuentra en la opción de "Aprender" 
        When el usuario seleccione cursos extras en la opción de "Educación financiera"    
        And  haga click a la opcion "Incribirse"
        And  haga click a la opcion "Ir al curso"
        Then el asistente bancario (IA) de la aplicación ayudará y guiará al usuario paso a paso 
        And responderá cada una de las preguntas para encontrar la sección de cursos extras de educación financiera
        And le mostrara un mensaje de se a inscrito al curso existosamente

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |      opcion_IA_BANK       |   opcion_APRENDER      |       opcion1_Educacion Financiera        |   Inscribirse  |
            |      "MENU"         | "HOME" - !Bienvenido |     "Necesita Ayuda "     | "Cursos de Aprendizaje"|  "MicroCursos"  ->  "Beneficios del curso"|  "Ir al curso" |
        Examples: Datos de Salida
            |           Mensaje                 |
            |  "Inscrito al curso exitosamente" | 

Feature: HU10:  Como usuario de la aplicación BNK, quiero abrir o cerrar una cuenta bancaria para realizar las operaciones correspondientes.
    Scenario: E01: Abrir un nuevo tipo de cuenta bancaria 
        Given que el usuario desea aperturar un nuevo tipo de cuenta en la misma o diferente entidad financiera. 
        And el cliente se encuentra en la sección de "Apertura de Cuenta"
        When el cliente hace clic en la opción de "Tipo de banco" deseado
        And el sistema le pedirá rellenar sus "datos personales" en un formulario
        And haga click en el boton "Crear Nueva Cuenta"
        Then el sistema muestra un mensaje de se ha creado correctamente su nueva cuenta
        And le ortorgara su nuevo nuevo de cuenta y contraseña

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |      opcion_Buscador       |            opcion1_Apertura de Cuenta              |      Crear Cuenta      |
            |      "MENU"         | "HOME" - !Bienvenido |     "Apertura de Cuenta "  |  "Registro"- "Datos personales" -> "Crear Cuenta"  |  XXXXXX--XXXXXX--XXXXX | 
        Examples: Datos de Salida
            |                       Mensaje                 |
            |  "Se ha creado su cuenta correctamente"       | 

    Scenario: E02: Cerrar una cuenta bancaria existente 
        Given que se verificó que el usuario desea dar de baja a una de cuenta bancaria que posee. 
        And el cliente se encuentra en la sección de "Cierre de Cuenta"
        When el cliente hace clic en la opción de "Tipo de banco" deseado
        And el sistema le pedirá rellenar sus "datos personales" y "contraseña" en un formulario para verificar la identidad del propietario
        And haga click en el boton "Cerrar Cuenta definitivamente"
        Then el sistema muestra un mensaje de se ha cerrado correctamente su cuenta
    
        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |      opcion_Buscador     |                             opcion1_Cierre de Cuenta              |       
            |      "MENU"         | "HOME" - !Bienvenido |     "Cierre de Cuenta "  |  "Registro"- "Datos personales"  y "Contraseña"-> "Cerrar Cuenta" |
        Examples: Datos de Salida
            |                       Mensaje                 |
            |   "Se ha cerrado su cuenta correctamente"     | 

Feature: HU11:  Como usuario de la aplicación BNK, quiero que la aplicación cuente con un sistema de referidos y chatbots para poder interactuar e impulsar a mis amigos y a otras personas a administrar mejor su dinero en entidades bancarias seguras. 
    Scenario: E01: Se valida la opción de referidos 
        Given que se verificó que el usuario quiere recomendar entidades bancarias seguras a sus amigos y familiares.  
        And  el usuario se encuentra en sección de "Recomendaciones de entidades bancarias"
        When el usuario hace clic en la opción de referidos 
        And hace clic en el botón de "Entidades bancarias"  
        Then el sistema relaciona a las entidades bancarias más seguras con sus amigos  
        And muestra información resumida y relevante de la entidad bancaria elegida. 

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |                 opcion_Buscador                |         Referidos -> Entidades Bancarias   |   
            |      "MENU"         | "HOME" - !Bienvenido |     "Recomendaciones de entidades bancarias "  |  "Anabel"   -> Scotiabank, Interbank , BCP |  
        Examples: Datos de Salida
            |                     Informacion de la Entidad bancaria                           |
            |  "Se muestra informacion de la entidad bancaria "  -> "xxxxxx, xxxxxxx, xxx"     | 

    Scenario: E02: Se selecciona la opción de chatbots 
        Given que se verificó en el sistema inicio de conversaciones en chat individuales desea interactuar con sus amigos y recibir respuestas en tiempo real.   
        And el usuario se encuentra en la sección de "Mensajes"  
        When  el usuario hace clic en la opción de "chatbots"
        And hace clic en el botón de "mensajes de chat" o "respuestas rápidas"  
        Then el sistema genera conversaciones en tiempo real  
        And muestra dos opciones de chat entre amigos o con un asistente inteligente. 
    
        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |   MENSAJES   |                 Chatbots                   |   
            |      "MENU"         | "HOME" - !Bienvenido |  "Chatbots"  |  "Mensajes de Chat" o "Respuestas rapidas" | 
        Examples: Datos de Salida
            |   Mensajes de Chat    |              Respuestas rapidas (IA)            |   
            | "Anabel" -> "xxxxxxx" |   Como puedo aperturar una cuenta? -> "xxxxxxx" |

Feature: HU12:  Como cliente de banco quiero tener la opción de bloquear mi tarjeta, para poder evitar malos escenarios en caso de robos o pérdida. 
    Scenario: E01: Bloquear tarjeta por la aplicación de BNK 
        Given que el usuario desea bloquear su tarjeta 
        And  se encuentra en la opción de el buscador
        When el usuario haga clic en la sección de "bloquear tarjeta" 
        And rellene los "Datos personales "solicitados por la aplicación  
        Then el sistema verificará la validación de los datos ingresados y mandará un código de confirmación al correo del usuario.   
        And el usuario podrá recibir un mensaje de “Se bloqueo su tarjeta correctamente” en su correo   

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |   opcion_Otros Servicios  |                  Bloquear Tarjeta                        |   
            |      "MENU"         | "HOME" - !Bienvenido |     "Bloquear Tarjeta"    |  Registro" -> "Datos Personales" -> "Enviar Confirmacion"|  
        Examples: Datos de Salida
            |     Mensaje en la aplicacion            |
            | "Se bloqueo su tarjeta correctamente"   | 

    Scenario: E02: Bloquear tarjeta por llamada  
        Given que el usuario desea bloquear su tarjeta 
        And se encuentra en la opción de el buscador 
        When el usuario haga clic en la sección de "bloquear tarjeta"
        And rellene los "Datos solicitados" como el numero de tarjeta
        Then el sistema analiza a qué banco está afiliado y le notifica a un asesor de su banco para orientarlo en su bloqueo de tarjeta.  
        And el usuario podrá recibir un mensaje de texto de “Se bloqueo su tarjeta correctamente” en su número de celular afiliado a la aplicación 
    
        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |   opcion_Otros Servicios  |                     Bloquear Tarjeta                        |   
            |      "MENU"         | "HOME" - !Bienvenido |     "Bloquear Tarjeta"    |  "Datos Solicitados" -> "xxxxxxxxx" -> "Enviar Confirmacion"|  
        Examples: Datos de Salida
            |             Mensaje de texto            |   
            | "Se bloqueo su tarjeta correctamente"   |

Feature: HU13:  Como usuario de la aplicación BNK, quiero planificar y gestionar mis gastos mensuales de manera más eficiente para tener un mejor manejo de mi presupuesto
    Scenario: E01: Planificación de gastos mensuales
        Given que el usuario desea tener una planificación de sus gastos mensuales
        And  se encuentra en la opción de el buscador
        When el usuario hace clic en la sección de "Herramientas de planificación de gastos" 
        Then el sistema analiza y compara automáticamente los gastos reales con el presupuesto establecido
        And mostrará visualmente un mensaje si el usuario está dentro o fuera del presupuesto en cada categoría. 
        And la aplicación le proporcionará un resumen detallado de los gastos, mostrando las categorías en las que el usuario gastó más y menos

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |              opcion_Otros Servicios              |        Presuesto        |   
            |      "MENU"         | "HOME" - !Bienvenido |     "Herramientas de Planificacion de Gastos"    |  "Estudios"  -> S/. 5000|  
        Examples: Datos de Salida
            |               Mensaje                 |                    Resumen de Gastos                   |
            | "Usted esta dentro del presupuesto"   | "Categoria" -> "Estudios" -> "Mensualidad" -> S/.1200  |

Feature: HU14:  Como usuario de la aplicación BNK, quiero recibir recomendaciones de inversión personalizadas, para realizar un seguimiento de mi cartera de inversiones de manera eficiente
    Scenario: E01: Recomendación de inversiones personalizadas
        Given que el usuario desea crear un perfil de inversión personalizado al proporcionar información sobre sus objetivos financieros, tolerancia al riesgo y horizonte temporal.
        And  se encuentra en la opción de el buscador
        When el usuario hace clic en la sección de "recomendaciones de inversión" y las "condiciones actuales del mercado"
        Then el sistema debe ofrecer recomendaciones de inversión basadas en el perfil del usuario
        And la aplicación mostrará el valor actual de cada inversión, las ganancias o pérdidas y proporcionará un resumen general

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |              opcion_Otros Servicios              |        Presuesto        |   
            |      "MENU"         | "HOME" - !Bienvenido |     "Herramientas de Planificacion de Gastos"    |  "Estudios"  -> S/. 5000|  
        Examples: Datos de Salida
            |      Recomendaciones de Inversiones   |                      Resumen de Recomendacion                            |
            |     "Empresa xxxxx"                   | "Empresa xxxxx" -> "s/. 20000" -> "Ganancias" -> 60% -> Perdidas -> 30%  |

Feature: HU15: Como usuario de la aplicación BNK, quiero tener la opción de configurar herramientas de ahorro automáticas que redirijan una parte de mis ingresos a una cuenta de ahorros, para ayudarme a alcanzar mis objetivos financieros a largo plazo
    Scenario: E01: Configuración de Herramientas de Ahorro Automático
        Given que soy un usuario de la aplicación BNK
        And  se encuentra en la opción de el buscador
        When acceda a la sección de configuración de "ahorro automático"
        And seleccione una "cuenta destino"
        Then el sistema debería poder definir la cantidad o porcentaje de mis ingresos que quiero ahorrar automáticamente en una cuenta de ahorros.
        And mostrarle un mensaje de cuanto monto esta ahorrando en su cuenta , con una fecha y hora

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |     opcion_Buscador        |      Ahorro Automatico        |   
            |      "MENU"         | "HOME" - !Bienvenido |     "Ahorro Automatico"    |  "Mondo de Ahorro"  -> S/. 100|  
        Examples: Datos de Salida
            |                           Mensaje de Confirmacion                                      |
            |   "Usted esta ahorrando un monto de S/100 en su cuenta"  -> "20-08-2023"  -> "3: 00 pm"|

Feature: HU16: Como usuario de BNK, quiero poder encontrar sucursales bancarias cercanas a mi ubicación actual para realizar mis transacciones de forma más efectiva
    Scenario: E01: Búsqueda de sucursales
        Given que el usuario esta conectado a su cuenta
        And  se encuentra en el buscador
        When acceda a la opción de encontrar "sucursales cercanas"
        And permite que la aplicación acceda a su ubicación
        Then el sistema genera un mapa con marcadores que muestran las sucursales cercanas.

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |   opcion_Buscador       |    
            |      "MENU"         | "HOME" - !Bienvenido |  "Sucursales Cercanas"  |   
        Examples: Datos de Salida
            |                   Mapa de Sucursales   |
            |   "Sus sucursales cercanas a usted son las siguientes: xxxxx, xxxxx, xxxxxx"  |

    Scenario: E02: Detalles de sucursal
        Given que veo un marcador en el mapa de una sucursal cercana
        And  se encuentra en el buscador
        When seleccione el "marcador"
        Then veo información detallada de esa sucursal, como dirección, horario de atención y servicios disponibles.

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |                            Sucursales Cercanas                           | 
            |      "MENU"         | "HOME" - !Bienvenido |  "Sucursales Cercanas" -> Marcar Sucursal -> "Ctra. Panamericana S 201"  |   
        Examples: Datos de Salida
            |                          Informacion de Sucursal Detallada                                   |
            |   "Ctra. Panamericana S 201" - "Direccion" - "Horario de atencion" - "Servicios disponibles" |

Feature: HU17: Como usuario, quiero poder ver un historial completo de todas las transacciones realizadas en mis cuentas bancarias para tener registro de los movimientos que realizó
    Scenario: E01: Acceder al historial de transacciones
        Given que el usuario esta conectado a su cuenta
        And  se encuentra en el buscador
        When acceda a la opción de "Historial de transacciones"
        Then el sistema genera una lista ordenada cronológicamente de todas las transacciones realizadas
        And filtra las transacciones por fecha o tipo de transacción

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |        opcion_Buscador         |    
            |      "MENU"         | "HOME" - !Bienvenido |  "Historial de Transacciones"  |   
        Examples: Datos de Salida
            |                                   Lista de Transacciones                                        |
            |   "Se muestra un listado con las transacciones realizadas" - "fecha" -  "tipo de trasancciones" |

Feature: HU18: Como usuario, quiero poder establecer metas de ahorro personalizadas y realizar un seguimiento de mi progreso hacia esas metas para cumplirlas a futuro
    Scenario: E01: Crear una meta de ahorro
        Given que el usuario esta conectado a su cuenta
        And  se encuentra en el buscador
        When accedo a la opción de "Establecer una meta de ahorro"
        And Y proporciono detalles de la meta (nombre, monto, fecha límite, etc.)
        Then el sistema crea una meta y aparece en mi lista de metas en donde se muestra el monto
        And el sistema verifica si se cumplio o no la meta y su estado

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |           opcion_Buscador         |    
            |      "MENU"         | "HOME" - !Bienvenido |  "Establecer una meta de ahorro"  |   
        Examples: Datos de Salida
            |                 Lista de Metas de ahorro                  |
            |  "Meta"  -> "S/. 200"  -> "No se cumplio" -> En progreso  |


Feature: HU19: Como usuario, quiero poder solicitar préstamos personales a través de la aplicación para poder acceder a financiamiento cuando lo necesite
    Scenario: E01: solicitar préstamos personales
        Given que el usuario esta conectado a su cuenta
        And  se encuentra en el buscador
        When accedo a la opción de "Prestamos"
        And  hace click a la opción "avisos" y verifica todos los pretamos y si tiene una oferta 
        And  hace click a "Personaliza tu prestamo" 
        And  elige el "número de cuotas", el "monto" y la "cuenta de ahorros" donde se hará el desembolso
        Then el sistema le muestra una lista de opciones, con su respectiva informacion

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |    opcion_Buscador  |             Avisos             |            Personaliza tu prestamo             |
            |      "MENU"         | "HOME" - !Bienvenido |      "Prestamos"    | "Prestamo xxxx" - "Oferta 20%" |   6 cuotas - "S/200"  - "Cuenta xxxx-xxxx-xxx" |
        Examples: Datos de Salida
            |                  Lista de Prestamos                |
            |  "Prestamo xxxx" - "Descripcion - xxxxxxxxxxxxx"   |

Feature: HU20: Como usuario, quiero poder configurar recordatorios de pagos para recibir alertas antes de la fecha de vencimiento de mis facturas y préstamos, así como evitar retrasos en los pagos
    Scenario: E01: Configuración de recordatorio
        Given que el usuario esta conectado a su cuenta
        And  se encuentra en el buscador
        When accedo a la opción de "Configurar recordatorio de pago"
        And  selecciono una "factura" o "préstamo"
        And  elijo la "fecha"y "hora" en la que deseo recibir el recordatorio
        Then el sistema genera un recordatorio y se configura correctamente para ayudarme a recordar las fechas de vencimiento.

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |    opcion_Buscador  |             Avisos             |            Personaliza tu prestamo             |
            |      "MENU"         | "HOME" - !Bienvenido |      "Prestamos"    | "Prestamo xxxx" - "Oferta 20%" |   6 cuotas - "S/200"  - "Cuenta xxxx-xxxx-xxx" |
        Examples: Datos de Salida
            |                  Lista de Prestamos                |
            |  "Prestamo xxxx" - "Descripcion - xxxxxxxxxxxxx"   |

    Scenario: E02: Configuración de recordatorio
        Given que el usuario esta conectado a su cuenta
        And  se encuentra en el buscador
        When accedo a la opción de "Configurar recordatorio de pago"
        And  selecciono una "factura" o "préstamo"
        And  elijo la "fecha"y "hora" en la que deseo recibir el recordatorio
        Then el sistema genera un recordatorio y se configura correctamente para ayudarme a recordar las fechas de vencimiento.

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |           opcion_Buscador         |                            opcion_multiple_Pago_Factura_o_Prestamo                    |
            |      "MENU"         | "HOME" - !Bienvenido | "Configurar recordatorio de pago" | "Servicio de Agua" -> "s/.300" -> Fecha de Recordatorio "20-07-2023"  - Hora "2:00 pm"|   
        Examples: Datos de Salida
            |                       Notificaciones de Recordatorio                 |
            |  Factura -> "Servicio de Agua" -> Fecha de Vencimiento "07-10-2023"  |

Feature: HU21:  Como usuario, quiero poder escanear y archivar recibos y comprobantes de mis transacciones financieras para mantener un registro organizado y facilitar el seguimiento de mis gastos
    Scenario: E01: Escanear recibo
        Given que soy un usuario de la aplicación
        And  se encuentra en el buscador
        And accedo a la opción de "Gastos"
        When accedo a la opción de "Escanear recibo"
        And  utilizó la cámara de mi dispositivo para tomar una foto del recibo
        Then la aplicación escanea la imagen 
        And la almacena en mi cuenta, asociándola al gasto correspondiente

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |    opcion_Buscador  |       Gastos      |   Escanear Recibo |
            |      "MENU"         | "HOME" - !Bienvenido |      "Gastos"       | "Escanear Recibo" |        "Foto"     |
        Examples: Datos de Salida
            |   Reconocimiento de Gasto (IA)      |
            |  "Recibo" -> "Pago de Mensualidad"  |

    Scenario: E02: Consultar recibos archivados
        Given que he escaneado varios recibos y comprobantes
        And  se encuentra en el buscador
        When accedo a la opción de "Recibos archivados"
        Then puedo ver una lista de los recibos escaneados
        And puedo buscarlos por fecha, tipo de gasto o cantidad

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |   opcion_Buscador       |                                         
            |      "MENU"         | "HOME" - !Bienvenido |   "Recibos archivados"  |    
        Examples: Datos de Salida
            |                      Lista de Recibos escaneados (Filtrado)                       |
            |  "Servicio de Agua" -> Fecha "07-10-2023" -> Tipo "Servicio"  -> Cantidad "S/.200"|

Feature: HU22:  Como usuario, quiero recibir un aviso de alerta cuando el monto de una operación por transferencia esté por finalizar y este supere los cien soles, para asegurarme de realizar la operación de manera correcta
    Scenario: E01: Configuración y Recepcion de alerta de monto
        Given que soy un usuario de la aplicación
        And  se encuentra en el buscador
        When accedo a la configuración de alertas en "Mis Notificaciones"
        And  seleccione la opción para configurar una "alerta por monto de transferencia"
        Then la app me permite establecer un tope de cien soles o más como límite para las transferencias
        And el usuario puede confirmar esta configuración

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |    opcion_Buscador    |                     Alerta de Monto Elevado!                         |  
            |      "MENU"         | "HOME" - !Bienvenido |  "Mis Notificaciones" | "Monto de Transferencia Permitido" - "Monto de Transferencia Actual" |
        Examples: Datos de Salida
            |        Alerta en tiempo Real (IA)       |
            |  "Confirmacion de la configuracion realizada"  |

Feature: HU23: Como usuario, quiero tener un control de mis datos financieros, para saber quién puede acceder a mi información financiera y qué datos o información específica pueden ver los asesores bancarios
    Scenario: E01: Control de acceso
        Given que soy un usuario de la aplicación
        And  se encuentra en el buscador
        When accedo a la sección de control de "datos financieros" en la "configuración" de la aplicación
        And  selecciono la opción para ver quién puede acceder a mi información financiera
        Then me muestra una lista de todas las personas o entidades autorizadas que tienen acceso a mis datos financieros, incluyendo los asesores bancarios

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |    ocpcion_PERFIL   |       Perfil        |  Detalles_de_Acceso de Informacion |
            |      "MENU"         | "HOME" - !Bienvenido |    "configuracion"  | " Datos Finaciores" |      "Publica" o "Privada"         |
        Examples: Datos de Salida
            |        Lista de Personas autorizadas       |
            |  "Datos Finacieros" - "Asesor" - "Entidad" |

Feature: HU24:  Como usuario, quiero recibir alertas de seguridad en tiempo real como advertencias sobre posibles fraudes o actividad sospechosa en mis cuentas, para proteger mis datos financieros
    Scenario: E01: Configuración de alertas de seguridad
        Given que soy un usuario de la aplicación
        And  se encuentra en el buscador
        When acceda a la "configuración" de "alertas de seguridad"
        And  seleccione la opción para configurar alertas de seguridad en mis cuentas
        Then la app me permite habilitar la recepción de alertas en tiempo real para posibles fraudes o actividad sospechosa en mis cuentas

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |    ocpcion_PERFIL   |          Perfil         |  
            |      "MENU"         | "HOME" - !Bienvenido |    "configuracion"  | " Alertas de Seguridad" | 
        Examples: Datos de Salida
            |        Recepcion de Alertas (IA)            |
            |  "posibles fraudes" -> "hora" -> "Ubicacion"| 

    Scenario: E02: Recepción de alerta de seguridad
        Given que he habilitado las alertas de seguridad en mis cuentas
        And  se encuentra en el buscador
        When se detecta "actividad sospechosa" o un "posible fraude" en una de mis cuentas financierasas
        Then la app me envía una notificación de alerta en tiempo real, proporcionando detalles sobre la actividad sospechosa 
        And adicionalmente, pasos a seguir para proteger mis datos financieros

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |    ocpcion_PERFIL   |                          Perfil                 |  
            |      "MENU"         | "HOME" - !Bienvenido |    "configuracion"  | " Alertas de Seguridad" -> "Posible faudre (IA)"| 
        Examples: Datos de Salida
            |    Alerta de Peligro (IA) |  Resumen de Proteccion de Cuenta|
            |       "Activada"          |     "Pasos de Proteccion"       |

Feature: HU25:  Como usuario, quiero recibir notificaciones sobre ofertas y promociones especiales ofrecidas por el banco, para aprovechar aquellos beneficios de ahorro y otros adicionales
    Scenario: E01: Configuración de notificaciones de ofertas y/o promociones
        Given  que soy un usuario de la aplicación
        And  se encuentra en el buscador
        When acceda a la "configuración" de "notificaciones"
        And  seleccione la opción para "recibir notificaciones" sobre ofertas y promociones del banco
        Then la app me permite habilitar esta función de notificaciones
        And la app me envía una notificación en tiempo real, proporcionando detalles sobre la oferta, los beneficios de ahorro

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |    ocpcion_MENSAJES     |   Mis Notificaciones |  
            |      "MENU"         | "HOME" - !Bienvenido |    "Mis Notificaciones" | " Configuracion"     | 
        Examples: Datos de Salida
            |                    Configuracion                 |   Lista de Notificaciones (IA)   |   Detalle_Oferta_o_Promocion  |
            | Activar Reccepcion  de "Ofertas" y "Promociones" |   "Ofertas del 40%"- "xxxxx"     |   "Oferta" -> "Beneficios"    |

Feature: HU26:  Como usuario, quiero poder programar pagos automáticos para facturas recurrentes como hipotecas y entre otros servicios públicos, para simplificar la gestión de mis finanzas
    Scenario: E01: Configuración de pagos automáticos
        Given  que soy un usuario de la aplicación
        And  se encuentra en el buscador
        When accedo a la sección de "pagos automáticos"
        And  selecciono la opción para configurar un "nuevo pago automático"
        Then la app BNK me guía a través del proceso de configuración 
        And  me permite ingresar detalles como el receptor, la cantidad, la frecuencia y la fecha de inicio del pago automático

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |   opcion_Buscador    |   Nuevo Pago Automatico |           Transferencia        |
            |      "MENU"         | "HOME" - !Bienvenido |  "pagos automáticos" |   " Pago Programado"    | "A personas" - "A mis cuentas" |
        Examples: Datos de Salida
            |       Mensaje _Detalles del Pago            |  
            | "Anabel" ->  S/200 -> "frecuencia 2" -> "05-08-2023"    |

    Scenario: E02: Gestionar pagos automáticos
        Given  que soy un usuario de la aplicación
        And  se encuentra en el buscador
        When accedo a la sección de "pagos automáticos"
        And  seleccione un "pago automático existente"
        Then veo y puedo editar los detalles del pago, como cambiar la cantidad o la fecha de vencimiento
        And además, me muestra el estado actual del pago y si se ha ejecutado con éxito.

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |   opcion_Buscador    |             Pago Automatico Existente               |           
            |      "MENU"         | "HOME" - !Bienvenido |  "pagos automáticos" | Editar -> "Detalles de Pago" -> "Cambiar Cantidad"  | 
        Examples: Datos de Salida
            |                           Estado del Pago                           |  
            | "Anabel" ->  S/200 -> Estado "Proceso" -> "Se ejecuto con existo"   |

Feature: HU27:  Como usuario, quiero un asistente virtual que pueda proporcionar análisis de mercado en tiempo real utilizando gráficos y datos visuales en 3D a través de la realidad aumentada, para tomar decisiones de inversión más informadas.
    Scenario: E01: Solicitud de Análisis de mercado
        Given  que soy un usuario de la aplicación
        And  se encuentra en el menu principal "Home"
        And  hace click en la (IA) "Necesitas Ayuda"
        When "solicito el análisis de mercado" en tiempo real a través del asistente virtual
        And  selecciono un mercado específico como acciones
        Then el asistente virtual me proporciona gráficos
        And datos en 3D que representan la situación actual del mercado de acciones en tiempo real

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |                     Necesitas Ayuda (IA)                 | 
            |      "MENU"         | "HOME" - !Bienvenido |  "Solicitud de Analisis" -> Selecciona tipo de "Mercado" |   
        Examples: Datos de Salida
            |              Graficos y Datos 3D (IA)                   |  
            | "Representacion de la situacion actual del mercado (IA) |

    Scenario: E02: Interacción con los datos de mercado
        Given que veo el análisis de mercado en tiempo real proporcionado por el asistente virtual
        When interactúo con los "gráficos y datos en 3D"
        And  a través de gestos, comandos que me permiten acercar, alejar o rotar
        Then el asistente virtual responde a mis interacciones permitiéndome explorar diferentes perspectivas de los datos, como también solicitar información adicional sobre algunos elementos de los gráficos

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |        "Graficos y datos 3D"       |                   
            |      "MENU"         | "HOME" - !Bienvenido |  Interaccion "Gestos", "Comandos"  | 
        Examples: Datos de Salida
            |         Informacion Detallada de Los graficos     |                      |  
            | " Se muestra informacion propuesta por la (IA)"   |

Feature: HU28:  Como usuario, quiero tener la capacidad de personalizar completamente mi entorno de banca en realidad aumentada, eligiendo un estilo visual, como también avatares virtuales que me acompañarán durante mis interacciones bancarias, para hacer más entretenido cualquier operación realizada por la aplicación
    Scenario: E01: Acceso a “Configuración”
        Given  que soy un usuario de la aplicación
        And  se encuentra en el buscador 
        When accedo a la opción de "Personalizar cuenta" 
        And  selecciono lo que deseo modificar el avatar o estilo visual
        Then confirmo las selecciones y la aplicación guarda mis preferencias 
        And el sistema realiza la configuracion

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |      opcion_Buscador    |                  Configurcion                  |               
            |      "MENU"         | "HOME" - !Bienvenido |  "Personalizar cuenta"  |  Personalizacion de "avatar" y "estilo visual" |
        Examples: Datos de Salida
            |      Interfaz de la cuenta Personalizada    |  
            |     "Se muestra la configuracion realizada" |

    Scenario: E02: Cambio de personalización
        Given que he configurado el entorno de la cuenta. 
        When accedo a mi cuenta, me muestra el entorno ya configurado
        And luego interactuó con la realidad aumentada y noto que el entorno como el avatar reflejan las nuevas selecciones
        Then el sistema muestra la nueva configuración personalizada y comprendo que puedo volver a cambiarlo en cualquier momento

        Examples: Datos de Entrada
            | Interfaz Principal  |     Menu Principal   |        "Realidad Aumentada        |                   
            |      "MENU"         | "HOME" - !Bienvenido |  Interaccion con la Interfaz (IA) | 
        Examples: Datos de Salida
            |                Interfaz de la cuenta Personalizada              |  
            | "Se muestra la configuracion realizada" -> "Colores" -> "Avatar"|

Feature: HU29:  Como usuario quiero poder acceder a mi cuenta de manera rápida y sencilla para poder visualizar los beneficios de la aplicación o lo que requiero en el momento
    Scenario: E01: Acceso a cuenta
        Given  que soy un usuario de la aplicación
        And deseo entrar a la app 
        When hago click a la "App BNK"
        And  veo un apartado donde me pide que ingrese con mi cuenta loggeada en la app
        Then el sistema me permite logearme automaticamente

        Examples: Datos de Entrada
            | Interfaz Principal  |                 Iniciar sesion                   |                
            | "Iniciar Sesion"    | "Usuario" ->"Contraseña" -> opcion_Gmail_Facebook| 
        Examples: Datos de Salida
            |      Menu Principal   |              
            |  "HOME" - !Bienvenido |

    Scenario: E02: Registro de usuario nuevo 
        Given que soy un nuevo usuario de la aplicación
        And deseo entrar a la app 
        When me pidan que me registre por una cuenta de google o un correo electrónico cualquiera
        Then el sistema me muetra un formulario
        And un Mensaje de se ha creado correctamente su cuenta 

        Examples: Datos de Entrada
            |    Interfaz Principal    |              Registro de Cuenta                  |                
            | " Crear cuenta Nueva"    | "Usuario" ->"Contraseña" -> opcion_Gmail_Facebook| 
        Examples: Datos de Salida
            |                Mensaje            |  
            | "Se credo correctamente su cuenta"|

Feature: HU30:  Como usuario quiero poder ver el saldo de mis cuentas en la pantalla de inicio de la app para poder tener en cuenta todo mi dinero ahorrado
    Scenario: E01: Visualización de saldo actual
        Given que estoy en la pantalla de inicio de la app
        And deseo ver de manera rápida mi saldo actual
        When visualizo la parte de arriba de la pantalla de inicio de la app
        Then la aplicación te pide una clave de 4 dígitos 
        And se visualiza el monto de la cuenta en la app 

        Examples: Datos de Entrada
            | Interfaz Principal  |      Menu Principal  |       Saldo Actual     |      Clave    |
            |      "MENU"         | "HOME" - !Bienvenido | "Resumen de su Saldo"  |  Clave "XXXX" |
        Examples: Datos de Salida
            |      Saldo    |              
            |  "Monto S/.400 |

Feature: HU31:  Como usuario quiero poder configurar alertas para recibir notificaciones cuando mi saldo es bajo o cuando tenga una transacción pendiente para no tener deudas
    Scenario: E01: Configurar alertas 
        Given que estoy en la pantalla de inicio de la app
        And deseo configurar las alertas 
        When mi saldo esté bajo o tenga una transacción pendiente 
        And voy a la sección “Notificaciones”
        And activo el botón de “Alertas de emergencia”
        Then la app comenzará a enviarme notificaciones de acuerdo a lo que quiera  

        Examples: Datos de Entrada
            | Interfaz Principal  |      Menu Principal  |   Configuracion   |          Alerta de Emergencia         |
            |      "MENU"         | "HOME" - !Bienvenido | "Alertas"         |  "Se muestra notificaciones de Alerta"|
        Examples: Datos de Salida
            |         Mensaje de Alerta de Emergencia    |
            |    "Se muestra notificaciones de Alerta"   |

Feature: HU32:  Como usuario quiero poder realizar transferencias de dinero a cuentas de mi banco con un solo clic para evitar demorar tiempo en el banco 
    Scenario: E01: Transacciones de dinero
        Given que soy un usuario de la aplicación
        And deseo registrar una transacción de dinero 
        And se encuentra en el buscador
        When accedo a la sección "Transacciones"
        Then la app me permitirá hacer el tipo de transacción que yo requiera en ese momento
        And me mostrara un mensaje de que la trasccione se realizo con existo con fecha, asunto, estado y tipo

        Examples: Datos de Entrada
            | Interfaz Principal  |      Menu Principal  |   opcion_Buscador  |          Alerta de Emergencia         |
            |      "MENU"         | "HOME" - !Bienvenido |    "Transacciones" |  "Se muestra notificaciones de Alerta"|
        Examples: Datos de Salida
            |                   Mensaje de Trasaccion                                  |
            | "Su trasaccion se realizo con existo" -> "fecha" -> "asunto" -> "estado" |

Feature: HU33:  Como usuario quiero poder ver el saldo de mis cuentas y el historial de transacciones para tenerlo de  manera clara y organizada
    Scenario: E01: Verificación de saldo en cuentas y Historial de Trasacciones
        Given que soy un usuario de la aplicación
        And deseo registrar una transacción de dinero 
        When accedo a la opción de "Mi cuenta"
        Then me muestra el saldo actual de mi cuenta junto a estadísticas de las últimas transacciones
        And una lista de trasacciones realizadas

        Examples: Datos de Entrada
            | Interfaz Principal  |      Menu Principal  |   opcion_Buscador  |   
            |      "MENU"         | "HOME" - !Bienvenido |    " Mi cuenta"    |  
        Examples: Datos de Salida
            |                   Saldo                                   |       Lista de Trasacciones   |
            | "Monto de s/.600" -> "Graficos referentes a su situacion" |   "Historial de Trasacciones" |

Feature: HU34:  Como usuario quiero poder pagar mis facturas con la app utilizando mi tarjeta de crédito o débito para evitar ir a pagar al mismo banco o agentes
    Scenario: E01: Pago de facturas
        Given que soy un usuario de la aplicación
        And deseo pagar mis facturas 
        When accedo a la opción de "Pagar"
        And me aparece otra opción de "Pagar mis facturas"
        Then la aplicación me da la opción de pagarlas con mis tarjetas de crédito o débito 

        Examples: Datos de Entrada
            | Interfaz Principal  |      Menu Principal  |   opcion_Buscador  |       Pagar mis Facturas       |
            |      "MENU"         | "HOME" - !Bienvenido |    " Pagar"        |  "Historial de Pagos por pagar"|
        Examples: Datos de Salida
            |            Mensaje                    |
            | "Usted realizo su pago correctamente" |   

Feature: HU35:  Como usuario quiero poder poder ver los comentarios de otros usuarios sobre una transacción específica para tener la seguridad al hacerlo yo
    Scenario: E01: Comentarios de otros usuarios
        Given que soy un usuario de la aplicación
        And deseo saber la opinión de otros usuarios registrados en la aplicación
        When vaya a la opción "Comentarios sobre la app"
        Then la aplicación muestra los comentarios realizados a la app

        Examples: Datos de Entrada
            | Interfaz Principal  |      Menu Principal  |   opcion_Buscador          |     
            |      "MENU"         | "HOME" - !Bienvenido | " Comentarios Sobre la App"|  
        Examples: Datos de Salida
            |        Historial de Comentarios             |
            | "Se muetra los Comentarios de los usuarios" |  

    Scenario: E02: Calificación de la app
        Given que necesito realizar un comentario a la app 
        When accedo a la opción de "Comentarios sobre la app"
        And luego a la opción "Puntuar app"
        Then puedo realizar un comentario a la app 
        And puntuar con estrellas.

        Examples: Datos de Entrada
            | Interfaz Principal  |      Menu Principal  |   opcion_Buscador          |         Calificar    |
            |      "MENU"         | "HOME" - !Bienvenido | " Comentarios Sobre la App"|  Puntacion - "*****" |
        Examples: Datos de Salida
            |       Historial de Comentarios  |
            | "Comentario 1"   ->  "5 points" | 

Feature: HU36:  Como usuario quiero poder compartir el comprobante de mi transacción para poder tener una copia de seguridad
    Scenario: E01: Comprobante de transacción 
        Given que soy un usuario de la aplicación
        And he realizado una transacción 
        When accedo a la opción de "Historial de transacciones"
        Then la aplicación me muestra las transacciones realizadas
        And junto a ellos me muestra un archivo pdf
        Then la aplicación muestra un resumen de la transacción 
        And da la opción de compartir el comprobante 


        Examples: Datos de Entrada
            | Interfaz Principal  |      Menu Principal  |        opcion_Buscador      |     Comprobante   |
            |      "MENU"         | "HOME" - !Bienvenido |  "Historial de Transaciones"|  xxxxxxxxxxxxxxxx |
        Examples: Datos de Salida
            |        resumen de la transacción (pdf)      |            Compartir Comprobante           |
            | "Se muetra los Comentarios de los usuarios" |  "Por medio de amigos" o "redes sociales " |


