require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73264 = class("Quest73264", QuestActorProxy)
Quest73264.defaultAlias = "Quest73264"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73264:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73264:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7326422"] = self.OnSubStart7326422,
        ["7326401"] = self.OnSubStart7326401,
        ["7326423"] = self.OnSubStart7326423,
        ["7326424"] = self.OnSubStart7326424,
        ["7326402"] = self.OnSubStart7326402,
        ["7326403"] = self.OnSubStart7326403,
        ["7326404"] = self.OnSubStart7326404,
        ["7326420"] = self.OnSubStart7326420,
        ["7326421"] = self.OnSubStart7326421,
        ["7326405"] = self.OnSubStart7326405,
        ["7326407"] = self.OnSubStart7326407,
        ["7326415"] = self.OnSubStart7326415,
        ["7326408"] = self.OnSubStart7326408,
        ["7326416"] = self.OnSubStart7326416,
        ["7326409"] = self.OnSubStart7326409,
        ["7326410"] = self.OnSubStart7326410,
        ["7326411"] = self.OnSubStart7326411,
        ["7326412"] = self.OnSubStart7326412,
        ["7326417"] = self.OnSubStart7326417,
        ["7326419"] = self.OnSubStart7326419,
        ["7326418"] = self.OnSubStart7326418,
        ["7326425"] = self.OnSubStart7326425,
        ["7326413"] = self.OnSubStart7326413,
        ["7326414"] = self.OnSubStart7326414,
        ["7326406"] = self.OnSubStart7326406
    }
end

function Quest73264:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7326422"] = self.OnSubFinish7326422,
        ["7326401"] = self.OnSubFinish7326401,
        ["7326423"] = self.OnSubFinish7326423,
        ["7326424"] = self.OnSubFinish7326424,
        ["7326402"] = self.OnSubFinish7326402,
        ["7326403"] = self.OnSubFinish7326403,
        ["7326404"] = self.OnSubFinish7326404,
        ["7326420"] = self.OnSubFinish7326420,
        ["7326421"] = self.OnSubFinish7326421,
        ["7326405"] = self.OnSubFinish7326405,
        ["7326407"] = self.OnSubFinish7326407,
        ["7326415"] = self.OnSubFinish7326415,
        ["7326408"] = self.OnSubFinish7326408,
        ["7326416"] = self.OnSubFinish7326416,
        ["7326409"] = self.OnSubFinish7326409,
        ["7326410"] = self.OnSubFinish7326410,
        ["7326411"] = self.OnSubFinish7326411,
        ["7326412"] = self.OnSubFinish7326412,
        ["7326417"] = self.OnSubFinish7326417,
        ["7326419"] = self.OnSubFinish7326419,
        ["7326418"] = self.OnSubFinish7326418,
        ["7326425"] = self.OnSubFinish7326425,
        ["7326413"] = self.OnSubFinish7326413,
        ["7326414"] = self.OnSubFinish7326414,
        ["7326406"] = self.OnSubFinish7326406
    }
end

function Quest73264:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73264:Start()
    print("Start")
end

function Quest73264:OnDestroy()
    print("OnDestroy")
end

function Quest73264:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73264:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73264:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73264:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73264:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73264:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73264:OnSubStart7326422(arg1)
    print("OnSubStart7326422")
end

function Quest73264:OnSubFinish7326422(arg1)
    print("OnSubFinish7326422")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc4291Data.id, 1)
end

function Quest73264:OnSubStart7326401(arg1)
    print("OnSubStart7326401")
end

function Quest73264:OnSubFinish7326401(arg1)
    print("OnSubFinish7326401")
    this:NarratorOnlyTaskByData(datas.NarratorWithId01)
end

function Quest73264:OnSubStart7326423(arg1)
    print("OnSubStart7326423")
    actorMgr:CreateActorWithPos("Q7326423Trigger", "Actor/Gadget/Q7326423Trigger", 70900002, 0, {x = -1483.02, y = 77.567, z = 4980.102}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73264:OnSubFinish7326423(arg1)
    print("OnSubFinish7326423")
    this:NarratorOnlyTaskByData(datas.NarratorWithId23, nil, 73264)
end

function Quest73264:OnSubStart7326424(arg1)
    print("OnSubStart7326424")
    actorMgr:CreateActorWithPos("Q7326424Trigger", "Actor/Gadget/Q7326424Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7326424_guide").pos, sceneData:GetDummyPoint(3, "Q7326424_guide").rot, true, false, 3)
