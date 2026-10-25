require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72283 = class("Quest72283", QuestActorProxy)
Quest72283.defaultAlias = "Quest72283"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72283:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72283:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7228301"] = self.OnSubStart7228301,
        ["7228302"] = self.OnSubStart7228302,
        ["7228303"] = self.OnSubStart7228303
    }
end

function Quest72283:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7228301"] = self.OnSubFinish7228301,
        ["7228302"] = self.OnSubFinish7228302,
        ["7228303"] = self.OnSubFinish7228303
    }
end

function Quest72283:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72283:Start()
    print("Start")
end

function Quest72283:OnDestroy()
    print("OnDestroy")
end

function Quest72283:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72283:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72283:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72283:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72283:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest72283:OnSubStart7228301(arg1)
    print("OnSubStart7228301")
    self:NpcCreate(arg1, npcs.NPC20345Data.id, 1)
end

function Quest72283:OnSubFinish7228301(arg1)
    print("OnSubFinish7228301")
end

function Quest72283:OnSubStart7228302(arg1)
    print("OnSubStart7228302")
end

function Quest72283:OnSubFinish7228302(arg1)
    print("OnSubFinish7228302")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest72283:OnSubStart7228303(arg1)
    print("OnSubStart7228303")
end

function Quest72283:OnSubFinish7228303(arg1)
    print("OnSubFinish7228303")
    self:NpcDestroyWithDither(npcs.NPC20345Data.alias, 5)
end

return Quest72283
