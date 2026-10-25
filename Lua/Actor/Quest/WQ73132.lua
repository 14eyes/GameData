require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73132 = class("Quest73132", QuestActorProxy)
Quest73132.defaultAlias = "Quest73132"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73132:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73132:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7313201"] = self.OnSubStart7313201,
        ["7313202"] = self.OnSubStart7313202,
        ["7313203"] = self.OnSubStart7313203
    }
end

function Quest73132:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7313201"] = self.OnSubFinish7313201,
        ["7313202"] = self.OnSubFinish7313202,
        ["7313203"] = self.OnSubFinish7313203
    }
end

function Quest73132:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73132:Start()
    print("Start")
end

function Quest73132:OnDestroy()
    print("OnDestroy")
end

function Quest73132:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73132:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73132:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73132:OnSubStart7313201(arg1)
    print("OnSubStart7313201")
end

function Quest73132:OnSubFinish7313201(arg1)
    print("OnSubFinish7313201")
end

function Quest73132:OnSubStart7313202(arg1)
    print("OnSubStart7313202")
    self:CreateQuestNpc(arg1, npcs.Npc20672Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20672Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73132:OnSubFinish7313202(arg1)
    print("OnSubFinish7313202")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73132:OnSubStart7313203(arg1)
    print("OnSubStart7313203")
    self:GetQuestNpcActor(npcs.Npc20672Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73132:OnSubFinish7313203(arg1)
    print("OnSubFinish7313203")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20672Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73132
