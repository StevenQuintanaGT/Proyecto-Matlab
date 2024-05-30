function varargout = Calcular_Perimetro(varargin)
% CALCULAR_PERIMETRO MATLAB code for Calcular_Perimetro.fig
%      CALCULAR_PERIMETRO, by itself, creates a new CALCULAR_PERIMETRO or raises the existing
%      singleton*.
%
%      H = CALCULAR_PERIMETRO returns the handle to a new CALCULAR_PERIMETRO or the handle to
%      the existing singleton*.
%
%      CALCULAR_PERIMETRO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULAR_PERIMETRO.M with the given input arguments.
%
%      CALCULAR_PERIMETRO('Property','Value',...) creates a new CALCULAR_PERIMETRO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Calcular_Perimetro_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Calcular_Perimetro_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Calcular_Perimetro

% Last Modified by GUIDE v2.5 01-Jun-2021 21:05:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calcular_Perimetro_OpeningFcn, ...
                   'gui_OutputFcn',  @Calcular_Perimetro_OutputFcn, ...
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


% --- Executes just before Calcular_Perimetro is made visible.
function Calcular_Perimetro_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Calcular_Perimetro (see VARARGIN)

% Choose default command line output for Calcular_Perimetro
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Calcular_Perimetro wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Calcular_Perimetro_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Txtlado1_Callback(hObject, eventdata, handles)
% hObject    handle to Txtlado1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Txtlado1 as text
%        str2double(get(hObject,'String')) returns contents of Txtlado1 as a double


% --- Executes during object creation, after setting all properties.
function Txtlado1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Txtlado1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Txtlado2_Callback(hObject, eventdata, handles)
% hObject    handle to Txtlado2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Txtlado2 as text
%        str2double(get(hObject,'String')) returns contents of Txtlado2 as a double


% --- Executes during object creation, after setting all properties.
function Txtlado2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Txtlado2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtlado3_Callback(hObject, eventdata, handles)
% hObject    handle to txtlado3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtlado3 as text
%        str2double(get(hObject,'String')) returns contents of txtlado3 as a double


% --- Executes during object creation, after setting all properties.
function txtlado3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtlado3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Txtlado4_Callback(hObject, eventdata, handles)
% hObject    handle to Txtlado4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Txtlado4 as text
%        str2double(get(hObject,'String')) returns contents of Txtlado4 as a double


% --- Executes during object creation, after setting all properties.
function Txtlado4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Txtlado4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
lado1=eval(get(handles.Txtlado1,'String'));
lado2=eval(get(handles.Txtlado2,'String'));
lado3=eval(get(handles.txtlado3,'String'));
lado4=eval(get(handles.Txtlado4,'String'));
total=lado1+lado2+lado3+lado4;

set(handles.Txtresultado,'String',total);






function Txtresultado_Callback(hObject, eventdata, handles)
% hObject    handle to Txtresultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Txtresultado as text
%        str2double(get(hObject,'String')) returns contents of Txtresultado as a double


% --- Executes during object creation, after setting all properties.
function Txtresultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Txtresultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close Calcular_Perimetro




% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
