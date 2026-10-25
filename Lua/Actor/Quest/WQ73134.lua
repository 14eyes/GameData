require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73134 = class("Quest73134", QuestActorProxy)
Quest73134.defaultAlias = "Quest73134"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73134:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73134:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7313401"] = self.OnSubStart7313401,
        ["7313402"] = self.OnSubStart7313402,
        ["7313403"] = self.OnSubStart7313403
    }
end

function Quest73134:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7313401"] = self.OnSubFinish7313401,
        ["7313402"] = self.OnSubFinish7313402,
        ["7313403"] = self.OnSubFinish7313403
    }
end

function Quest73134:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73134:Start()
    print("Start")
end

function Quest73134:OnDestroy()
    print("OnDestroy")
end

function Quest73134:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73134:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73134:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73134:OnSubStart7313401(arg1)
    print("OnSubStart7313401")
end

function Quest73134:OnSubFinish7313401(arg1)
    print("OnSubFinish7313401")
end

function Quest73134:OnSubStart7313402(arg1)
    print("OnSubStart7313402")
    self:CreateQuestNpc(arg1, npcs.Npc20674Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20674Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73134:OnSubFinish7313402(arg1)
    print("OnSubFinish7313402")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73134:OnSubStart7313403(arg1)
    print("OnSubStart7313403")
    self:GetQuestNpcActor(npcs.Npc20674Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73134:OnSubFinish7313403(arg1)
    print("OnSubFinish7313403")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20674Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73134
