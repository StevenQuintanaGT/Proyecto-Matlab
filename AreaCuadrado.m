function varargout = AreaCuadrado(varargin)
% AREACUADRADO MATLAB code for AreaCuadrado.fig
%      AREACUADRADO, by itself, creates a new AREACUADRADO or raises the existing
%      singleton*.
%
%      H = AREACUADRADO returns the handle to a new AREACUADRADO or the handle to
%      the existing singleton*.
%
%      AREACUADRADO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AREACUADRADO.M with the given input arguments.
%
%      AREACUADRADO('Property','Value',...) creates a new AREACUADRADO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AreaCuadrado_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AreaCuadrado_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AreaCuadrado

% Last Modified by GUIDE v2.5 09-Jun-2021 21:59:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AreaCuadrado_OpeningFcn, ...
                   'gui_OutputFcn',  @AreaCuadrado_OutputFcn, ...
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


% --- Executes just before AreaCuadrado is made visible.
function AreaCuadrado_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AreaCuadrado (see VARARGIN)

% Choose default command line output for AreaCuadrado
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AreaCuadrado wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AreaCuadrado_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in calcular.
function calcular_Callback(hObject, eventdata, handles)
 a=str2num(get(handles.lado,'string'));
         A=a^2;
         set(handles.resultado,'string',A);
         set(handles.txtMedida,'Visible','on');


% hObject    handle to calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function lado_Callback(hObject, eventdata, handles)
% hObject    handle to lado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lado as text
%        str2double(get(hObject,'String')) returns contents of lado as a double


% --- Executes during object creation, after setting all properties.
function lado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close(AreaCuadrado)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
