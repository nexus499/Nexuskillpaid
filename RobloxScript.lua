-- SERVICES
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

-- STATE
local Running = false
local StartTime = os.time()

-- =========================
-- UI
-- =========================

local Screen = Instance.new("ScreenGui")
Screen.Name = "NexusHubPaidKilling"
Screen.Parent = game:GetService("CoreGui")
Screen.ResetOnSpawn = false

local Main = Instance.new("Frame")
Main.Parent = Screen
Main.Size = UDim2.new(0, 180, 0, 150)
Main.Position = UDim2.new(0.5, -90, 0.1, 0)
Main.BackgroundColor3 = Color3.fromRGB(245, 247, 255)

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = Main

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Parent = Main
TitleBar.Size = UDim2.new(1, 0, 0, 28)
TitleBar.BackgroundColor3 = Color3.fromRGB(45, 120, 255)

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = TitleBar

-- Logo
local Logo = Instance.new("ImageLabel")
Logo.Parent = TitleBar
Logo.BackgroundTransparency = 1
Logo.Position = UDim2.new(0, 6, 0, 6)
Logo.Size = UDim2.new(0, 16, 0, 16)
Logo.ScaleType = Enum.ScaleType.Fit
Logo.Image = "rbxassetid://YOUR_ASSET_ID"

-- Title
local Title = Instance.new("TextLabel")
Title.Parent = TitleBar
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 26, 0, 2)
Title.Size = UDim2.new(1, -40, 0, 14)
Title.Font = Enum.Font.Code
Title.Text = "Nexus Hub Paid Killing"
Title.TextSize = 13
Title.TextColor3 = Color3.new(1,1,1)
Title.TextXAlignment = Enum.TextXAlignment.Left

-- Version
local Version = Instance.new("TextLabel")
Version.Parent = TitleBar
Version.BackgroundTransparency = 1
Version.Position = UDim2.new(0, 26, 0, 15)
Version.Size = UDim2.new(1, -40, 0, 10)
Version.Font = Enum.Font.Code
Version.Text = "v1.2"
Version.TextSize = 10
Version.TextColor3 = Color3.fromRGB(210, 230, 255)
Version.TextXAlignment = Enum.TextXAlignment.Left

-- Labels
local Status = Instance.new("TextLabel")
Status.Parent = Main
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0, 8, 0, 36)
Status.Size = UDim2.new(1, -16, 0, 18)
Status.Font = Enum.Font.Code
Status.TextSize = 13
Status.TextColor3 = Color3.fromRGB(30, 30, 30)
Status.TextXAlignment = Enum.TextXAlignment.Left
Status.Text = "status: stopped"

local TimeLabel = Instance.new("TextLabel")
TimeLabel.Parent = Main
TimeLabel.BackgroundTransparency = 1
TimeLabel.Position = UDim2.new(0, 8, 0, 56)
TimeLabel.Size = UDim2.new(1, -16, 0, 18)
TimeLabel.Font = Enum.Font.Code
TimeLabel.TextSize = 13
TimeLabel.TextColor3 = Color3.fromRGB(30, 30, 30)
TimeLabel.TextXAlignment = Enum.TextXAlignment.Left
TimeLabel.Text = "time: 00:00:00"

-- Buttons
local function makeButton(text, pos, color)
    local b = Instance.new("TextButton")
    b.Parent = Main
    b.Size = UDim2.new(0, 78, 0, 20)
    b.Position = pos
    b.Font = Enum.Font.Code
    b.TextSize = 13
    b.Text = text
    b.BackgroundColor3 = color
    b.TextColor3 = Color3.fromRGB(45, 120, 255)

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 8)
    c.Parent = b

    return b
end

local StartButton = makeButton("Start", UDim2.new(0, 8, 0, 100), Color3.fromRGB(230,235,255))
local StopButton  = makeButton("Stop",  UDim2.new(0, 94,0, 100), Color3.fromRGB(255,230,230))

-- =========================
-- LOGIC (SAFE / DISABLED)
-- =========================

StartButton.MouseButton1Click:Connect(function()
    Running = true
    StartTime = os.time()
    Status.Text = "status: running"
end)

StopButton.MouseButton1Click:Connect(function()
    Running = false
    Status.Text = "status: stopped"
end)

RunService.RenderStepped:Connect(function()
    if Running then
        local elapsed = os.time() - StartTime
        TimeLabel.Text = string.format(
            "time: %02d:%02d:%02d",
            elapsed/3600%24,
            elapsed/60%60,
            elapsed%60
        )
    end
end)-- SERVICES
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

