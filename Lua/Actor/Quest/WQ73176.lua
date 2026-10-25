require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73176 = class("Quest73176", QuestActorProxy)
Quest73176.defaultAlias = "Quest73176"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73176:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73176:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7317601"] = self.OnSubStart7317601,
        ["7317602"] = self.OnSubStart7317602,
        ["7317603"] = self.OnSubStart7317603
    }
end

function Quest73176:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7317601"] = self.OnSubFinish7317601,
        ["7317602"] = self.OnSubFinish7317602,
        ["7317603"] = self.OnSubFinish7317603
    }
end

function Quest73176:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73176:Start()
    print("Start")
end

function Quest73176:OnDestroy()
    print("OnDestroy")
end

function Quest73176:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73176:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73176:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73176:OnSubStart7317601(arg1)
    print("OnSubStart7317601")
end

function Quest73176:OnSubFinish7317601(arg1)
    print("OnSubFinish7317601")
end

function Quest73176:OnSubStart7317602(arg1)
    print("OnSubStart7317602")
    self:CreateQuestNpc(arg1, npcs.Npc20803Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20803Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73176:OnSubFinish7317602(arg1)
    print("OnSubFinish7317602")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73176:OnSubStart7317603(arg1)
    print("OnSubStart7317603")
    self:GetQuestNpcActor(npcs.Npc20803Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73176:OnSubFinish7317603(arg1)
    print("OnSubFinish7317603")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20803Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73176
