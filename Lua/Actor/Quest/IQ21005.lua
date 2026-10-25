require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21005 = class("Quest21005", QuestActorProxy)
Quest21005.defaultAlias = "Quest21005"
local clientData
local posData

function Quest21005:OnDataLoaded()
    clientData = self.clientData
    posData = clientData.PosData
end

function Quest21005:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2100501"] = self.OnSubStart2100501
    self.subStartHandlers["2100502"] = self.OnSubStart2100502
    self.subStartHandlers["2100503"] = self.OnSubStart2100503
    self.subStartHandlers["2100504"] = self.OnSubStart2100504
    self.subStartHandlers["2100505"] = self.OnSubStart2100505
    self.subStartHandlers["2100506"] = self.OnSubStart2100506
    self.subStartHandlers["2100507"] = self.OnSubStart2100507
    self.subStartHandlers["2100508"] = self.OnSubStart2100508
    self.subStartHandlers["2100509"] = self.OnSubStart2100509
    self.subStartHandlers["2100510"] = self.OnSubStart2100510
    self.subStartHandlers["2100511"] = self.OnSubStart2100511
    self.subStartHandlers["2100512"] = self.OnSubStart2100512
end

function Quest21005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2100501"] = self.OnSubFinish2100501
    self.subFinishHandlers["2100502"] = self.OnSubFinish2100502
    self.subFinishHandlers["2100503"] = self.OnSubFinish2100503
    self.subFinishHandlers["2100504"] = self.OnSubFinish2100504
    self.subFinishHandlers["2100505"] = self.OnSubFinish2100505
    self.subFinishHandlers["2100506"] = self.OnSubFinish2100506
    self.subFinishHandlers["2100507"] = self.OnSubFinish2100507
    self.subFinishHandlers["2100508"] = self.OnSubFinish2100508
    self.subFinishHandlers["2100509"] = self.OnSubFinish2100509
    self.subFinishHandlers["2100510"] = self.OnSubFinish2100510
    self.subFinishHandlers["2100511"] = self.OnSubFinish2100511
    self.subFinishHandlers["2100512"] = self.OnSubFinish2100512
end

function Quest21005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2100501"] = self.OnSubFailed2100501
    self.subFailedHandlers["2100502"] = self.OnSubFailed2100502
    self.subFailedHandlers["2100503"] = self.OnSubFailed2100503
    self.subFailedHandlers["2100504"] = self.OnSubFailed2100504
    self.subFailedHandlers["2100505"] = self.OnSubFailed2100505
    self.subFailedHandlers["2100506"] = self.OnSubFailed2100506
    self.subFailedHandlers["2100507"] = self.OnSubFailed2100507
    self.subFailedHandlers["2100508"] = self.OnSubFailed2100508
    self.subFailedHandlers["2100509"] = self.OnSubFailed2100509
    self.subFailedHandlers["2100510"] = self.OnSubFailed2100510
    self.subFailedHandlers["2100511"] = self.OnSubFailed2100511
    self.subFailedHandlers["2100512"] = self.OnSubFailed2100512
end

function Quest21005:On2100501CutSceneFinish()
    self:TransmitPlayer(3, posData.BornPos, posData.BornDir, self.StartCount)
end

function Quest21005:StartTransmit()
    self:EnablePlayerInput(false)
    self:ActionSafeCall(function(arg1)
        arg1.CallDelay(arg1, 0, function()
            arg1:PlayCutsceneIndex(2100501, arg1.On2100501CutSceneFinish)
        end)
    end)
end

function Quest21005:TransmitCallback(arg1)
    self.CallDelay(self, 0, function()
        self:PlayCutsceneIndex(2100501, self.StartCount)
    end)
end

function Quest21005:StartCount()
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, self.CountDown)
end

function Quest21005:CountDown()
    self:EnablePlayerInput(true)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest21005:FinishTransmit()
    self:CallDelay(3, self.Transmit)
end

function Quest21005:FailTransmit()
    self:CallDelay(3, self.Transmit)
end

function Quest21005:Transmit()
    self:TransmitPlayerWithText(3, posData.BornPos, posData.BornDir, {"WORLDQUEST_RACING_MESSAGE"})
end

function Quest21005:OnSubStart2100501(arg1) end
function Quest21005:OnSubFinish2100501(arg1) end
function Quest21005:OnSubFailed2100501(arg1) end
function Quest21005:OnSubStart2100502(arg1) end

function Quest21005:OnSubFinish2100502(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2100502, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21005:OnSubFailed2100502(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2100502, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21005:OnSubStart2100504(arg1) end

function Quest21005:OnSubFinish2100504(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2100504, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21005:OnSubFailed2100504(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2100504, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21005:OnSubStart2100506(arg1) end

function Quest21005:OnSubFinish2100506(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2100506, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21005:OnSubFailed2100506(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2100506, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21005:OnSubStart2100508(arg1) end

function Quest21005:OnSubFinish2100508(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2100508, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21005:OnSubFailed2100508(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(2100508, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest21005:OnSubStart2100509(arg1)
    print("Start2100509--start")
    self:EnablePlayerInput(false)
    self:ActionSafeCall(function(arg1)
        arg1.CallDelay(arg1, 0, function()
            arg1:PlayCutsceneIndex(2100501, function()
                arg1:EnablePlayerInput(false)
                arg1:TransmitPlayerByQuestId(2100509, 1, arg1.StartCount)
            end)
        end)
    end)
end

function Quest21005:OnSubStart2100510(arg1)
    print("Start2100510--start")
    self:EnablePlayerInput(false)
    self:ActionSafeCall(function(arg1)
        arg1.CallDelay(arg1, 0, function()
            arg1:PlayCutsceneIndex(2100501, function()
                arg1:EnablePlayerInput(false)
                arg1:TransmitPlayerByQuestId(2100510, 1, arg1.StartCount)
            end)
        end)
    end)
end

function Quest21005:OnSubStart2100511(arg1)
    print("Start2100511--start")
    self:EnablePlayerInput(false)
    self:ActionSafeCall(function(arg1)
        arg1.CallDelay(arg1, 0, function()
            arg1:PlayCutsceneIndex(2100501, function()
                arg1:EnablePlayerInput(false)
                arg1:TransmitPlayerByQuestId(2100511, 1, arg1.StartCount)
            end)
        end)
    end)
end

function Quest21005:OnSubStart2100512(arg1)
    print("Start2100512--start")
    self:EnablePlayerInput(false)
    self:ActionSafeCall(function(arg1)
        arg1.CallDelay(arg1, 0, function()
            arg1:PlayCutsceneIndex(2100501, function()
                arg1:EnablePlayerInput(false)
                arg1:TransmitPlayerByQuestId(2100512, 1, arg1.StartCount)
            end)
        end)
    end)
end

function Quest21005:Start() end
function Quest21005:OnDestroy() end
return Quest21005
