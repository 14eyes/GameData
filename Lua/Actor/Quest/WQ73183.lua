require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73183 = class("Quest73183", QuestActorProxy)
Quest73183.defaultAlias = "Quest73183"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73183:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73183:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7318301"] = self.OnSubStart7318301,
        ["7318302"] = self.OnSubStart7318302,
        ["7318303"] = self.OnSubStart7318303
    }
end

function Quest73183:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7318301"] = self.OnSubFinish7318301,
        ["7318302"] = self.OnSubFinish7318302,
        ["7318303"] = self.OnSubFinish7318303
    }
end

function Quest73183:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73183:Start()
    print("Start")
end

function Quest73183:OnDestroy()
    print("OnDestroy")
end

function Quest73183:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73183:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73183:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73183:OnSubStart7318301(arg1)
    print("OnSubStart7318301")
end

function Quest73183:OnSubFinish7318301(arg1)
    print("OnSubFinish7318301")
end

function Quest73183:OnSubStart7318302(arg1)
    print("OnSubStart7318302")
    self:CreateQuestNpc(arg1, npcs.Npc20810Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20810Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73183:OnSubFinish7318302(arg1)
    print("OnSubFinish7318302")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73183:OnSubStart7318303(arg1)
    print("OnSubStart7318303")
    self:GetQuestNpcActor(npcs.Npc20810Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73183:OnSubFinish7318303(arg1)
    print("OnSubFinish7318303")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20810Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73183
