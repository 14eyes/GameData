require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73140 = class("Quest73140", QuestActorProxy)
Quest73140.defaultAlias = "Quest73140"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73140:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73140:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7314001"] = self.OnSubStart7314001,
        ["7314002"] = self.OnSubStart7314002,
        ["7314003"] = self.OnSubStart7314003
    }
end

function Quest73140:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7314001"] = self.OnSubFinish7314001,
        ["7314002"] = self.OnSubFinish7314002,
        ["7314003"] = self.OnSubFinish7314003
    }
end

function Quest73140:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73140:Start()
    print("Start")
end

function Quest73140:OnDestroy()
    print("OnDestroy")
end

function Quest73140:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73140:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73140:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73140:OnSubStart7314001(arg1)
    print("OnSubStart7314001")
end

function Quest73140:OnSubFinish7314001(arg1)
    print("OnSubFinish7314001")
end

function Quest73140:OnSubStart7314002(arg1)
    print("OnSubStart7314002")
    self:CreateQuestNpc(arg1, npcs.Npc20680Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20680Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73140:OnSubFinish7314002(arg1)
    print("OnSubFinish7314002")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73140:OnSubStart7314003(arg1)
    print("OnSubStart7314003")
    self:GetQuestNpcActor(npcs.Npc20680Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73140:OnSubFinish7314003(arg1)
    print("OnSubFinish7314003")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20680Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73140
