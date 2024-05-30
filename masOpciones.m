function varargout = masOpciones(varargin)
% MASOPCIONES MATLAB code for masOpciones.fig
%      MASOPCIONES, by itself, creates a new MASOPCIONES or raises the existing
%      singleton*.
%
%      H = MASOPCIONES returns the handle to a new MASOPCIONES or the handle to
%      the existing singleton*.
%
%      MASOPCIONES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MASOPCIONES.M with the given input arguments.
%
%      MASOPCIONES('Property','Value',...) creates a new MASOPCIONES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before masOpciones_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to masOpciones_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help masOpciones

% Last Modified by GUIDE v2.5 09-Jun-2021 11:30:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @masOpciones_OpeningFcn, ...
                   'gui_OutputFcn',  @masOpciones_OutputFcn, ...
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


% --- Executes just before masOpciones is made visible.
function masOpciones_OpeningFcn(hObject, eventdata, handles, varargin)


% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to masOpciones (see VARARGIN)

% Choose default command line output for masOpciones
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes masOpciones wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = masOpciones_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)

option=get(handles.popupmenu1,'value');
switch (option)
    case 1
    case 2
         PortadaPrecalculo
    case 3
       PortadaCalculo
    case 4
        PortadaFisica
    case 5
        PortadaEstadistica
    case 6
        PortadaAlgebra
    case 7
        PortadaMetodos
    case 8
        PortadaGeometr      ia
    case 9
        PortadaMateFinanciera
end 

% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.


% --- Executes on button press in CERRAR.
function CERRAR_Callback(hObject, eventdata, handles)
Cientifica
close(masOpciones)
% hObject    handle to CERRAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
