require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21016 = class("Quest21016", QuestActorProxy)
Quest21016.defaultAlias = "Quest21016"
local clientData
local posData

function Quest21016:OnDataLoaded()
    clientData = self.clientData
    posData = clientData.PosData
end

function Quest21016:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2101601"] = self.OnSubStart2101601
    self.subStartHandlers["2101602"] = self.OnSubStart2101602
    self.subStartHandlers["2101603"] = self.OnSubStart2101603
    self.subStartHandlers["2101604"] = self.OnSubStart2101604
    self.subStartHandlers["2101605"] = self.OnSubStart2101605
    self.subStartHandlers["2101606"] = self.OnSubStart2101606
    self.subStartHandlers["2101607"] = self.OnSubStart2101607
    self.subStartHandlers["2101608"] = self.OnSubStart2101608
    self.subStartHandlers["2101609"] = self.OnSubStart2101609
    self.subStartHandlers["2101610"] = self.OnSubStart2101610
    self.subStartHandlers["2101611"] = self.OnSubStart2101611
    self.subStartHandlers["2101612"] = self.OnSubStart2101612
end

function Quest21016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2101601"] = self.OnSubFinish2101601
    self.subFinishHandlers["2101602"] = self.OnSubFinish2101602
    self.subFinishHandlers["2101603"] = self.OnSubFinish2101603
    self.subFinishHandlers["2101604"] = self.OnSubFinish2101604
    self.subFinishHandlers["2101605"] = self.OnSubFinish2101605
    self.subFinishHandlers["2101606"] = self.OnSubFinish2101606
    self.subFinishHandlers["2101607"] = self.OnSubFinish2101607
    self.subFinishHandlers["2101608"] = self.OnSubFinish2101608
    self.subFinishHandlers["2101609"] = self.OnSubFinish2101609
    self.subFinishHandlers["2101610"] = self.OnSubFinish2101610
    self.subFinishHandlers["2101611"] = self.OnSubFinish2101611
    self.subFinishHandlers["2101612"] = self.OnSubFinish2101612
end

function Quest21016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2101601"] = self.OnSubFailed2101601
    self.subFailedHandlers["2101602"] = self.OnSubFailed2101602
    self.subFailedHandlers["2101603"] = self.OnSubFailed2101603
    self.subFailedHandlers["2101604"] = self.OnSubFailed2101604
    self.subFailedHandlers["2101605"] = self.OnSubFailed2101605
    self.subFailedHandlers["2101606"] = self.OnSubFailed2101606
    self.subFailedHandlers["2101607"] = self.OnSubFailed2101607
    self.subFailedHandlers["2101608"] = self.OnSubFailed2101608
    self.subFailedHandlers["2101609"] = self.OnSubFailed2101609
    self.subFailedHandlers["2101610"] = self.OnSubFailed2101610
    self.subFailedHandlers["2101611"] = self.OnSubFailed2101611
    self.subFailedHandlers["2101612"] = self.OnSubFailed2101612
end

function Quest21016:TransmitCallback(arg1)
    self:CallDelay(1, self.StartCount)
end

function Quest21016:StartCount()
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, self.CountDown)
end

function Quest21016:CountDown()
    self:EnablePlayerInput(true)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest21016:FinishTransmit()
    self:CallDelay(3, self.Transmit)
end

function Quest21016:FailTransmit()
    self:CallDelay(3, self.Transmit)
end

function Quest21016:Transmit()
    self:TransmitPlayerWithTextById(quest, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
end

function Quest21016:OnSubStart2101601(arg1) end
function Quest21016:OnSubFinish2101601(arg1) end
function Quest21016:OnSubFailed2101601(arg1) end
function Quest21016:OnSubStart2101602(arg1) end

function Quest21016:OnSubFinish2101602(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2101602, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21016:OnSubFailed2101602(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2101602, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21016:OnSubStart2101604(arg1) end

function Quest21016:OnSubFinish2101604(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2101604, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21016:OnSubFailed2101604(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2101604, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21016:OnSubStart2101606(arg1) end

function Quest21016:OnSubFinish2101606(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2101606, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21016:OnSubFailed2101606(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2101606, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21016:OnSubStart2101608(arg1) end

function Quest21016:OnSubFinish2101608(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2101608, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21016:OnSubFailed2101608(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2101608, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21016:OnSubStart2101609(arg1)
    self.EnablePlayerInput(self, false)
    self.CallDelay(self, 2, function()
        self:TransmitPlayerByQuestId(2101609, 1, self.TransmitCallback)
    end)
end

function Quest21016:OnSubStart2101610(arg1)
    self.EnablePlayerInput(self, false)
    self.CallDelay(self, 2, function()
        self:TransmitPlayerByQuestId(2101610, 1, self.TransmitCallback)
    end)
end

function Quest21016:OnSubStart2101611(arg1)
    self.EnablePlayerInput(self, false)
    self.CallDelay(self, 2, function()
        self:TransmitPlayerByQuestId(2101611, 1, self.TransmitCallback)
    end)
end

function Quest21016:OnSubStart2101612(arg1)
    self.EnablePlayerInput(self, false)
    self.CallDelay(self, 2, function()
        self:TransmitPlayerByQuestId(2101612, 1, self.TransmitCallback)
    end)
end

function Quest21016:Start() end
function Quest21016:OnDestroy() end
return Quest21016
