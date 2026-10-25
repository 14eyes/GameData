require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12019 = class("Quest12019", QuestActorProxy)
Quest12019.defaultAlias = "Quest12019"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest12019:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest12019:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1201901"] = self.OnSubStart1201901}
end

function Quest12019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1201901"] = self.OnSubFinish1201901}
end

function Quest12019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1201901"] = self.OnSubFailed1201901}
end

function Quest12019:Start()
    print("Start")
end

function Quest12019:OnDestroy()
    print("OnDestroy")
end

function Quest12019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12019:OnSubStart1201901(arg1)
    print("OnSubStart1201901")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
    actorMgr:CreateActorWithPos("Q1201901Trigger", "Actor/Gadget/Q1201901Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12015Yaeko1").pos, sceneData:GetDummyPoint(3, "Q12015Yaeko1").rot, true, false, 3)
end

function Quest12019:OnSubFinish1201901(arg1)
    print("OnSubFinish1201901")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
end

function Quest12019:OnSubFailed1201901(arg1)
    print("OnSubFailed1201901")
end

return Quest12019
