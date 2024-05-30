function varargout = Biseccion(varargin)
% BISECCION MATLAB code for Biseccion.fig
%      BISECCION, by itself, creates a new BISECCION or raises the existing
%      singleton*.
%
%      H = BISECCION returns the handle to a new BISECCION or the handle to
%      the existing singleton*.
%
%      BISECCION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BISECCION.M with the given input arguments.
%
%      BISECCION('Property','Value',...) creates a new BISECCION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Biseccion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Biseccion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Biseccion

% Last Modified by GUIDE v2.5 27-May-2021 22:47:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Biseccion_OpeningFcn, ...
                   'gui_OutputFcn',  @Biseccion_OutputFcn, ...
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


% --- Executes just before Biseccion is made visible.
function Biseccion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Biseccion (see VARARGIN)

% Choose default command line output for Biseccion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Biseccion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Biseccion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function FUNCION_Callback(hObject, eventdata, handles)
% hObject    handle to FUNCION (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FUNCION as text
%        str2double(get(hObject,'String')) returns contents of FUNCION as a double


% --- Executes during object creation, after setting all properties.
function FUNCION_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FUNCION (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function XA_Callback(hObject, eventdata, handles)
% hObject    handle to XA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of XA as text
%        str2double(get(hObject,'String')) returns contents of XA as a double


% --- Executes during object creation, after setting all properties.
function XA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function XB_Callback(hObject, eventdata, handles)
% hObject    handle to XB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of XB as text
%        str2double(get(hObject,'String')) returns contents of XB as a double


% --- Executes during object creation, after setting all properties.
function XB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NITERACIONES_Callback(hObject, eventdata, handles)
% hObject    handle to NITERACIONES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NITERACIONES as text
%        str2double(get(hObject,'String')) returns contents of NITERACIONES as a double


% --- Executes during object creation, after setting all properties.
function NITERACIONES_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NITERACIONES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CALCULAR.
function CALCULAR_Callback(hObject, eventdata, handles)




f=get(handles.FUNCION,'String');
f=inline(f);
S=str2double(get(handles.XA,'String'));
I=str2double(get(handles.XB,'String'));
n=str2double(get(handles.NITERACIONES,'String'));



xlabel('Valores de (x)');
ylabel('Valores de F(x)');



ezplot(f);
grid on
xlabel('Valores de (x)');
ylabel('Valores de F(x)');





if f(I)*f(S)<0
    x=(I+S)/2;
    
    for k=1:n
        x=(I+S)/2;
         if f(I)*f(x)<0
               S=x;
         else if f(I)*f(x)>0
                I=x;
             else
                 I=S;
             end
            
         end
         
         Y{k}=x; 
        
         set(handles.TXTRAIZ,'String',x);
    end
    set(handles.RAICES,'String',Y);
else
    set(handles.TXTRAIZ,'String','cambie los valores ');
end


% hObject    handle to CALCULAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in RAICES.
function RAICES_Callback(hObject, eventdata, handles)
% hObject    handle to RAICES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns RAICES contents as cell array
%        contents{get(hObject,'Value')} returns selected item from RAICES