end

function Quest73264:OnSubFinish7326424(arg1)
    print("OnSubFinish7326424")
    this:NarratorOnlyTaskByData(datas.NarratorWithId24, nil, 73264)
    this:EnterSceneLookCamera({x = -1345.0, y = 55.0, z = 5038.0}, 0.5, 3, true, false)
end

function Quest73264:OnSubStart7326402(arg1)
    print("OnSubStart7326402")
    actorMgr:CreateActorWithPos("Q7326402_EnterTrigger", "Actor/Gadget/Q7326402_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7326402_guide").pos, sceneData:GetDummyPoint(3, "Q7326402_guide").rot, true, false, 3)
end

function Quest73264:OnSubFinish7326402(arg1)
    print("OnSubFinish7326402")
    this:NarratorOnlyTaskByData(datas.NarratorWithId02)
end

function Quest73264:OnSubStart7326403(arg1)
    print("OnSubStart7326403")
end

function Quest73264:OnSubFinish7326403(arg1)
    print("OnSubFinish7326403")
end

function Quest73264:OnSubStart7326404(arg1)
    print("OnSubStart7326404")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
end

function Quest73264:OnSubFinish7326404(arg1)
    print("OnSubFinish7326404")
    this:SafeDestroyQuestNpc(npcs.Npc20932Data.alias, 3)
end

function Quest73264:OnSubStart7326420(arg1)
    print("OnSubStart7326420")
    this:CreateQuestNpc(arg1, npcs.Npc20946Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20935Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc20936Data.id, 3)
end

function Quest73264:OnSubFinish7326420(arg1)
    print("OnSubFinish7326420")
    this:SafeDestroyQuestNpc(npcs.Npc20946Data.alias, 3)
end

function Quest73264:OnSubStart7326421(arg1)
    print("OnSubStart7326421")
    this:CreateQuestNpc(arg1, npcs.Npc20947Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20935Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc20936Data.id, 3)
end

function Quest73264:OnSubFinish7326421(arg1)
    print("OnSubFinish7326421")
    this:SafeDestroyQuestNpc(npcs.Npc20947Data.alias, 3)
end

function Quest73264:OnSubStart7326405(arg1)
    print("OnSubStart7326405")
    this:CreateQuestNpc(arg1, npcs.Npc20945Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20935Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc20936Data.id, 3)
end

function Quest73264:OnSubFinish7326405(arg1)
    print("OnSubFinish7326405")
    this:SafeDestroyQuestNpc(npcs.Npc20945Data.alias, 3)
end

function Quest73264:OnSubStart7326407(arg1)
    print("OnSubStart7326407")
    this:CreateQuestNpc(arg1, npcs.Npc20935Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20936Data.id, 2)
    actorMgr:CreateActorWithPos("Q7326407_reminderTrigger", "Actor/Gadget/Q7326407_reminderTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7326407").pos, sceneData:GetDummyPoint(3, "Q7326407").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7326407_EnterTrigger", "Actor/Gadget/Q7326407_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7326405_N20936").pos, sceneData:GetDummyPoint(3, "Q7326405_N20936").rot, true, false, 3)
end

function Quest73264:OnSubFinish7326407(arg1)
    print("OnSubFinish7326407")
end

function Quest73264:OnSubStart7326415(arg1)
    print("OnSubStart7326415")
    this:CreateQuestNpc(arg1, npcs.Npc20935Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20936Data.id, 2)
    this:RequestInteraction(npcs.Npc20936Data.alias)
    this:RequestInteraction(npcs.Npc20935Data.alias)
end

function Quest73264:OnSubFinish7326415(arg1)
    print("OnSubFinish7326415")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20935Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20936Data.alias)
end

function Quest73264:OnSubStart7326408(arg1)
    print("OnSubStart7326408")
end

