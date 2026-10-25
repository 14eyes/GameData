require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73084 = class("Quest73084", QuestActorProxy)
Quest73084.defaultAlias = "Quest73084"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73084:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73084:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7308418"] = self.OnSubStart7308418,
        ["7308401"] = self.OnSubStart7308401,
        ["7308402"] = self.OnSubStart7308402,
        ["7308403"] = self.OnSubStart7308403,
        ["7308404"] = self.OnSubStart7308404,
        ["7308405"] = self.OnSubStart7308405,
        ["7308406"] = self.OnSubStart7308406,
        ["7308419"] = self.OnSubStart7308419,
        ["7308420"] = self.OnSubStart7308420,
        ["7308407"] = self.OnSubStart7308407,
        ["7308408"] = self.OnSubStart7308408,
        ["7308409"] = self.OnSubStart7308409,
        ["7308410"] = self.OnSubStart7308410,
        ["7308411"] = self.OnSubStart7308411,
        ["7308412"] = self.OnSubStart7308412,
        ["7308413"] = self.OnSubStart7308413,
        ["7308414"] = self.OnSubStart7308414,
        ["7308415"] = self.OnSubStart7308415,
        ["7308416"] = self.OnSubStart7308416,
        ["7308417"] = self.OnSubStart7308417
    }
end

function Quest73084:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7308418"] = self.OnSubFinish7308418,
        ["7308401"] = self.OnSubFinish7308401,
        ["7308402"] = self.OnSubFinish7308402,
        ["7308403"] = self.OnSubFinish7308403,
        ["7308404"] = self.OnSubFinish7308404,
        ["7308405"] = self.OnSubFinish7308405,
        ["7308406"] = self.OnSubFinish7308406,
        ["7308419"] = self.OnSubFinish7308419,
        ["7308420"] = self.OnSubFinish7308420,
        ["7308407"] = self.OnSubFinish7308407,
        ["7308408"] = self.OnSubFinish7308408,
        ["7308409"] = self.OnSubFinish7308409,
        ["7308410"] = self.OnSubFinish7308410,
        ["7308411"] = self.OnSubFinish7308411,
        ["7308412"] = self.OnSubFinish7308412,
        ["7308413"] = self.OnSubFinish7308413,
        ["7308414"] = self.OnSubFinish7308414,
        ["7308415"] = self.OnSubFinish7308415,
        ["7308416"] = self.OnSubFinish7308416,
        ["7308417"] = self.OnSubFinish7308417
    }
end

function Quest73084:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73084:Start()
    print("Start")
end

function Quest73084:OnDestroy()
    print("OnDestroy")
end

function Quest73084:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73084:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73084:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73084:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73084:OnSubStart7308418(arg1)
    print("OnSubStart7308418")
    self:CreateQuestNpc(arg1, npcs.Npc20764Data.id, 1)
end

function Quest73084:OnSubFinish7308418(arg1)
    print("OnSubFinish7308418")
end

function Quest73084:OnSubStart7308401(arg1)
    print("OnSubStart7308401")
    self:CreateQuestNpc(arg1, npcs.Npc20764Data.id, 1)
end

function Quest73084:OnSubFinish7308401(arg1)
    print("OnSubFinish7308401")
end

function Quest73084:OnSubStart7308402(arg1)
    print("OnSubStart7308402")
    self:RequestInteraction(npcs.Npc20764Data.alias)
end

function Quest73084:OnSubFinish7308402(arg1)
    print("OnSubFinish7308402")
end

function Quest73084:OnSubStart7308403(arg1)
    print("OnSubStart7308403")
end

function Quest73084:OnSubFinish7308403(arg1)
    print("OnSubFinish7308403")
end

function Quest73084:OnSubStart7308404(arg1)
    print("OnSubStart7308404")
    actorMgr:CreateActorWithPos("Q7308404Trigger", "Actor/Gadget/Q7308404Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7308404").pos, sceneData:GetDummyPoint(3, "guide_Q7308404").rot, true, false, 3)
end

function Quest73084:OnSubFinish7308404(arg1)
    print("OnSubFinish7308404")
end

function Quest73084:OnSubStart7308405(arg1)
    print("OnSubStart7308405")
