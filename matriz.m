function varargout = matriz(varargin)
% MATRIZ MATLAB code for matriz.fig
%      MATRIZ, by itself, creates a new MATRIZ or raises the existing
%      singleton*.
%
%      H = MATRIZ returns the handle to a new MATRIZ or the handle to
%      the existing singleton*.
%
%      MATRIZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATRIZ.M with the given input arguments.
%
%      MATRIZ('Property','Value',...) creates a new MATRIZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matriz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matriz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matriz

% Last Modified by GUIDE v2.5 25-May-2022 09:35:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matriz_OpeningFcn, ...
                   'gui_OutputFcn',  @matriz_OutputFcn, ...
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


% --- Executes just before matriz is made visible.
function matriz_OpeningFcn(hObject, eventdata, handles, varargin)
s=imread('hermoso-fondo-acuarela-amarillo-elegante_1055-9879.jpg');
image(s)
axis off
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matriz (see VARARGIN)

% Choose default command line output for matriz
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes matriz wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = matriz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function columna_Callback(hObject, eventdata, handles)
% hObject    handle to columna (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of columna as text
%        str2double(get(hObject,'String')) returns contents of columna as a double


% --- Executes during object creation, after setting all properties.
function columna_CreateFcn(hObject, eventdata, handles)
% hObject    handle to columna (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fila_Callback(hObject, eventdata, handles)
% hObject    handle to fila (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fila as text
%        str2double(get(hObject,'String')) returns contents of fila as a double


% --- Executes during object creation, after setting all properties.
function fila_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fila (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in insertar.
function insertar_Callback(hObject, eventdata, handles)

fila=str2double(get(handles.fila,'String'));
columna=str2double(get(handles.columna,'String'));
tamano=cell(fila,columna);
tamano(:,:)={''};
set(handles.uitable1,'Data',tamano);
set(handles.uitable1,'ColumnEditable',true(1,columna));
% hObject    handle to insertar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in inversa.
function inversa_Callback(hObject, eventdata, handles)
Mat=str2double(get(handles.uitable1,'Data'));
[fila, columna]=size(Mat);
if fila==columna
    i=inv(Mat);
    set(handles.resultado,'String',num2str(i));
else
    set(handles.resultado,'String','');
end
% hObject    handle to inversa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in deter.
function deter_Callback(hObject, eventdata, handles)
Mat=str2double(get(handles.uitable1,'Data'));
[fila, columna]=size(Mat);
if fila==columna
    E=det(Mat);
    set(handles.resultado,'String',num2str(E));
else
    set(handles.resultado,'String','');
end
% hObject    handle to deter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in limpiar.
function limpiar_Callback(hObject, eventdata, handles)
c=char(' ');
set(handles.resultado,'string',c);
%set(handles.uitable1, 'string', s);
set(handles.fila,'string',c);
set(handles.columna,'string',c);
% hObject    handle to limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
