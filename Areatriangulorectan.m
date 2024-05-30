function varargout = Areatriangulorectan(varargin)
% AREATRIANGULORECTAN MATLAB code for Areatriangulorectan.fig
%      AREATRIANGULORECTAN, by itself, creates a new AREATRIANGULORECTAN or raises the existing
%      singleton*.
%
%      H = AREATRIANGULORECTAN returns the handle to a new AREATRIANGULORECTAN or the handle to
%      the existing singleton*.
%
%      AREATRIANGULORECTAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AREATRIANGULORECTAN.M with the given input arguments.
%
%      AREATRIANGULORECTAN('Property','Value',...) creates a new AREATRIANGULORECTAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Areatriangulorectan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Areatriangulorectan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Areatriangulorectan

% Last Modified by GUIDE v2.5 09-Jun-2021 22:21:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Areatriangulorectan_OpeningFcn, ...
                   'gui_OutputFcn',  @Areatriangulorectan_OutputFcn, ...
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


% --- Executes just before Areatriangulorectan is made visible.
function Areatriangulorectan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Areatriangulorectan (see VARARGIN)

% Choose default command line output for Areatriangulorectan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Areatriangulorectan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Areatriangulorectan_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function base_Callback(hObject, eventdata, handles)
% hObject    handle to base (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of base as text
%        str2double(get(hObject,'String')) returns contents of base as a double


% --- Executes during object creation, after setting all properties.
function base_CreateFcn(hObject, eventdata, handles)
% hObject    handle to base (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function altura_Callback(hObject, eventdata, handles)
% hObject    handle to altura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of altura as text
%        str2double(get(hObject,'String')) returns contents of altura as a double


% --- Executes during object creation, after setting all properties.
function altura_CreateFcn(hObject, eventdata, handles)
% hObject    handle to altura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Calcular.
function Calcular_Callback(hObject, eventdata, handles)
Altura=eval(get(handles.altura,'String'));
Base=eval(get(handles.base,'String'));
Total=(Base*Altura)/2;

set(handles.resultado,'String',Total);
set(handles.txtMedida,'Visible','on');
% hObject    handle to Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)

option=get(handles.popupmenu1,'value');
switch (option)
    case 1
    case 2
         
        set(handles.txtMedida,'string','Mms²');
    case 3
       set(handles.txtMedida,'string','Cms²');
    case 4
        set(handles.txtMedida,'string','Mts²');
    case 5
        set(handles.txtMedida,'string','Kms²');
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


end
