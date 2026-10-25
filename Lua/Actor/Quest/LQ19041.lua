require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19041 = class("Quest19041", QuestActorProxy)
Quest19041.defaultAlias = "Quest19041"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19041:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19041:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1904101"] = self.OnSubStart1904101}
end

function Quest19041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1904101"] = self.OnSubFinish1904101}
end

function Quest19041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1904101"] = self.OnSubFailed1904101}
end

function Quest19041:Start()
    print("Start")
end

function Quest19041:OnDestroy()
    print("OnDestroy")
end

function Quest19041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19041:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc1024Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19041Trigger_.alias, 3, false)
end

function Quest19041:OnSubStart1904101(arg1)
    print("OnSubStart1904101")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904101)
    self:SetNavigationByMainId(19041, true)
    actorMgr:CreateActorWithPos(datas.Q19041Trigger_.alias, datas.Q19041Trigger_.script, datas.Q19041Trigger_.id, 1, datas.Q19041Trigger_.point.pos, datas.Q19041Trigger_.point.rot, true, false, 3)
end

function Quest19041:OnSubFinish1904101(arg1)
    print("OnSubFinish1904101")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19041Trigger_.alias, 3, false)
end

function Quest19041:OnSubFailed1904101(arg1)
    print("OnSubFailed1904101")
end

return Quest19041
