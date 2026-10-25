require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79034 = class("Quest79034", QuestActorProxy)
Quest79034.defaultAlias = "Quest79034"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest79034:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79034:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7903401"] = self.OnSubStart7903401, ["7903402"] = self.OnSubStart7903402}
end

function Quest79034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7903401"] = self.OnSubFinish7903401, ["7903402"] = self.OnSubFinish7903402}
end

function Quest79034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79034:Start()
    print("Start")
end

function Quest79034:OnDestroy()
    print("OnDestroy")
end

function Quest79034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79034:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest79034:OnSubStart7903401(arg1)
    print("OnSubStart7903401")
end

function Quest79034:OnSubFinish7903401(arg1)
    print("OnSubFinish7903401")
end

function Quest79034:OnSubStart7903402(arg1)
    print("OnSubStart7903402")
    self:CreateQuestNpc(arg1, npcs.Npc20614Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20641Data.id, 2)
    actorMgr:CreateActorWithPos("Q79034Trigger", "Actor/Gadget/Q79034Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7902537_guide").pos, sceneData:GetDummyPoint(3, "Q7902537_guide").rot, true, false, 3)
end

function Quest79034:OnSubFinish7903402(arg1)
    print("OnSubFinish7903402")
    self:NpcDestroyWithDither(npcs.Npc20614Data.alias, 3)
    self:NpcDestroyWithDither(npcs.Npc20641Data.alias, 3)
end

return Quest79034
