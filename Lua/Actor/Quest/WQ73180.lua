require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73180 = class("Quest73180", QuestActorProxy)
Quest73180.defaultAlias = "Quest73180"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73180:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73180:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7318001"] = self.OnSubStart7318001,
        ["7318002"] = self.OnSubStart7318002,
        ["7318003"] = self.OnSubStart7318003
    }
end

function Quest73180:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7318001"] = self.OnSubFinish7318001,
        ["7318002"] = self.OnSubFinish7318002,
        ["7318003"] = self.OnSubFinish7318003
    }
end

function Quest73180:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73180:Start()
    print("Start")
end

function Quest73180:OnDestroy()
    print("OnDestroy")
end

function Quest73180:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73180:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73180:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73180:OnSubStart7318001(arg1)
    print("OnSubStart7318001")
end

function Quest73180:OnSubFinish7318001(arg1)
    print("OnSubFinish7318001")
end

function Quest73180:OnSubStart7318002(arg1)
    print("OnSubStart7318002")
    self:CreateQuestNpc(arg1, npcs.Npc20807Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20807Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73180:OnSubFinish7318002(arg1)
    print("OnSubFinish7318002")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73180:OnSubStart7318003(arg1)
    print("OnSubStart7318003")
    self:GetQuestNpcActor(npcs.Npc20807Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73180:OnSubFinish7318003(arg1)
    print("OnSubFinish7318003")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20807Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73180
