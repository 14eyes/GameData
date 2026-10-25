require("Actor/ActorCommon")
local ConfigNpcActorProxy = require("Actor/Npc/ConfigNpcActorProxy")

local BaseDailyNpc = class("BaseDailyNpc", ConfigNpcActorProxy)
BaseDailyNpc.OnCollisionEnter = nil
BaseDailyNpc.OnEvent = nil
BaseDailyNpc.StartDay = nil

function BaseDailyNpc:CallStartDay()
    if self.StartDay ~= nil then
        self:StartDay()
    end
end

BaseDailyNpc.StartNight = nil

function BaseDailyNpc:CallStartNight()
    if self.StartNight ~= nil then
        self:StartNight()
    end
end

BaseDailyNpc.HourBehave = nil

function BaseDailyNpc:RegisterDailyHandler()
    if self.OnCollisionEnter ~= nil then
        self:CallOnCollisionEnter(self.OnCollisionEnter)
    end

    if self.OnEvent ~= nil then
        self:RegisterActorEvent(self.OnEvent)
    end

    if self.StartDay ~= nil then
        self:RegisterSelfDayTime(self.StartDay)
    end

    if self.StartNight ~= nil then
        self:RegisterSelfNightTime(self.StartNight)
    end

    if self.HourBehave ~= nil then
        self:RegisterSelfHour(self.HourBehave)
    end
end

function BaseDailyNpc:UnregisterDailyHandler()
    if self.OnCollisionEnter ~= nil then
        self:ClearOnCollisionEnter(self.OnCollisionEnter)
    end

    if self.StartDay ~= nil then
        self:UnregisterSelfDayTime(self.StartDay)
    end

    if self.StartNight ~= nil then
        self:UnregisterSelfNightTime(self.StartNight)
    end

    if self.HourBehave ~= nil then
        self:UnregisterSelfHour(self.HourBehave)
    end
end

function BaseDailyNpc:DoAppear()
    self:ShowSelf()
    self:PerformDither(true, 2)
end

function BaseDailyNpc:DoDisappear()
    self:PerformDither(false, 2, self.HideSelf)
end

BaseDailyNpc.modeDic = {}

function BaseDailyNpc:RegisterMode(arg1)
    local mode = npcMode:GetMode(arg1)
    if mode ~= nil then
        self.modeDic[arg1] = mode
    end
end

function BaseDailyNpc:OnPreStart()
    self:StartDaily()
end

function BaseDailyNpc:StartDaily()
    self:RegisterDailyHandler()
    if self:GetIsDay() then
        self:CallStartDay()
    else
        self:CallStartNight()
    end
end

function BaseDailyNpc:ResetDaily()
    self:Stop()
    self:UnregisterDailyHandler()
end

function BaseDailyNpc:SwitchMode(arg1)
    local mode = self.modeDic[arg1]
    local defaultAction
    if mode ~= nil then
        defaultAction = mode[self.alias]
        if defaultAction == nil then
            defaultAction = mode.DefaultAction
        end
    end

    if defaultAction ~= nil then
        self:ResetDaily()
        defaultAction(self)
    end
end

return BaseDailyNpc
