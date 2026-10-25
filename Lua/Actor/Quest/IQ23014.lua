require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23014 = class("Quest23014", QuestActorProxy)
Quest23014.defaultAlias = "Quest23014"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2301401"] = self.OnSubStart2301401,
        ["2301402"] = self.OnSubStart2301402,
        ["2301403"] = self.OnSubStart2301403,
        ["2301404"] = self.OnSubStart2301404
    }
end

function Quest23014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2301401"] = self.OnSubFinish2301401,
        ["2301402"] = self.OnSubFinish2301402,
        ["2301403"] = self.OnSubFinish2301403,
        ["2301404"] = self.OnSubFinish2301404
    }
end

function Quest23014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23014:Start()
    print("Start")
end

function Quest23014:OnDestroy()
    print("OnDestroy")
end

function Quest23014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23014:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

function Quest23014:OnSubStart2301401(arg1)
    print("OnSubStart2301401")
    self:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 2)
end

function Quest23014:OnSubFinish2301401(arg1)
    print("OnSubFinish2301401")
end

function Quest23014:OnSubStart2301402(arg1)
    print("OnSubStart2301402")
    self:GetQuestNpcActor(npcs.Npc20657Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc20658Data.alias):EnableHeadCtrl(false)
end

function Quest23014:OnSubFinish2301402(arg1)
    print("OnSubFinish2301402")
    self:GetQuestNpcActor(npcs.Npc20657Data.alias):EnableHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc20658Data.alias):EnableHeadCtrl(true)
end

function Quest23014:OnSubStart2301403(arg1)
    print("OnSubStart2301403")
end

function Quest23014:OnSubFinish2301403(arg1)
    print("OnSubFinish2301403")
    self:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

function Quest23014:OnSubStart2301404(arg1)
    print("OnSubStart2301404")
end

function Quest23014:OnSubFinish2301404(arg1)
    print("OnSubFinish2301404")
    self:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

return Quest23014
