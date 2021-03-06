function varargout = stegnenography(varargin)
% STEGNENOGRAPHY MATLAB code for stegnenography.fig
%      STEGNENOGRAPHY, by itself, creates a new STEGNENOGRAPHY or raises the existing
%      singleton*.
%
%      H = STEGNENOGRAPHY returns the handle to a new STEGNENOGRAPHY or the handle to
%      the existing singleton*.
%
%      STEGNENOGRAPHY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STEGNENOGRAPHY.M with the given input arguments.
%
%      STEGNENOGRAPHY('Property','Value',...) creates a new STEGNENOGRAPHY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before stegnenography_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to stegnenography_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help stegnenography

% Last Modified by GUIDE v2.5 07-Mar-2017 22:16:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @stegnenography_OpeningFcn, ...
                   'gui_OutputFcn',  @stegnenography_OutputFcn, ...
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


% --- Executes just before stegnenography is made visible.
function stegnenography_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to stegnenography (see VARARGIN)

% Choose default command line output for stegnenography
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes stegnenography wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = stegnenography_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in imBut.
function imBut_Callback(hObject, eventdata, handles)
% hObject    handle to imBut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file1,path1]=uigetfile({'*.jpg;*.tif;*.png;*.gif','All Image Files'},'Load Image');
set(handles.text1,'string',strcat(path1,file1));



% --- Executes on button press in fpBut.
function fpBut_Callback(hObject, eventdata, handles)
% hObject    handle to fpBut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file2,path2]=uigetfile({'*.*','All Files'},'Load File');
set(handles.text2,'string',strcat(path2,file2));



% --- Executes on button press in encode.
function encode_Callback(hObject, eventdata, handles)
% hObject    handle to encode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
path1=get(handles.text1,'string');
path2=get(handles.text2,'string');
[file,path] = uiputfile('*.bmp','Save Encoded Image');
stegenographyEncode(path1,path2,strcat(path,file));
set(handles.text3,'string',strcat(path,file));


% --- Executes on button press in decode.
function decode_Callback(hObject, eventdata, handles)
% hObject    handle to decode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file,path]=uigetfile({'*.bmp','Encoded Image File'},'Load Image');
[file1,path1] = uiputfile('*.txt','Save Decoded File');
stegenographyDecode(strcat(path,file),strcat(path1,file1));
set(handles.text4,'string',strcat('Input File : ',path,file));
set(handles.text5,'string',strcat('Output File : ',path1,file1));
