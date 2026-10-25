require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73144 = class("Quest73144", QuestActorProxy)
Quest73144.defaultAlias = "Quest73144"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73144:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73144:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7314401"] = self.OnSubStart7314401,
        ["7314402"] = self.OnSubStart7314402,
        ["7314403"] = self.OnSubStart7314403
    }
end

function Quest73144:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7314401"] = self.OnSubFinish7314401,
        ["7314402"] = self.OnSubFinish7314402,
        ["7314403"] = self.OnSubFinish7314403
    }
end

function Quest73144:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73144:Start()
    print("Start")
end

function Quest73144:OnDestroy()
    print("OnDestroy")
end

function Quest73144:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73144:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73144:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73144:OnSubStart7314401(arg1)
    print("OnSubStart7314401")
end

function Quest73144:OnSubFinish7314401(arg1)
    print("OnSubFinish7314401")
end

function Quest73144:OnSubStart7314402(arg1)
    print("OnSubStart7314402")
    self:CreateQuestNpc(arg1, npcs.Npc20684Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20684Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73144:OnSubFinish7314402(arg1)
    print("OnSubFinish7314402")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73144:OnSubStart7314403(arg1)
    print("OnSubStart7314403")
    self:GetQuestNpcActor(npcs.Npc20684Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73144:OnSubFinish7314403(arg1)
    print("OnSubFinish7314403")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20684Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73144
