function varargout = IneDiferen(varargin)
% INEDIFEREN MATLAB code for IneDiferen.fig
%      INEDIFEREN, by itself, creates a new INEDIFEREN or raises the existing
%      singleton*.
%
%      H = INEDIFEREN returns the handle to a new INEDIFEREN or the handle to
%      the existing singleton*.
%
%      INEDIFEREN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INEDIFEREN.M with the given input arguments.
%
%      INEDIFEREN('Property','Value',...) creates a new INEDIFEREN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before IneDiferen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to IneDiferen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help IneDiferen

% Last Modified by GUIDE v2.5 25-May-2022 09:23:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @IneDiferen_OpeningFcn, ...
                   'gui_OutputFcn',  @IneDiferen_OutputFcn, ...
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


% --- Executes just before IneDiferen is made visible.
function IneDiferen_OpeningFcn(hObject, eventdata, handles, varargin)

axis off
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to IneDiferen (see VARARGIN)

% Choose default command line output for IneDiferen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes IneDiferen wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = IneDiferen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ecuacion_Callback(hObject, eventdata, handles)
% hObject    handle to ecuacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ecuacion as text
%        str2double(get(hObject,'String')) returns contents of ecuacion as a double


% --- Executes during object creation, after setting all properties.
function ecuacion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ecuacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function condicion_Callback(hObject, eventdata, handles)
% hObject    handle to condicion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of condicion as text
%        str2double(get(hObject,'String')) returns contents of condicion as a double


% --- Executes during object creation, after setting all properties.
function condicion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to condicion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function resulSin_Callback(hObject, eventdata, handles)
% hObject    handle to resulSin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resulSin as text
%        str2double(get(hObject,'String')) returns contents of resulSin as a double


% --- Executes during object creation, after setting all properties.
function resulSin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resulSin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function resulCon_Callback(hObject, eventdata, handles)
% hObject    handle to resulCon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resulCon as text
%        str2double(get(hObject,'String')) returns contents of resulCon as a double


% --- Executes during object creation, after setting all properties.
function resulCon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resulCon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
a=get(handles.ecuacion, 'string');
b=get(handles.condicion, 'string');
syms x y;
if (b=='0')
    c=dsolve(a,'x')
    set(handles.resulSin, 'string', char(c));
else 
    c=dsolve(a,'x')
    set(handles.resulSin, 'string', char(c));
    d=dsolve(a,b,'x')
    set(handles.resulCon, 'string', char(d));
   
end
