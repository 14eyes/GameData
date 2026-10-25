require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70672 = class("Quest70672", QuestActorProxy)
Quest70672.defaultAlias = "Quest70672"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70672:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70672:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7067201"] = self.OnSubStart7067201,
        ["7067202"] = self.OnSubStart7067202,
        ["7067204"] = self.OnSubStart7067204,
        ["7067203"] = self.OnSubStart7067203,
        ["7067205"] = self.OnSubStart7067205,
        ["7067206"] = self.OnSubStart7067206
    }
end

function Quest70672:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7067201"] = self.OnSubFinish7067201,
        ["7067202"] = self.OnSubFinish7067202,
        ["7067204"] = self.OnSubFinish7067204,
        ["7067203"] = self.OnSubFinish7067203,
        ["7067205"] = self.OnSubFinish7067205,
        ["7067206"] = self.OnSubFinish7067206
    }
end

function Quest70672:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70672:Start()
    print("Start")
end

function Quest70672:OnDestroy()
    print("OnDestroy")
end

function Quest70672:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70672:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70672:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70672:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7067204)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7067205)
    end
end

function Quest70672:OnSubStart7067201(arg1)
    print("OnSubStart7067201")
    this:CreateQuestNpc(arg1, npcs.Npc13276Data.id, 0)
    if sceneData.currSceneID == 1076 then
        actorUtils.FinishQuestID(false, 7067201)
    end
end

function Quest70672:OnSubFinish7067201(arg1)
    print("OnSubFinish7067201")
end

function Quest70672:OnSubStart7067202(arg1)
    print("OnSubStart7067202")
    actorMgr:CreateActorWithPos("Q70672Trigger", "Actor/Gadget/Q70672Trigger", 70900002, 0, {x = -1.52, y = 0.0, z = 10.171}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1076)
end

function Quest70672:OnSubFinish7067202(arg1)
    print("OnSubFinish7067202")
end

function Quest70672:OnSubStart7067204(arg1)
    print("OnSubStart7067204")
end

function Quest70672:OnSubFinish7067204(arg1)
    print("OnSubFinish7067204")
end

function Quest70672:OnSubStart7067203(arg1)
    print("OnSubStart7067203")
    actorMgr:CreateActorWithPos("Q70672Trigger", "Actor/Gadget/Q70672Trigger", 70900002, 0, {x = -1.52, y = 0.0, z = 10.171}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1076)
end

function Quest70672:OnSubFinish7067203(arg1)
    print("OnSubFinish7067203")
end

function Quest70672:OnSubStart7067205(arg1)
    print("OnSubStart7067205")
end

function Quest70672:OnSubFinish7067205(arg1)
    print("OnSubFinish7067205")
end

function Quest70672:OnSubStart7067206(arg1)
    print("OnSubStart7067206")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc13276Data.alias, 1076)
        actorUtils.FinishQuestID(false, 7067206)
    end)
end

function Quest70672:OnSubFinish7067206(arg1)
    print("OnSubFinish7067206")
end

return Quest70672
