function varargout = CALCULADORAUMG(varargin)
% CALCULADORAUMG MATLAB code for CALCULADORAUMG.fig
%      CALCULADORAUMG, by itself, creates a new CALCULADORAUMG or raises the existing
%      singleton*.
%
%      H = CALCULADORAUMG returns the handle to a new CALCULADORAUMG or the handle to
%      the existing singleton*.
%
%      CALCULADORAUMG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULADORAUMG.M with the given input arguments.
%
%      CALCULADORAUMG('Property','Value',...) creates a new CALCULADORAUMG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CALCULADORAUMG_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CALCULADORAUMG_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CALCULADORAUMG

% Last Modified by GUIDE v2.5 08-Jun-2021 21:34:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CALCULADORAUMG_OpeningFcn, ...
                   'gui_OutputFcn',  @CALCULADORAUMG_OutputFcn, ...
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


% --- Executes just before CALCULADORAUMG is made visible.
function CALCULADORAUMG_OpeningFcn(hObject, eventdata, handles, varargin)
handles.memoria= num2cell(zeros(1,12))%Declaramos nuestra memoria con 12 digitos
handles.i=0 %Contador
handles.NUM=[]%Vector que almacena datos antes de operarlos
guidata(hObject,handles)

axes(handles.axes1);
[x,map]=imread('fondo1.jpg');
image(x)
colormap (map);
axis off
hold on


% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CALCULADORAUMG (see VARARGIN)

% Choose default command line output for CALCULADORAUMG
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CALCULADORAUMG wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CALCULADORAUMG_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in CUATRO.
function CUATRO_Callback(hObject, eventdata, handles)
handles.i=handles.i+1
if handles.i<=12
    handles.memoria(handles.i)={'4'}
    handles.Text = num2str(cell2mat(handles.memoria(1:handles.i)))
end
set(handles.RESULTADO, 'String',handles.Text);
guidata(hObject,handles);
% hObject    handle to CUATRO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in UNO.
function UNO_Callback(hObject, eventdata, handles)
handles.i=handles.i+1
if handles.i<=12
    handles.memoria(handles.i)={'1'}
    handles.Text = num2str(cell2mat(handles.memoria(1:handles.i)))
end
set(handles.RESULTADO, 'String',handles.Text);
guidata(hObject,handles);

% hObject    handle to UNO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in CERO.
function CERO_Callback(hObject, eventdata, handles)
handles.i=handles.i+1
if handles.i<=12
    handles.memoria(handles.i)={'0'}
    handles.Text = num2str(cell2mat(handles.memoria(1:handles.i)))
end
set(handles.RESULTADO, 'String',handles.Text);
guidata(hObject,handles);

% hObject    handle to CERO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in CINCO.
function CINCO_Callback(hObject, eventdata, handles)
handles.i=handles.i+1
if handles.i<=12
    handles.memoria(handles.i)={'5'}
    handles.Text = num2str(cell2mat(handles.memoria(1:handles.i)))
end
set(handles.RESULTADO, 'String',handles.Text);
guidata(hObject,handles);
% hObject    handle to CINCO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in DOS.
function DOS_Callback(hObject, eventdata, handles)
handles.i=handles.i+1
if handles.i<=12
    handles.memoria(handles.i)={'2'}
    handles.Text = num2str(cell2mat(handles.memoria(1:handles.i)))
end
set(handles.RESULTADO, 'String',handles.Text);
guidata(hObject,handles);
% hObject    handle to DOS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PUNTO.
function PUNTO_Callback(hObject, eventdata, handles)
handles.i=handles.i+1
if handles.i<=12
    handles.memoria(handles.i)={'.'}
    handles.Text = num2str(cell2mat(handles.memoria(1:handles.i)))
end
set(handles.RESULTADO, 'String',handles.Text);
guidata(hObject,handles);
% hObject    handle to PUNTO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SEIS.
function SEIS_Callback(hObject, eventdata, handles)
handles.i=handles.i+1
if handles.i<=12
    handles.memoria(handles.i)={'6'}
    handles.Text = num2str(cell2mat(handles.memoria(1:handles.i)))
end
set(handles.RESULTADO, 'String',handles.Text);
guidata(hObject,handles);
% hObject    handle to SEIS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in TRES.
function TRES_Callback(hObject, eventdata, handles)
handles.i=handles.i+1
if handles.i<=12
    handles.memoria(handles.i)={'3'}
    handles.Text = num2str(cell2mat(handles.memoria(1:handles.i)))
end
set(handles.RESULTADO, 'String',handles.Text);
guidata(hObject,handles);
% hObject    handle to TRES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in IGUAL.
function IGUAL_Callback(hObject, eventdata, handles)
if(handles.operacion==1)%Suma
    handles.R=handles.NUM+str2double(handles.Text)
    set (handles.RESULTADO,'String',handles.R)