-- STATE
local Running = false
local StartTime = os.time()

-- =========================
-- UI
-- =========================

local Screen = Instance.new("ScreenGui")
Screen.Name = "NexusHubPaidKilling"
Screen.Parent = game:GetService("CoreGui")
Screen.ResetOnSpawn = false

local Main = Instance.new("Frame")
Main.Parent = Screen
Main.Size = UDim2.new(0, 180, 0, 150)
Main.Position = UDim2.new(0.5, -90, 0.1, 0)
Main.BackgroundColor3 = Color3.fromRGB(245, 247, 255)

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = Main

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Parent = Main
TitleBar.Size = UDim2.new(1, 0, 0, 28)
TitleBar.BackgroundColor3 = Color3.fromRGB(45, 120, 255)

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = TitleBar

-- Logo
local Logo = Instance.new("ImageLabel")
Logo.Parent = TitleBar
Logo.BackgroundTransparency = 1
Logo.Position = UDim2.new(0, 6, 0, 6)
Logo.Size = UDim2.new(0, 16, 0, 16)
Logo.ScaleType = Enum.ScaleType.Fit
Logo.Image = "rbxassetid://YOUR_ASSET_ID"

-- Title
local Title = Instance.new("TextLabel")
Title.Parent = TitleBar
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 26, 0, 2)
Title.Size = UDim2.new(1, -40, 0, 14)
Title.Font = Enum.Font.Code
Title.Text = "Nexus Hub Paid Killing"
Title.TextSize = 13
Title.TextColor3 = Color3.new(1,1,1)
Title.TextXAlignment = Enum.TextXAlignment.Left

-- Version
local Version = Instance.new("TextLabel")
Version.Parent = TitleBar
Version.BackgroundTransparency = 1
Version.Position = UDim2.new(0, 26, 0, 15)
Version.Size = UDim2.new(1, -40, 0, 10)
Version.Font = Enum.Font.Code
Version.Text = "v1.2"
Version.TextSize = 10
Version.TextColor3 = Color3.fromRGB(210, 230, 255)
Version.TextXAlignment = Enum.TextXAlignment.Left

-- Labels
local Status = Instance.new("TextLabel")
Status.Parent = Main
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0, 8, 0, 36)
Status.Size = UDim2.new(1, -16, 0, 18)
Status.Font = Enum.Font.Code
Status.TextSize = 13
Status.TextColor3 = Color3.fromRGB(30, 30, 30)
Status.TextXAlignment = Enum.TextXAlignment.Left
Status.Text = "status: stopped"

local TimeLabel = Instance.new("TextLabel")
TimeLabel.Parent = Main
TimeLabel.BackgroundTransparency = 1
TimeLabel.Position = UDim2.new(0, 8, 0, 56)
TimeLabel.Size = UDim2.new(1, -16, 0, 18)
TimeLabel.Font = Enum.Font.Code
TimeLabel.TextSize = 13
TimeLabel.TextColor3 = Color3.fromRGB(30, 30, 30)
TimeLabel.TextXAlignment = Enum.TextXAlignment.Left
TimeLabel.Text = "time: 00:00:00"

-- Buttons
local function makeButton(text, pos, color)
    local b = Instance.new("TextButton")
    b.Parent = Main
    b.Size = UDim2.new(0, 78, 0, 20)
    b.Position = pos
    b.Font = Enum.Font.Code
    b.TextSize = 13
    b.Text = text
    b.BackgroundColor3 = color
    b.TextColor3 = Color3.fromRGB(45, 120, 255)

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 8)
    c.Parent = b

    return b
end

local StartButton = makeButton("Start", UDim2.new(0, 8, 0, 100), Color3.fromRGB(230,235,255))
local StopButton  = makeButton("Stop",  UDim2.new(0, 94,0, 100), Color3.fromRGB(255,230,230))

-- =========================
-- LOGIC (SAFE / DISABLED)
-- =========================

StartButton.MouseButton1Click:Connect(function()
    Running = true
    StartTime = os.time()
    Status.Text = "status: running"
end)

StopButton.MouseButton1Click:Connect(function()
    Running = false
    Status.Text = "status: stopped"
end)

RunService.RenderStepped:Connect(function()
    if Running then
        local elapsed = os.time() - StartTime
        TimeLabel.Text = string.format(
            "time: %02d:%02d:%02d",
            elapsed/3600%24,
            elapsed/60%60,
            elapsed%60
        )
    end
end)
