function varargout = Secante(varargin)
% SECANTE MATLAB code for Secante.fig
%      SECANTE, by itself, creates a new SECANTE or raises the existing
%      singleton*.
%
%      H = SECANTE returns the handle to a new SECANTE or the handle to
%      the existing singleton*.
%
%      SECANTE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SECANTE.M with the given input arguments.
%
%      SECANTE('Property','Value',...) creates a new SECANTE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Secante_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Secante_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Secante

% Last Modified by GUIDE v2.5 08-Jun-2021 17:09:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Secante_OpeningFcn, ...
                   'gui_OutputFcn',  @Secante_OutputFcn, ...
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


% --- Executes just before Secante is made visible.
function Secante_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Secante (see VARARGIN)

% Choose default command line output for Secante
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Secante wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Secante_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function funcion_Callback(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of funcion as text
%        str2double(get(hObject,'String')) returns contents of funcion as a double





function valorInferior_Callback(hObject, eventdata, handles)
% hObject    handle to valorInferior (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valorInferior as text
%        str2double(get(hObject,'String')) returns contents of valorInferior as a double




function valorSuperior_Callback(hObject, eventdata, handles)
% hObject    handle to valorSuperior (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valorSuperior as text
%        str2double(get(hObject,'String')) returns contents of valorSuperior as a double





function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double



% --- Executes on selection change in iteraciones.
function iteraciones_Callback(hObject, eventdata, handles)
% hObject    handle to iteraciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns iteraciones contents as cell array
%        contents{get(hObject,'Value')} returns selected item from iteraciones




% --- Executes on button press in ejecutar.
function ejecutar_Callback(hObject, eventdata, handles)



f=get(handles.funcion,'String');
f=inline(f);
x1=str2double(get(handles.valorInferior,'String'));
x2=str2double(get(handles.valorSuperior,'String'));
Error=str2double(get(handles.edit4,'String'));


xlabel('Valores de (x)');
ylabel('Valores de F(x)');



ezplot(f);
grid on
xlabel('Valores de (x)');
ylabel('Valores de F(x)');




a=0;
while abs(x2-x1)>Error    
    x=x2-(((x2-x1)*f(x2))/(f(x2)-f(x1)));
    
    x1=x2;
    x2=x;
    a=a+1;
    Y{a}=x;
   
end
set(handles.raiz,'String',x);
set(handles.iteraciones,'String',Y);





% hObject    handle to ejecutar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
