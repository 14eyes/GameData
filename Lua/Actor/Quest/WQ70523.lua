require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70523 = class("Quest70523", QuestActorProxy)
Quest70523.defaultAlias = "Quest70523"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70523:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70523:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7052301"] = self.OnSubStart7052301,
        ["7052305"] = self.OnSubStart7052305,
        ["7052304"] = self.OnSubStart7052304,
        ["7052302"] = self.OnSubStart7052302,
        ["7052306"] = self.OnSubStart7052306,
        ["7052303"] = self.OnSubStart7052303
    }
end

function Quest70523:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7052301"] = self.OnSubFinish7052301,
        ["7052305"] = self.OnSubFinish7052305,
        ["7052304"] = self.OnSubFinish7052304,
        ["7052302"] = self.OnSubFinish7052302,
        ["7052306"] = self.OnSubFinish7052306,
        ["7052303"] = self.OnSubFinish7052303
    }
end

function Quest70523:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70523:Start()
    print("Start")
end

function Quest70523:OnDestroy()
    print("OnDestroy")
end

function Quest70523:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70523:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70523:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc30239Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30235Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7052305Trigger", 3, false)
end

function Quest70523:OnSubStart7052301(arg1)
    print("OnSubStart7052301")
end

function Quest70523:OnSubFinish7052301(arg1)
    print("OnSubFinish7052301")
end

function Quest70523:OnSubStart7052305(arg1)
    print("OnSubStart7052305")
    self:CreateQuestNpc(arg1, npcs.Npc30239Data.id, 1)
    actorMgr:CreateActorWithPos("Q7052305Trigger", "Actor/Gadget/Q7052305Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7052305_N30239").pos, sceneData:GetDummyPoint(3, "Q7052305_N30239").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc30239Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
end

function Quest70523:OnSubFinish7052305(arg1)
    print("OnSubFinish7052305")
end

function Quest70523:OnSubStart7052304(arg1)
    print("OnSubStart7052304")
end

function Quest70523:OnSubFinish7052304(arg1)
    print("OnSubFinish7052304")
end

function Quest70523:OnSubStart7052302(arg1)
    print("OnSubStart7052302")
    self:CreateQuestNpc(arg1, npcs.Npc30235Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc30235Data.alias):DoFreeStyle(4260, true, nil, true, true, false, false)
end

function Quest70523:OnSubFinish7052302(arg1)
    print("OnSubFinish7052302")
end

function Quest70523:OnSubStart7052306(arg1)
    print("OnSubStart7052306")
end

function Quest70523:OnSubFinish7052306(arg1)
    print("OnSubFinish7052306")
    self:SafeDestroyQuestNpc(npcs.Npc30235Data.alias, 3)
end

function Quest70523:OnSubStart7052303(arg1)
    print("OnSubStart7052303")
end

function Quest70523:OnSubFinish7052303(arg1)
    print("OnSubFinish7052303")
    self:SafeDestroyQuestNpc(npcs.Npc30239Data.alias, 3)
end

return Quest70523
