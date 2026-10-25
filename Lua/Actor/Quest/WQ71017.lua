require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71017 = class("Quest71017", QuestActorProxy)
Quest71017.defaultAlias = "Quest71017"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71017:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7101701"] = self.OnSubStart7101701, ["7101702"] = self.OnSubStart7101702}
end

function Quest71017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7101701"] = self.OnSubFinish7101701, ["7101702"] = self.OnSubFinish7101702}
end

function Quest71017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7101701"] = self.OnSubFailed7101701, ["7101702"] = self.OnSubFailed7101702}
end

function Quest71017:Start()
    print("Start")
end

function Quest71017:OnDestroy()
    print("OnDestroy")
end

function Quest71017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71017:TransPort()
    self:TransmitPlayerByQuestId(7101701, 1, self.Protect, self.BlackScreen)
end

function Quest71017:Protect()
    print("finishiquest")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7101702)
    end
end

function Quest71017:BlackScreen()
    print("BlackScreen")
    self:ShowBlackScreen(0, 3, 0.5, self.Disable, self.Enable, nil, "QUEST_Message_Q71018")
end

function Quest71017:Disable()
    print("Disable")
    self:EnablePlayerInput(false)
end

function Quest71017:Enable()
    print("Enable")
    self:EnablePlayerInput(true)
end

function Quest71017:OnSubStart7101701(arg1)
    print("OnSubStart7101701")
end

function Quest71017:OnSubFinish7101701(arg1)
    print("OnSubFinish7101701")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "QBS_chongzuo").pos, 0, 3, false, false)
end

function Quest71017:OnSubFailed7101701(arg1)
    print("OnSubFailed7101701")
end

function Quest71017:OnSubStart7101702(arg1)
    print("OnSubStart7101702")
    self:CallDelay(3, self.Protect)
    self:Disable()
end

function Quest71017:OnSubFinish7101702(arg1)
    print("OnSubFinish7101702")
    self:Enable()
end

function Quest71017:OnSubFailed7101702(arg1)
    print("OnSubFailed7101702")
end

return Quest71017
