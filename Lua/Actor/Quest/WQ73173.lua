require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73173 = class("Quest73173", QuestActorProxy)
Quest73173.defaultAlias = "Quest73173"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73173:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73173:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7317301"] = self.OnSubStart7317301,
        ["7317302"] = self.OnSubStart7317302,
        ["7317303"] = self.OnSubStart7317303
    }
end

function Quest73173:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7317301"] = self.OnSubFinish7317301,
        ["7317302"] = self.OnSubFinish7317302,
        ["7317303"] = self.OnSubFinish7317303
    }
end

function Quest73173:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73173:Start()
    print("Start")
end

function Quest73173:OnDestroy()
    print("OnDestroy")
end

function Quest73173:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73173:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73173:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73173:OnSubStart7317301(arg1)
    print("OnSubStart7317301")
end

function Quest73173:OnSubFinish7317301(arg1)
    print("OnSubFinish7317301")
end

function Quest73173:OnSubStart7317302(arg1)
    print("OnSubStart7317302")
    self:CreateQuestNpc(arg1, npcs.Npc20800Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20800Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73173:OnSubFinish7317302(arg1)
    print("OnSubFinish7317302")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73173:OnSubStart7317303(arg1)
    print("OnSubStart7317303")
    self:GetQuestNpcActor(npcs.Npc20800Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73173:OnSubFinish7317303(arg1)
    print("OnSubFinish7317303")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20800Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73173
