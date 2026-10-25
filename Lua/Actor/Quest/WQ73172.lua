require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73172 = class("Quest73172", QuestActorProxy)
Quest73172.defaultAlias = "Quest73172"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73172:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73172:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7317201"] = self.OnSubStart7317201,
        ["7317202"] = self.OnSubStart7317202,
        ["7317203"] = self.OnSubStart7317203
    }
end

function Quest73172:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7317201"] = self.OnSubFinish7317201,
        ["7317202"] = self.OnSubFinish7317202,
        ["7317203"] = self.OnSubFinish7317203
    }
end

function Quest73172:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73172:Start()
    print("Start")
end

function Quest73172:OnDestroy()
    print("OnDestroy")
end

function Quest73172:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73172:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73172:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73172:OnSubStart7317201(arg1)
    print("OnSubStart7317201")
end

function Quest73172:OnSubFinish7317201(arg1)
    print("OnSubFinish7317201")
end

function Quest73172:OnSubStart7317202(arg1)
    print("OnSubStart7317202")
    self:CreateQuestNpc(arg1, npcs.Npc20799Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20799Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73172:OnSubFinish7317202(arg1)
    print("OnSubFinish7317202")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73172:OnSubStart7317203(arg1)
    print("OnSubStart7317203")
    self:GetQuestNpcActor(npcs.Npc20799Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73172:OnSubFinish7317203(arg1)
    print("OnSubFinish7317203")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20799Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73172
