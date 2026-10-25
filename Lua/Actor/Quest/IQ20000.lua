require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20000 = class("Quest20000", QuestActorProxy)
Quest20000.defaultAlias = "Quest20000"
local clientData
local posData

function Quest20000:OnDataLoaded()
    clientData = self.clientData
    posData = clientData.PosData
end

function Quest20000:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2000001"] = self.OnSubStart2000001
    self.subStartHandlers["2000002"] = self.OnSubStart2000002
    self.subStartHandlers["2000003"] = self.OnSubStart2000003
    self.subStartHandlers["2000004"] = self.OnSubStart2000004
    self.subStartHandlers["2000005"] = self.OnSubStart2000005
    self.subStartHandlers["2000006"] = self.OnSubStart2000006
    self.subStartHandlers["2000007"] = self.OnSubStart2000007
    self.subStartHandlers["2000008"] = self.OnSubStart2000008
    self.subStartHandlers["2000009"] = self.OnSubStart2000009
    self.subStartHandlers["2000010"] = self.OnSubStart2000010
    self.subStartHandlers["2000011"] = self.OnSubStart2000011
    self.subStartHandlers["2000012"] = self.OnSubStart2000012
end

function Quest20000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2000001"] = self.OnSubFinish2000001
    self.subFinishHandlers["2000002"] = self.OnSubFinish2000002
    self.subFinishHandlers["2000003"] = self.OnSubFinish2000003
    self.subFinishHandlers["2000004"] = self.OnSubFinish2000004
    self.subFinishHandlers["2000005"] = self.OnSubFinish2000005
    self.subFinishHandlers["2000006"] = self.OnSubFinish2000006
    self.subFinishHandlers["2000007"] = self.OnSubFinish2000007
    self.subFinishHandlers["2000008"] = self.OnSubFinish2000008
    self.subFinishHandlers["2000009"] = self.OnSubFinish2000009
    self.subFinishHandlers["2000010"] = self.OnSubFinish2000010
    self.subFinishHandlers["2000011"] = self.OnSubFinish2000011
    self.subFinishHandlers["2000012"] = self.OnSubFinish2000012
end

function Quest20000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2000001"] = self.OnSubFailed2000001
    self.subFailedHandlers["2000002"] = self.OnSubFailed2000002
    self.subFailedHandlers["2000003"] = self.OnSubFailed2000003
    self.subFailedHandlers["2000004"] = self.OnSubFailed2000004
    self.subFailedHandlers["2000005"] = self.OnSubFailed2000005
    self.subFailedHandlers["2000006"] = self.OnSubFailed2000006
    self.subFailedHandlers["2000007"] = self.OnSubFailed2000007
    self.subFailedHandlers["2000008"] = self.OnSubFailed2000008
    self.subFailedHandlers["2000009"] = self.OnSubFailed2000009
    self.subFailedHandlers["2000010"] = self.OnSubFailed2000010
    self.subFailedHandlers["2000011"] = self.OnSubFailed2000011
    self.subFailedHandlers["2000012"] = self.OnSubFailed2000012
end

function Quest20000:TransmitCallback(arg1)
    self:CallDelay(1, self.StartCount)
end

function Quest20000:StartCount()
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, self.CountDown)
end

function Quest20000:CountDown()
    self:EnablePlayerInput(true)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest20000:FinishTransmit()
    self:CallDelay(3, self.Transmit)
end

function Quest20000:FailTransmit()
    self:CallDelay(3, self.Transmit)
end

function Quest20000:Transmit()
    self:TransmitPlayerWithTextById(quest, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
end

function Quest20000:OnSubStart2000001(arg1) end
function Quest20000:OnSubFinish2000001(arg1) end
function Quest20000:OnSubFailed2000001(arg1) end
function Quest20000:OnSubStart2000002(arg1) end

function Quest20000:OnSubFinish2000002(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2000002, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest20000:OnSubFailed2000002(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2000002, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest20000:OnSubStart2000004(arg1) end

function Quest20000:OnSubFinish2000004(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2000004, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest20000:OnSubFailed2000004(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2000004, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest20000:OnSubStart2000006(arg1) end

function Quest20000:OnSubFinish2000006(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2000006, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest20000:OnSubFailed2000006(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2000006, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest20000:OnSubStart2000008(arg1) end

function Quest20000:OnSubFinish2000008(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2000008, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest20000:OnSubFailed2000008(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2000008, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest20000:OnSubStart2000009(arg1)
    self.EnablePlayerInput(self, false)
    self.CallDelay(self, 2, function()
        self:TransmitPlayerByQuestId(2000009, 1, self.TransmitCallback)
    end)
end

function Quest20000:OnSubStart2000010(arg1)
    self.EnablePlayerInput(self, false)
    self.CallDelay(self, 2, function()
        self:TransmitPlayerByQuestId(2000010, 1, self.TransmitCallback)
    end)
end

function Quest20000:OnSubStart2000011(arg1)
    self.EnablePlayerInput(self, false)
    self.CallDelay(self, 2, function()
        self:TransmitPlayerByQuestId(2000011, 1, self.TransmitCallback)
    end)
end

function Quest20000:OnSubStart2000012(arg1)
    self.EnablePlayerInput(self, false)
    self.CallDelay(self, 2, function()
        self:TransmitPlayerByQuestId(2000012, 1, self.TransmitCallback)
    end)
end

function Quest20000:Start() end
function Quest20000:OnDestroy() end
return Quest20000
