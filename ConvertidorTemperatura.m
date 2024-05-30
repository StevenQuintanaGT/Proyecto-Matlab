function varargout = ConvertidorTemperatura(varargin)
% CONVERTIDORTEMPERATURA MATLAB code for ConvertidorTemperatura.fig
%      CONVERTIDORTEMPERATURA, by itself, creates a new CONVERTIDORTEMPERATURA or raises the existing
%      singleton*.
%
%      H = CONVERTIDORTEMPERATURA returns the handle to a new CONVERTIDORTEMPERATURA or the handle to
%      the existing singleton*.
%
%      CONVERTIDORTEMPERATURA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONVERTIDORTEMPERATURA.M with the given input arguments.
%
%      CONVERTIDORTEMPERATURA('Property','Value',...) creates a new CONVERTIDORTEMPERATURA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ConvertidorTemperatura_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ConvertidorTemperatura_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ConvertidorTemperatura

% Last Modified by GUIDE v2.5 01-Jun-2021 19:11:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ConvertidorTemperatura_OpeningFcn, ...
                   'gui_OutputFcn',  @ConvertidorTemperatura_OutputFcn, ...
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


% --- Executes just before ConvertidorTemperatura is made visible.
function ConvertidorTemperatura_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ConvertidorTemperatura (see VARARGIN)

% Choose default command line output for ConvertidorTemperatura
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ConvertidorTemperatura wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ConvertidorTemperatura_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function TxtCelcius_Callback(hObject, eventdata, handles)
% hObject    handle to TxtCelcius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TxtCelcius as text
%        str2double(get(hObject,'String')) returns contents of TxtCelcius as a double


% --- Executes during object creation, after setting all properties.
function TxtCelcius_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TxtCelcius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TxtKelvin_Callback(hObject, eventdata, handles)
% hObject    handle to TxtKelvin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TxtKelvin as text
%        str2double(get(hObject,'String')) returns contents of TxtKelvin as a double


% --- Executes during object creation, after setting all properties.
function TxtKelvin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TxtKelvin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TxtFarenheit_Callback(hObject, eventdata, handles)
% hObject    handle to TxtFarenheit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TxtFarenheit as text
%        str2double(get(hObject,'String')) returns contents of TxtFarenheit as a double


% --- Executes during object creation, after setting all properties.
function TxtFarenheit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TxtFarenheit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Btncalcular.
function Btncalcular_Callback(hObject, eventdata, handles)
micelcius=eval(get(handles.TxtCelcius,'String'));
mikelvin=micelcius+273.15;
mifarenheit=1.8*micelcius+32;

set(handles.TxtKelvin,'String',mikelvin);
set(handles.TxtFarenheit,'String', mifarenheit);






% --- Executes on button press in btncalcular2.
function btncalcular2_Callback(hObject, eventdata, handles)
mikelvin=eval(get(handles.TxtKelvin,'String'));
mifarenheit=(mikelvin-273.15)*9/5+32;
micelcius=mikelvin-273.15;

set(handles.TxtFarenheit,'String',mifarenheit);
set(handles.TxtCelcius,'String',micelcius);


% --- Executes on button press in btncalcular3.
function btncalcular3_Callback(hObject, eventdata, handles)
mifarenheit=eval(get(handles.TxtFarenheit,'String'));
mikelvin=(mifarenheit-32)*5/9+273.15;
micelcius=(mifarenheit-32)*5/9;

set(handles.TxtKelvin,'String',mikelvin);
set(handles.TxtCelcius,'String',micelcius);


% --- Executes on button press in btnsalir.
function btnsalir_Callback(hObject, eventdata, handles)
close ConvertidorTemperatura



% hObject    handle to btnsalir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
