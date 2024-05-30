function varargout = AreaRectangulo(varargin)
% AREARECTANGULO MATLAB code for AreaRectangulo.fig
%      AREARECTANGULO, by itself, creates a new AREARECTANGULO or raises the existing
%      singleton*.
%
%      H = AREARECTANGULO returns the handle to a new AREARECTANGULO or the handle to
%      the existing singleton*.
%
%      AREARECTANGULO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AREARECTANGULO.M with the given input arguments.
%
%      AREARECTANGULO('Property','Value',...) creates a new AREARECTANGULO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AreaRectangulo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AreaRectangulo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AreaRectangulo

% Last Modified by GUIDE v2.5 09-Jun-2021 21:00:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AreaRectangulo_OpeningFcn, ...
                   'gui_OutputFcn',  @AreaRectangulo_OutputFcn, ...
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


% --- Executes just before AreaRectangulo is made visible.
function AreaRectangulo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AreaRectangulo (see VARARGIN)

% Choose default command line output for AreaRectangulo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AreaRectangulo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AreaRectangulo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Txtbase_Callback(hObject, eventdata, handles)
% hObject    handle to Txtbase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Txtbase as text
%        str2double(get(hObject,'String')) returns contents of Txtbase as a double


% --- Executes during object creation, after setting all properties.
function Txtbase_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Txtbase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Txtaltura_Callback(hObject, eventdata, handles)
% hObject    handle to Txtaltura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Txtaltura as text
%        str2double(get(hObject,'String')) returns contents of Txtaltura as a double


% --- Executes during object creation, after setting all properties.
function Txtaltura_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Txtaltura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

Altura=eval(get(handles.Txtaltura,'String'));
Base=eval(get(handles.Txtbase,'String'));
Total=Base*Altura;

set(handles.Txtcalculo,'String',Total);
set(handles.txtMedida,'Visible','on');





function Txtcalculo_Callback(hObject, eventdata, handles)
% hObject    handle to Txtcalculo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Txtcalculo as text
%        str2double(get(hObject,'String')) returns contents of Txtcalculo as a double


% --- Executes during object creation, after setting all properties.
function Txtcalculo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Txtcalculo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close AreaRectangulo



% hObject    handle to pushbutton2 (see GCBO)
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


% --- Executes during object creation, after setting all properties.

end