end

function Quest73084:OnSubFinish7308405(arg1)
    print("OnSubFinish7308405")
end

function Quest73084:OnSubStart7308406(arg1)
    print("OnSubStart7308406")
    actorMgr:CreateActorWithPos("Q7308406Trigger", "Actor/Gadget/Q7308406Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7308406").pos, sceneData:GetDummyPoint(3, "Q7308406").rot, true, false, 3)
end

function Quest73084:OnSubFinish7308406(arg1)
    print("OnSubFinish7308406")
end

function Quest73084:OnSubStart7308419(arg1)
    print("OnSubStart7308419")
    actorMgr:CreateActorWithPos("Q7308419Trigger", "Actor/Gadget/Q7308419Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7308419").pos, sceneData:GetDummyPoint(3, "Q7308419").rot, true, false, 3)
end

function Quest73084:OnSubFinish7308419(arg1)
    print("OnSubFinish7308419")
end

function Quest73084:OnSubStart7308420(arg1)
    print("OnSubStart7308420")
    actorMgr:CreateActorWithPos("Q7308420Trigger", "Actor/Gadget/Q7308420Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7308420").pos, sceneData:GetDummyPoint(3, "Q7308420").rot, true, false, 3)
end

function Quest73084:OnSubFinish7308420(arg1)
    print("OnSubFinish7308420")
end

function Quest73084:OnSubStart7308407(arg1)
    print("OnSubStart7308407")
    actorMgr:CreateActorWithPos("Q7308407Trigger", "Actor/Gadget/Q7308407Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7308407").pos, sceneData:GetDummyPoint(3, "guide_Q7308407").rot, true, false, 3)
end

function Quest73084:OnSubFinish7308407(arg1)
    print("OnSubFinish7308407")
end

function Quest73084:OnSubStart7308408(arg1)
    print("OnSubStart7308408")
    actorMgr:CreateActorWithPos("Q7308408Trigger", "Actor/Gadget/Q7308408Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7308408").pos, sceneData:GetDummyPoint(3, "guide_Q7308408").rot, true, false, 3)
end

function Quest73084:OnSubFinish7308408(arg1)
    print("OnSubFinish7308408")
end

function Quest73084:OnSubStart7308409(arg1)
    print("OnSubStart7308409")
end

function Quest73084:OnSubFinish7308409(arg1)
    print("OnSubFinish7308409")
end

function Quest73084:OnSubStart7308410(arg1)
    print("OnSubStart7308410")
end

function Quest73084:OnSubFinish7308410(arg1)
    print("OnSubFinish7308410")
end

function Quest73084:OnSubStart7308411(arg1)
    print("OnSubStart7308411")
end

function Quest73084:OnSubFinish7308411(arg1)
    print("OnSubFinish7308411")
end

function Quest73084:OnSubStart7308412(arg1)
    print("OnSubStart7308412")
end

function Quest73084:OnSubFinish7308412(arg1)
    print("OnSubFinish7308412")
end

function Quest73084:OnSubStart7308413(arg1)
    print("OnSubStart7308413")
end

function Quest73084:OnSubFinish7308413(arg1)
    print("OnSubFinish7308413")
end

function Quest73084:OnSubStart7308414(arg1)
    print("OnSubStart7308414")
end

function Quest73084:OnSubFinish7308414(arg1)
    print("OnSubFinish7308414")
end

function Quest73084:OnSubStart7308415(arg1)
    print("OnSubStart7308415")
    actorMgr:CreateActorWithPos("Q7308415Trigger", "Actor/Gadget/Q7308415Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7308415").pos, sceneData:GetDummyPoint(3, "Q7308415").rot, true, false, 3)
end

function Quest73084:OnSubFinish7308415(arg1)
    print("OnSubFinish7308415")
end

function Quest73084:OnSubStart7308416(arg1)
    print("OnSubStart7308416")
end

function Quest73084:OnSubFinish7308416(arg1)
    print("OnSubFinish7308416")
end

function Quest73084:OnSubStart7308417(arg1)
    print("OnSubStart7308417")
end

function Quest73084:OnSubFinish7308417(arg1)
    print("OnSubFinish7308417")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20764Data.alias)
end

return Quest73084
