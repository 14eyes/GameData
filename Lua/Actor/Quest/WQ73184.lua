require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73184 = class("Quest73184", QuestActorProxy)
Quest73184.defaultAlias = "Quest73184"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73184:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73184:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7318401"] = self.OnSubStart7318401,
        ["7318402"] = self.OnSubStart7318402,
        ["7318403"] = self.OnSubStart7318403
    }
end

function Quest73184:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7318401"] = self.OnSubFinish7318401,
        ["7318402"] = self.OnSubFinish7318402,
        ["7318403"] = self.OnSubFinish7318403
    }
end

function Quest73184:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73184:Start()
    print("Start")
end

function Quest73184:OnDestroy()
    print("OnDestroy")
end

function Quest73184:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73184:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73184:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73184:OnSubStart7318401(arg1)
    print("OnSubStart7318401")
end

function Quest73184:OnSubFinish7318401(arg1)
    print("OnSubFinish7318401")
end

function Quest73184:OnSubStart7318402(arg1)
    print("OnSubStart7318402")
    self:CreateQuestNpc(arg1, npcs.Npc20811Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20811Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73184:OnSubFinish7318402(arg1)
    print("OnSubFinish7318402")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73184:OnSubStart7318403(arg1)
    print("OnSubStart7318403")
    self:GetQuestNpcActor(npcs.Npc20811Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73184:OnSubFinish7318403(arg1)
    print("OnSubFinish7318403")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20811Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73184