function Quest73264:OnSubFinish7326408(arg1)
    print("OnSubFinish7326408")
end

function Quest73264:OnSubStart7326416(arg1)
    print("OnSubStart7326416")
end

function Quest73264:OnSubFinish7326416(arg1)
    print("OnSubFinish7326416")
end

function Quest73264:OnSubStart7326409(arg1)
    print("OnSubStart7326409")
    this:CreateQuestNpc(arg1, npcs.Npc20939Data.id, 1)
    this:EnablePlayerInput(false)
    this:ShowBlackScreen(0.5, 1, 0, function(arg1_2)
        this:CallDelay(0.5, function(arg1_2)
            this:CreateQuestNpc(arg1, npcs.Npc20939Data.id, 1)
            this:RequestInteraction(npcs.Npc20939Data.alias)
            this:EnablePlayerInput(true)
        end)
    end, nil, nil, "", false, true)
end

function Quest73264:OnSubFinish7326409(arg1)
    print("OnSubFinish7326409")
    this:SafeDestroyQuestNpc(npcs.Npc20939Data.alias, 3)
end

function Quest73264:OnSubStart7326410(arg1)
    print("OnSubStart7326410")
    actorMgr:CreateActorWithPos("Q7326410_EnterTrigger", "Actor/Gadget/Q7326410_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7326410").pos, sceneData:GetDummyPoint(3, "Q7326410").rot, true, false, 3)
end

function Quest73264:OnSubFinish7326410(arg1)
    print("OnSubFinish7326410")
end

function Quest73264:OnSubStart7326411(arg1)
    print("OnSubStart7326411")
end

function Quest73264:OnSubFinish7326411(arg1)
    print("OnSubFinish7326411")
    this:NarratorOnlyTaskByData(datas.NarratorWithId11)
end

function Quest73264:OnSubStart7326412(arg1)
    print("OnSubStart7326412")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
end

function Quest73264:OnSubFinish7326412(arg1)
    print("OnSubFinish7326412")
    this:SafeDestroyQuestNpc(npcs.Npc20932Data.alias, 3)
end

function Quest73264:OnSubStart7326417(arg1)
    print("OnSubStart7326417")
end

function Quest73264:OnSubFinish7326417(arg1)
    print("OnSubFinish7326417")
end

function Quest73264:OnSubStart7326419(arg1)
    print("OnSubStart7326419")
    this:CreateQuestNpc(arg1, npcs.Npc20949Data.id, 1)
end

function Quest73264:OnSubFinish7326419(arg1)
    print("OnSubFinish7326419")
    this:SafeDestroyQuestNpc(npcs.Npc20949Data.alias, 3)
end

function Quest73264:OnSubStart7326418(arg1)
    print("OnSubStart7326418")
    this:CreateQuestNpc(arg1, npcs.Npc20950Data.id, 1)
end

function Quest73264:OnSubFinish7326418(arg1)
    print("OnSubFinish7326418")
    this:SafeDestroyQuestNpc(npcs.Npc20950Data.alias, 3)
end

function Quest73264:OnSubStart7326425(arg1)
    print("OnSubStart7326425")
end

function Quest73264:OnSubFinish7326425(arg1)
    print("OnSubFinish7326425")
end

function Quest73264:OnSubStart7326413(arg1)
    print("OnSubStart7326413")
    actorMgr:CreateActorWithPos("Q7326425Trigger", "Actor/Gadget/Q7326425Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7326419_N20949").pos, sceneData:GetDummyPoint(3, "Q7326419_N20949").rot, true, false, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4291Data.alias, 3)
end

function Quest73264:OnSubFinish7326413(arg1)
    print("OnSubFinish7326413")
    this:ActorDestroy("Q7326425Trigger")
end

function Quest73264:OnSubStart7326414(arg1)
    print("OnSubStart7326414")
end

function Quest73264:OnSubFinish7326414(arg1)
    print("OnSubFinish7326414")
end

function Quest73264:OnSubStart7326406(arg1)
    print("OnSubStart7326406")
end

function Quest73264:OnSubFinish7326406(arg1)
    print("OnSubFinish7326406")
end

return Quest73264
