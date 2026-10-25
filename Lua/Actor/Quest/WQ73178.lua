require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73178 = class("Quest73178", QuestActorProxy)
Quest73178.defaultAlias = "Quest73178"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73178:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73178:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7317801"] = self.OnSubStart7317801,
        ["7317802"] = self.OnSubStart7317802,
        ["7317803"] = self.OnSubStart7317803
    }
end

function Quest73178:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7317801"] = self.OnSubFinish7317801,
        ["7317802"] = self.OnSubFinish7317802,
        ["7317803"] = self.OnSubFinish7317803
    }
end

function Quest73178:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73178:Start()
    print("Start")
end

function Quest73178:OnDestroy()
    print("OnDestroy")
end

function Quest73178:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73178:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73178:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73178:OnSubStart7317801(arg1)
    print("OnSubStart7317801")
end

function Quest73178:OnSubFinish7317801(arg1)
    print("OnSubFinish7317801")
end

function Quest73178:OnSubStart7317802(arg1)
    print("OnSubStart7317802")
    self:CreateQuestNpc(arg1, npcs.Npc20805Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20805Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73178:OnSubFinish7317802(arg1)
    print("OnSubFinish7317802")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73178:OnSubStart7317803(arg1)
    print("OnSubStart7317803")
    self:GetQuestNpcActor(npcs.Npc20805Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73178:OnSubFinish7317803(arg1)
    print("OnSubFinish7317803")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20805Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73178
