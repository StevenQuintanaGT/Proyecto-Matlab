function varargout = IneLine(varargin)
% INELINE MATLAB code for IneLine.fig
%      INELINE, by itself, creates a new INELINE or raises the existing
%      singleton*.
%
%      H = INELINE returns the handle to a new INELINE or the handle to
%      the existing singleton*.
%
%      INELINE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INELINE.M with the given input arguments.
%
%      INELINE('Property','Value',...) creates a new INELINE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before IneLine_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to IneLine_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help IneLine

% Last Modified by GUIDE v2.5 02-Jun-2021 18:13:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @IneLine_OpeningFcn, ...
                   'gui_OutputFcn',  @IneLine_OutputFcn, ...
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


% --- Executes just before IneLine is made visible.
function IneLine_OpeningFcn(hObject, eventdata, handles, varargin)
axis off
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to IneLine (see VARARGIN)

% Choose default command line output for IneLine
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes IneLine wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = IneLine_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function TxtInecua_Callback(hObject, eventdata, handles)
% hObject    handle to TxtInecua (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TxtInecua as text
%        str2double(get(hObject,'String')) returns contents of TxtInecua as a double


% --- Executes during object creation, after setting all properties.
function TxtInecua_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TxtInecua (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function resolver_Callback(hObject, eventdata, handles) 
syms x;
syms y;  
a=eval(get(handles.TxtInecua,'string'));   
c=solve(a,'real', true)
% c.conditions;
%,'returnconditions', true)
set(handles.resultado, 'string', char(c));
    
clc;




% --- Executes on button press in inecuaciones.
function inecuaciones_Callback(hObject, eventdata, handles)

% syms x y;
% a=get(handles.TxtInecua, 'string');
% a=strcat('solve(',a,')')
% set(handles.TxtInecua,'string',a);
 
% hObject    handle to inecuaciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)    


% --- Executes on button press in salir.
function salir_Callback(hObject, eventdata, handles)

% hObject    handle to salir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA).
close salir;