elseif(handles.operacion==2)%Resta
    handles.R=handles.NUM-str2double(handles.Text)
     set (handles.RESULTADO,'String',handles.R)
elseif(handles.operacion==3)%Multiplicacion
    handles.R=handles.NUM*str2double(handles.Text)
     set (handles.RESULTADO,'String',handles.R)
elseif(handles.operacion==4)%Divicion
    handles.R=handles.NUM/str2double(handles.Text)
     set (handles.RESULTADO,'String',handles.R)
elseif(handles.operacion==5)%Porcentaje
    handles.R=handles.NUM*str2double(handles.Text)/100
     set (handles.RESULTADO,'String',handles.R)
     end
guidata(hObject,handles)


% hObject    handle to IGUAL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in MENOS.
function MENOS_Callback(hObject, eventdata, handles)
handles.NUM=str2double(get(handles.RESULTADO,'String'))
set(handles.RESULTADO,'String','')
handles.memoria=num2cell(zeros(1,12))
handles.i=0;
handles.operacion=2
guidata(hObject,handles);

% hObject    handle to MENOS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in MAS.
function MAS_Callback(hObject, eventdata, handles)
handles.NUM=str2double(get(handles.RESULTADO,'String'))
set(handles.RESULTADO,'String','')
handles.memoria=num2cell(zeros(1,12))
handles.i=0;
handles.operacion=1
guidata(hObject,handles)

% hObject    handle to MAS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SIETE.
function SIETE_Callback(hObject, eventdata, handles)
handles.i=handles.i+1
if handles.i<=12
    handles.memoria(handles.i)={'7'}
    handles.Text = num2str(cell2mat(handles.memoria(1:handles.i)))
end
set(handles.RESULTADO, 'String',handles.Text);
guidata(hObject,handles);
% hObject    handle to SIETE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in OCHO.
function OCHO_Callback(hObject, eventdata, handles)
handles.i=handles.i+1
if handles.i<=12
    handles.memoria(handles.i)={'8'}
    handles.Text = num2str(cell2mat(handles.memoria(1:handles.i)))
end
set(handles.RESULTADO, 'String',handles.Text);
guidata(hObject,handles);
% hObject    handle to OCHO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in NUEVE.
function NUEVE_Callback(hObject, eventdata, handles)
handles.i=handles.i+1
if handles.i<=12
    handles.memoria(handles.i)={'9'}
    handles.Text = num2str(cell2mat(handles.memoria(1:handles.i)))
end
set(handles.RESULTADO, 'String',handles.Text);
guidata(hObject,handles);
% hObject    handle to NUEVE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in MULTIPLICAR.
function MULTIPLICAR_Callback(hObject, eventdata, handles)
handles.NUM=str2double(get(handles.RESULTADO,'String'))
set(handles.RESULTADO,'String','')
handles.memoria=num2cell(zeros(1,12))
handles.i=0;
handles.operacion=3
guidata(hObject,handles);
% hObject    handle to MULTIPLICAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BORRAR.
function BORRAR_Callback(hObject, eventdata, handles)
set(handles.RESULTADO,'String','')
handles.memoria=num2cell(zeros(1,12))
handles.i=0
guidata(hObject,handles)
% hObject    handle to BORRAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PORCIENTO.
function PORCIENTO_Callback(hObject, eventdata, handles)
handles.NUM=str2double(get(handles.RESULTADO,'String'))
set(handles.RESULTADO,'String','')
handles.memoria=num2cell(zeros(1,12))
handles.i=0;
handles.operacion=5
guidata(hObject,handles);
% hObject    handle to PORCIENTO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in RAIZ.
function RAIZ_Callback(hObject, eventdata, handles)
handles.NUM=str2double(get(handles.RESULTADO,'String'))
handles.memoria=num2cell(zeros(1,12))
handles.i=0;
handles.R=sqrt(handles.NUM)
set(handles.RESULTADO,'String',handles.R)
guidata(hObject,handles)

% hObject    handle to RAIZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in DIVIDIR.
function DIVIDIR_Callback(hObject, eventdata, handles)
handles.NUM=str2double(get(handles.RESULTADO,'String'))
set(handles.RESULTADO,'String','')
handles.memoria=num2cell(zeros(1,12))
handles.i=0;
handles.operacion=4
guidata(hObject,handles);
% hObject    handle to DIVIDIR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ABRIRCIENTIIFICA.
function ABRIRCIENTIIFICA_Callback(hObject, eventdata, handles)
Cientifica
close(CALCULADORAUMG)
% hObject    handle to ABRIRCIENTIIFICA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
