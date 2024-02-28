--ServerTimer
--Created by Gui_HD(Nova)
local function CreateInstance(cls,props)
    local inst = Instance.new(cls)
    for i,v in pairs(props) do
    inst[i] = v
    end
    return inst
    end
    
    local Clocker = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='Clocker', Parent=game.CoreGui})
    local background = CreateInstance('ImageLabel',{Image='rbxassetid://2851926732',ImageColor3=Color3.new(0.117647, 0.117647, 0.117647),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=0,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(12, 12, 12, 12),Active=false,AnchorPoint=Vector2.new(0.5, 0.5),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.0424528308, 0, 0.0470347628, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 70, 0, 28),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='background',Parent = Clocker})
    local timerlabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Timer',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 70, 0, 13),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='timerlabel',Parent = background})
    local timer = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='0:0:0',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0.535714269, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 70, 0, 13),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='timer',Parent = background})
    
    while wait()do
    local scripttime=game.Workspace.DistributedGameTime
    local seconds = scripttime%60
    local minutes = math.floor(scripttime/60%60)
    local hours = math.floor(scripttime/3600)
    local tempo = string.format("%.0f:%.0f:%.0f", hours ,minutes, seconds)
    timer.Text = tempo
    end