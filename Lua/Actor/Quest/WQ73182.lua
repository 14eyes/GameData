require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73182 = class("Quest73182", QuestActorProxy)
Quest73182.defaultAlias = "Quest73182"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73182:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73182:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7318201"] = self.OnSubStart7318201,
        ["7318202"] = self.OnSubStart7318202,
        ["7318203"] = self.OnSubStart7318203
    }
end

function Quest73182:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7318201"] = self.OnSubFinish7318201,
        ["7318202"] = self.OnSubFinish7318202,
        ["7318203"] = self.OnSubFinish7318203
    }
end

function Quest73182:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73182:Start()
    print("Start")
end

function Quest73182:OnDestroy()
    print("OnDestroy")
end

function Quest73182:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73182:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73182:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73182:OnSubStart7318201(arg1)
    print("OnSubStart7318201")
end

function Quest73182:OnSubFinish7318201(arg1)
    print("OnSubFinish7318201")
end

function Quest73182:OnSubStart7318202(arg1)
    print("OnSubStart7318202")
    self:CreateQuestNpc(arg1, npcs.Npc20809Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20809Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73182:OnSubFinish7318202(arg1)
    print("OnSubFinish7318202")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73182:OnSubStart7318203(arg1)
    print("OnSubStart7318203")
    self:GetQuestNpcActor(npcs.Npc20809Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73182:OnSubFinish7318203(arg1)
    print("OnSubFinish7318203")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20809Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73182
