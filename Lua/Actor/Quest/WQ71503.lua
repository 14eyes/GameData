require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71503 = class("Quest71503", QuestActorProxy)
Quest71503.defaultAlias = "Quest71503"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71503:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71503:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7150303"] = self.OnSubStart7150303,
        ["7150301"] = self.OnSubStart7150301,
        ["7150302"] = self.OnSubStart7150302
    }
end

function Quest71503:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7150303"] = self.OnSubFinish7150303,
        ["7150301"] = self.OnSubFinish7150301,
        ["7150302"] = self.OnSubFinish7150302
    }
end

function Quest71503:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71503:Start()
    print("Start")
end

function Quest71503:OnDestroy()
    print("OnDestroy")
end

function Quest71503:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71503:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71503:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71503:OnSubStart7150303(arg1)
    print("OnSubStart7150303")
end

function Quest71503:OnSubFinish7150303(arg1)
    print("OnSubFinish7150303")
end

function Quest71503:OnSubStart7150301(arg1)
    print("OnSubStart7150301")
    self:CreateQuestNpc(arg1, npcs.Npc30181Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc30183Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc30184Data.id, 3)
end

function Quest71503:OnSubFinish7150301(arg1)
    print("OnSubFinish7150301")
    self:SafeDestroyQuestNpc(npcs.Npc30181Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc30183Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc30184Data.alias, 6)
end

function Quest71503:OnSubStart7150302(arg1)
    print("OnSubStart7150302")
end

function Quest71503:OnSubFinish7150302(arg1)
    print("OnSubFinish7150302")
end

return Quest71503
