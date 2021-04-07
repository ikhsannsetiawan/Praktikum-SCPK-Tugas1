function varargout = TahunKabisat(varargin)
% TAHUNKABISAT MATLAB code for TahunKabisat.fig
%      TAHUNKABISAT, by itself, creates a new TAHUNKABISAT or raises the existing
%      singleton*.
%
%      H = TAHUNKABISAT returns the handle to a new TAHUNKABISAT or the handle to
%      the existing singleton*.
%
%      TAHUNKABISAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TAHUNKABISAT.M with the given input arguments.
%
%      TAHUNKABISAT('Property','Value',...) creates a new TAHUNKABISAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TahunKabisat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TahunKabisat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TahunKabisat

% Last Modified by GUIDE v2.5 07-Apr-2021 08:53:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TahunKabisat_OpeningFcn, ...
                   'gui_OutputFcn',  @TahunKabisat_OutputFcn, ...
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


% --- Executes just before TahunKabisat is made visible.
function TahunKabisat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TahunKabisat (see VARARGIN)

% Choose default command line output for TahunKabisat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TahunKabisat wait for user response (see UIRESUME)
% uiwait(handles.judul);


% --- Outputs from this function are returned to the command line.
function varargout = TahunKabisat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function angka_Callback(hObject, eventdata, handles)
% hObject    handle to angka (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angka as text
%        str2double(get(hObject,'String')) returns contents of angka as a double


% --- Executes during object creation, after setting all properties.
function angka_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angka (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tombolCek.
function tombolCek_Callback(hObject, eventdata, handles)
% hObject    handle to tombolCek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
angka = get(handles.angka, 'string');
angka = str2double(angka);
if mod(angka,4)==0
    hasil = 'Tahun Kabisat';
    if mod(angka,100) == 0 && mod(angka,400) == 0
        hasil = 'Tahun Kabisat';
    else
        hasil = 'Tahun Kabisat';
    end
else
    hasil = 'Bukan Tahun Kabisat';
end
set(handles.hasil, 'string', hasil);
