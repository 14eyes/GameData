require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75088 = class("Quest75088", QuestActorProxy)
Quest75088.defaultAlias = "Quest75088"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75088:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75088:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7508803"] = self.OnSubStart7508803,
        ["7508801"] = self.OnSubStart7508801,
        ["7508802"] = self.OnSubStart7508802,
        ["7508804"] = self.OnSubStart7508804
    }
end

function Quest75088:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7508803"] = self.OnSubFinish7508803,
        ["7508801"] = self.OnSubFinish7508801,
        ["7508802"] = self.OnSubFinish7508802,
        ["7508804"] = self.OnSubFinish7508804
    }
end

function Quest75088:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75088:Start()
    print("Start")
end

function Quest75088:OnDestroy()
    print("OnDestroy")
end

function Quest75088:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75088:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75088:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75088:OnSubStart7508803(arg1)
    print("OnSubStart7508803")
    this:CreateQuestNpc(arg1, npcs.Npc6135Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6135Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest75088:OnSubFinish7508803(arg1)
    print("OnSubFinish7508803")
end

function Quest75088:OnSubStart7508801(arg1)
    print("OnSubStart7508801")
    this:CreateQuestNpc(arg1, npcs.Npc6135Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6135Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest75088:OnSubFinish7508801(arg1)
    print("OnSubFinish7508801")
end

function Quest75088:OnSubStart7508802(arg1)
    print("OnSubStart7508802")
    this:CreateQuestNpc(arg1, npcs.Npc6135Data.id, 0, false, 0)
end

function Quest75088:OnSubFinish7508802(arg1)
    print("OnSubFinish7508802")
end

function Quest75088:OnSubStart7508804(arg1)
    print("OnSubStart7508804")
    this:CreateQuestNpc(arg1, npcs.Npc6135Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6135Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest75088:OnSubFinish7508804(arg1)
    print("OnSubFinish7508804")
end

return Quest75088
