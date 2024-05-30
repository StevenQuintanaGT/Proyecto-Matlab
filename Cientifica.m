function varargout = Cientifica(varargin)
% CIENTIFICA MATLAB code for Cientifica.fig
%      CIENTIFICA, by itself, creates a new CIENTIFICA or raises the existing
%      singleton*.
%
%      H = CIENTIFICA returns the handle to a new CIENTIFICA or the handle to
%      the existing singleton*.
%
%      CIENTIFICA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CIENTIFICA.M with the given input arguments.
%
%      CIENTIFICA('Property','Value',...) creates a new CIENTIFICA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Cientifica_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Cientifica_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Cientifica

% Last Modified by GUIDE v2.5 08-Jun-2021 22:49:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Cientifica_OpeningFcn, ...
                   'gui_OutputFcn',  @Cientifica_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Cientifica is made visible.
function Cientifica_OpeningFcn(hObject, eventdata, handles, varargin)


% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Cientifica (see VARARGIN)

% Choose default command line output for Cientifica
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Cientifica wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Cientifica_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;





% --- Executes on button press in CUATRO.
function CUATRO_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'4')
set(handles.RESULTADO,'string',s);

% hObject    handle to CUATRO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in UNO.
function UNO_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'1')
set(handles.RESULTADO,'string',s);

% hObject    handle to UNO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in CERO.
function CERO_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'0')
set(handles.RESULTADO,'string',s);

% hObject    handle to CERO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in CINCO.
function CINCO_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'5')
set(handles.RESULTADO,'string',s);

% hObject    handle to CINCO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in DOS.
function DOS_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'2')
set(handles.RESULTADO,'string',s);

% hObject    handle to DOS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PUNTO.
function PUNTO_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'.')
set(handles.RESULTADO,'string',s);

% hObject    handle to PUNTO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SEIS.
function SEIS_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'6')
set(handles.RESULTADO,'string',s);

% hObject    handle to SEIS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in TRES.
function TRES_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'3')
set(handles.RESULTADO,'string',s);

% hObject    handle to TRES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in IGUAL.
function IGUAL_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=eval(s)
set(handles.RESULTADO,'string',s);


% hObject    handle to IGUAL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in MENOS.
function MENOS_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'-')
set(handles.RESULTADO,'string',s);


% hObject    handle to MENOS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in MAS.
function MAS_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'+')
set(handles.RESULTADO,'string',s);

% hObject    handle to MAS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SIETE.
function SIETE_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'7')
set(handles.RESULTADO,'string',s);

% hObject    handle to SIETE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in OCHO.
function OCHO_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'8')
set(handles.RESULTADO,'string',s);

% hObject    handle to OCHO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in NUEVE.
function NUEVE_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'9')
set(handles.RESULTADO,'string',s);

% hObject    handle to NUEVE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in MULTIPLICAR.
function MULTIPLICAR_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'*')
set(handles.RESULTADO,'string',s);

% hObject    handle to MULTIPLICAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BORRAR.
function BORRAR_Callback(hObject, eventdata, handles)
set(handles.RESULTADO,'String','')

% hObject    handle to BORRAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PORCIENTO.
function PORCIENTO_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'%(')
set(handles.RESULTADO,'string',s);
% hObject    handle to PORCIENTO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in RAIZCUAD.
function RAIZCUAD_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'sqrt(')
set(handles.RESULTADO,'string',s);

% hObject    handle to RAIZCUAD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in DIVIDIR.
function DIVIDIR_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'/')
set(handles.RESULTADO,'string',s);


% hObject    handle to DIVIDIR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in GRAFICAR.
function GRAFICAR_Callback(hObject, eventdata, handles)
axes(handles.GRAFICA);
valor = get(handles.RESULTADO,'String');
hold on
ezplot(valor)
grid
hold off
% hObject    handle to GRAFICAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PARENCERRADO.
function PARENCERRADO_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,')')
set(handles.RESULTADO,'string',s);

% hObject    handle to PARENCERRADO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in FACTORIAL.
function FACTORIAL_Callback(hObject, eventdata, handles)
handles.NUM=str2double(get(handles.RESULTADO,'String'))
handles.memoria=num2cell(zeros(1,24))
handles.i=0;
handles.R=factorial(handles.NUM)
set(handles.RESULTADO,'String',handles.R)
guidata(hObject,handles)

% hObject    handle to FACTORIAL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PI.
function PI_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'pi')
set(handles.RESULTADO,'string',s);

% hObject    handle to PI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in LITERAL.
function LITERAL_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');

s=strcat(s,'x')
set(handles.RESULTADO,'string',s);

% hObject    handle to LITERAL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in TANGENTE.
function TANGENTE_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'tan(')
set(handles.RESULTADO,'string',s);
% hObject    handle to TANGENTE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in COSENO.
function COSENO_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'cos(')
set(handles.RESULTADO,'string',s);
% hObject    handle to COSENO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SENO.
function SENO_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'sin(')
set(handles.RESULTADO,'string',s);


% hObject    handle to SENO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in LOGNATURAL.
function LOGNATURAL_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'log(')
set(handles.RESULTADO,'string',s);
% hObject    handle to LOGNATURAL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PARENABIERTO.
function PARENABIERTO_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'(')
set(handles.RESULTADO,'string',s);

% hObject    handle to PARENABIERTO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in RAIZCUAD.
function RAIZ_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'nthroot(')
set(handles.RESULTADO,'string',s);

% hObject    handle to RAIZCUAD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in POTENCIA.
function POTENCIA_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'^')
set(handles.RESULTADO,'string',s);



% hObject    handle to POTENCIA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in LOGARITMO.
function LOGARITMO_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'log10(')
set(handles.RESULTADO,'string',s);
% hObject    handle to LOGARITMO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in POTENCIACUAD.
function POTENCIACUAD_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'^2')
set(handles.RESULTADO,'string',s);

% hObject    handle to POTENCIACUAD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in POTENCIACUB.
function POTENCIACUB_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'^3')
set(handles.RESULTADO,'string',s);

% hObject    handle to POTENCIACUB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in ABRIRBASICA.
function ABRIRBASICA_Callback(hObject, eventdata, handles)
CALCULADORAUMG
close(Cientifica)

% hObject    handle to ABRIRBASICA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in COMA.
function COMA_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,',')
set(handles.RESULTADO,'string',s);
% hObject    handle to COMA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in RAIZCUBICA.
function RAIZCUBICA_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat('nthroot(',s,',3)')
set(handles.RESULTADO,'string',s);
% hObject    handle to RAIZCUBICA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function GRAFICA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GRAFICA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate GRAFICA




% --- Executes on button press in MENORQUE.
function MENORQUE_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'<')
set(handles.RESULTADO,'string',s);
% hObject    handle to MENORQUE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in MAYORQUE.
function MAYORQUE_Callback(hObject, eventdata, handles)
s = get (handles.RESULTADO,'string');
s=strcat(s,'>')
set(handles.RESULTADO,'string',s);
% hObject    handle to MAYORQUE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in masfunciones.
function masfunciones_Callback(hObject, eventdata, handles)
masOpciones
close(Cientifica)
% hObject    handle to masfunciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
