require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11025 = class("Quest11025", QuestActorProxy)
Quest11025.defaultAlias = "Quest11025"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11025:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11025:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1102501"] = self.OnSubStart1102501, ["1102502"] = self.OnSubStart1102502}
end

function Quest11025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1102501"] = self.OnSubFinish1102501, ["1102502"] = self.OnSubFinish1102502}
end

function Quest11025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1102501"] = self.OnSubFailed1102501, ["1102502"] = self.OnSubFailed1102502}
end

function Quest11025:Start()
    print("Start")
end

function Quest11025:OnDestroy()
    print("OnDestroy")
end

function Quest11025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11025:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11025:OnSubStart1102501(arg1)
    print("OnSubStart1102501")
end

function Quest11025:OnSubFinish1102501(arg1)
    print("OnSubFinish1102501")
end

function Quest11025:OnSubFailed1102501(arg1)
    print("OnSubFailed1102501")
end

function Quest11025:OnSubStart1102502(arg1)
    print("OnSubStart1102502")
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q1102502Trigger_.alias, datas.Q1102502Trigger_.script, datas.Q1102502Trigger_.id, 0, datas.Q1102502Trigger_.point.pos, datas.Q1102502Trigger_.point.rot, true, false, 3)
end

function Quest11025:OnSubFinish1102502(arg1)
    print("OnSubFinish1102502")
    self:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 3)
end

function Quest11025:OnSubFailed1102502(arg1)
    print("OnSubFailed1102502")
end

return Quest11025
