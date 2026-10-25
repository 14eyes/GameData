require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11114 = class("Quest11114", QuestActorProxy)
Quest11114.defaultAlias = "Quest11114"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11114:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11114:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1111401"] = self.OnSubStart1111401}
end

function Quest11114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1111401"] = self.OnSubFinish1111401}
end

function Quest11114:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1111401"] = self.OnSubFailed1111401}
end

function Quest11114:Start()
    print("Start")
end

function Quest11114:OnDestroy()
    print("OnDestroy")
end

function Quest11114:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11114:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11114:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11114:OnSubStart1111401(arg1)
    print("OnSubStart1111401")
    self:CreateQuestNpc(arg1, npcs.Npc10343Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q11114Trigger_.alias, datas.Q11114Trigger_.script, datas.Q11114Trigger_.id, 0, datas.Q11114Trigger_.point.pos, datas.Q11114Trigger_.point.rot, true, false, 3)
end

function Quest11114:OnSubFinish1111401(arg1)
    print("OnSubFinish1111401")
    self:SafeDestroyQuestNpc(npcs.Npc10343Data.alias, 3)
end

function Quest11114:OnSubFailed1111401(arg1)
    print("OnSubFailed1111401")
end

return Quest11114
