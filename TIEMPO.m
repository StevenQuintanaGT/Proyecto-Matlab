function varargout = TIEMPO(varargin)
% TIEMPO MATLAB code for TIEMPO.fig
%      TIEMPO, by itself, creates a new TIEMPO or raises the existing
%      singleton*.
%
%      H = TIEMPO returns the handle to a new TIEMPO or the handle to
%      the existing singleton*.
%
%      TIEMPO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TIEMPO.M with the given input arguments.
%
%      TIEMPO('Property','Value',...) creates a new TIEMPO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TIEMPO_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TIEMPO_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TIEMPO

% Last Modified by GUIDE v2.5 02-Jun-2021 17:08:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TIEMPO_OpeningFcn, ...
                   'gui_OutputFcn',  @TIEMPO_OutputFcn, ...
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


% --- Executes just before TIEMPO is made visible.
function TIEMPO_OpeningFcn(hObject, eventdata, handles, varargin)


% Choose default command line output for TIEMPO
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TIEMPO wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TIEMPO_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
Val=get(hObject,'string');
NewVal=str2double(Val);
handles.edit1=NewVal;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
Val=get(hObject,'string');
NewVal=str2double(Val);
handles.edit2=NewVal;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
A=handles.edit1;
B=handles.edit2;
 
suma=A/B;
set(handles.text5,'string',suma);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
