require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73066 = class("Quest73066", QuestActorProxy)
Quest73066.defaultAlias = "Quest73066"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73066:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73066:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7306601"] = self.OnSubStart7306601,
        ["7306602"] = self.OnSubStart7306602,
        ["7306603"] = self.OnSubStart7306603,
        ["7306604"] = self.OnSubStart7306604,
        ["7306605"] = self.OnSubStart7306605,
        ["7306606"] = self.OnSubStart7306606,
        ["7306608"] = self.OnSubStart7306608,
        ["7306610"] = self.OnSubStart7306610,
        ["7306612"] = self.OnSubStart7306612,
        ["7306642"] = self.OnSubStart7306642,
        ["7306613"] = self.OnSubStart7306613,
        ["7306615"] = self.OnSubStart7306615,
        ["7306616"] = self.OnSubStart7306616,
        ["7306617"] = self.OnSubStart7306617,
        ["7306618"] = self.OnSubStart7306618,
        ["7306619"] = self.OnSubStart7306619,
        ["7306633"] = self.OnSubStart7306633,
        ["7306620"] = self.OnSubStart7306620,
        ["7306636"] = self.OnSubStart7306636,
        ["7306637"] = self.OnSubStart7306637,
        ["7306638"] = self.OnSubStart7306638,
        ["7306621"] = self.OnSubStart7306621,
        ["7306640"] = self.OnSubStart7306640,
        ["7306639"] = self.OnSubStart7306639,
        ["7306622"] = self.OnSubStart7306622,
        ["7306623"] = self.OnSubStart7306623,
        ["7306644"] = self.OnSubStart7306644,
        ["7306625"] = self.OnSubStart7306625,
        ["7306626"] = self.OnSubStart7306626,
        ["7306627"] = self.OnSubStart7306627,
        ["7306628"] = self.OnSubStart7306628,
        ["7306643"] = self.OnSubStart7306643,
        ["7306629"] = self.OnSubStart7306629,
        ["7306630"] = self.OnSubStart7306630,
        ["7306641"] = self.OnSubStart7306641,
        ["7306631"] = self.OnSubStart7306631,
        ["7306607"] = self.OnSubStart7306607,
        ["7306609"] = self.OnSubStart7306609,
        ["7306611"] = self.OnSubStart7306611,
        ["7306614"] = self.OnSubStart7306614,
        ["7306624"] = self.OnSubStart7306624,
        ["7306632"] = self.OnSubStart7306632,
        ["7306634"] = self.OnSubStart7306634
    }
end

function Quest73066:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7306601"] = self.OnSubFinish7306601,
        ["7306602"] = self.OnSubFinish7306602,
        ["7306603"] = self.OnSubFinish7306603,
        ["7306604"] = self.OnSubFinish7306604,
        ["7306605"] = self.OnSubFinish7306605,
        ["7306606"] = self.OnSubFinish7306606,
        ["7306608"] = self.OnSubFinish7306608,
        ["7306610"] = self.OnSubFinish7306610,
        ["7306612"] = self.OnSubFinish7306612,
        ["7306642"] = self.OnSubFinish7306642,
        ["7306613"] = self.OnSubFinish7306613,
        ["7306615"] = self.OnSubFinish7306615,
        ["7306616"] = self.OnSubFinish7306616,
        ["7306617"] = self.OnSubFinish7306617,
        ["7306618"] = self.OnSubFinish7306618,
        ["7306619"] = self.OnSubFinish7306619,
        ["7306633"] = self.OnSubFinish7306633,
        ["7306620"] = self.OnSubFinish7306620,
        ["7306636"] = self.OnSubFinish7306636,
        ["7306637"] = self.OnSubFinish7306637,
        ["7306638"] = self.OnSubFinish7306638,
        ["7306621"] = self.OnSubFinish7306621,
        ["7306640"] = self.OnSubFinish7306640,
        ["7306639"] = self.OnSubFinish7306639,
        ["7306622"] = self.OnSubFinish7306622,
        ["7306623"] = self.OnSubFinish7306623,
        ["7306644"] = self.OnSubFinish7306644,
        ["7306625"] = self.OnSubFinish7306625,
        ["7306626"] = self.OnSubFinish7306626,
        ["7306627"] = self.OnSubFinish7306627,
        ["7306628"] = self.OnSubFinish7306628,
        ["7306643"] = self.OnSubFinish7306643,
        ["7306629"] = self.OnSubFinish7306629,
        ["7306630"] = self.OnSubFinish7306630,
        ["7306641"] = self.OnSubFinish7306641,
        ["7306631"] = self.OnSubFinish7306631,
        ["7306607"] = self.OnSubFinish7306607,
        ["7306609"] = self.OnSubFinish7306609,
        ["7306611"] = self.OnSubFinish7306611,
        ["7306614"] = self.OnSubFinish7306614,
        ["7306624"] = self.OnSubFinish7306624,
        ["7306632"] = self.OnSubFinish7306632,
        ["7306634"] = self.OnSubFinish7306634
    }
end

function Quest73066:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73066:Start()
    print("Start")
end

function Quest73066:OnDestroy()
    print("OnDestroy")
end

function Quest73066:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73066:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73066:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73066:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73066:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73066:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73066:OnSubStart7306601(arg1)
    print("OnSubStart7306601")
end

function Quest73066:OnSubFinish7306601(arg1)
    print("OnSubFinish7306601")
end

function Quest73066:OnSubStart7306602(arg1)
    print("OnSubStart7306602")
    self:NpcCreate(arg1, npcs.Npc20578Data.id, 1)
    actorMgr:CreateActorWithPos("Q7306602Trigger", "Actor/Gadget/Q7306602Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306602_N20578").pos, sceneData:GetDummyPoint(3, "Q7306602_N20578").rot, true, false, 3)
end

function Quest73066:OnSubFinish7306602(arg1)
    print("OnSubFinish7306602")
end

function Quest73066:OnSubStart7306603(arg1)
    print("OnSubStart7306603")
end

function Quest73066:OnSubFinish7306603(arg1)
    print("OnSubFinish7306603")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73066:OnSubStart7306604(arg1)
    print("OnSubStart7306604")
    actorMgr:CreateActorWithPos("Q7306604Trigger", "Actor/Gadget/Q7306604Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306604_guide").pos, sceneData:GetDummyPoint(3, "Q7306604_guide").rot, true, false, 3)
end

function Quest73066:OnSubFinish7306604(arg1)
    print("OnSubFinish7306604")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20578Data.id, 1, npcs.Npc20578Data.alias)
end

function Quest73066:OnSubStart7306605(arg1)
    print("OnSubStart7306605")
end

function Quest73066:OnSubFinish7306605(arg1)
    print("OnSubFinish7306605")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73066:OnSubStart7306606(arg1)
    print("OnSubStart7306606")
end

function Quest73066:OnSubFinish7306606(arg1)
    print("OnSubFinish7306606")
end

function Quest73066:OnSubStart7306608(arg1)
    print("OnSubStart7306608")
end

function Quest73066:OnSubFinish7306608(arg1)
    print("OnSubFinish7306608")
end

function Quest73066:OnSubStart7306610(arg1)
    print("OnSubStart7306610")
end

function Quest73066:OnSubFinish7306610(arg1)
    print("OnSubFinish7306610")
end

function Quest73066:OnSubStart7306612(arg1)
    print("OnSubStart7306612")
end

function Quest73066:OnSubFinish7306612(arg1)
    print("OnSubFinish7306612")
end

function Quest73066:OnSubStart7306642(arg1)
    print("OnSubStart7306642")
end

function Quest73066:OnSubFinish7306642(arg1)
    print("OnSubFinish7306642")
end

function Quest73066:OnSubStart7306613(arg1)
    print("OnSubStart7306613")
    actorMgr:CreateActorWithPos("Q7306613Trigger", "Actor/Gadget/Q7306613Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306604_guide").pos, sceneData:GetDummyPoint(3, "Q7306604_guide").rot, true, false, 3)
end

function Quest73066:OnSubFinish7306613(arg1)
    print("OnSubFinish7306613")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20578Data.id, 1, npcs.Npc20578Data.alias)
end

function Quest73066:OnSubStart7306615(arg1)
    print("OnSubStart7306615")
end

function Quest73066:OnSubFinish7306615(arg1)
    print("OnSubFinish7306615")
end

function Quest73066:OnSubStart7306616(arg1)
    print("OnSubStart7306616")
end

function Quest73066:OnSubFinish7306616(arg1)
    print("OnSubFinish7306616")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73066:OnSubStart7306617(arg1)
    print("OnSubStart7306617")
    actorMgr:CreateActorWithPos("Q7306617Trigger", "Actor/Gadget/Q7306617Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306602_N20578").pos, sceneData:GetDummyPoint(3, "Q7306602_N20578").rot, true, false, 3)
end

function Quest73066:OnSubFinish7306617(arg1)
    print("OnSubFinish7306617")
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 1)
end

function Quest73066:OnSubStart7306618(arg1)
    print("OnSubStart7306618")
end

function Quest73066:OnSubFinish7306618(arg1)
    print("OnSubFinish7306618")
end

function Quest73066:OnSubStart7306619(arg1)
    print("OnSubStart7306619")
end

function Quest73066:OnSubFinish7306619(arg1)
    print("OnSubFinish7306619")
    self:NarratorOnlyTask(datas.Q7306619NarratorTable, nil, "")
end

function Quest73066:OnSubStart7306633(arg1)
    print("OnSubStart7306633")
    self:NpcCreate(arg1, npcs.Npc20576Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc20577Data.id, 2)
end

function Quest73066:OnSubFinish7306633(arg1)
    print("OnSubFinish7306633")
end

function Quest73066:OnSubStart7306620(arg1)
    print("OnSubStart7306620")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(7306620, function(arg1)
            actorUtils.FinishQuestID(false, 7306620)
        end, nil, nil, false)
    end)
end

function Quest73066:OnSubFinish7306620(arg1)
    print("OnSubFinish7306620")
    self:RequestInteraction(npcs.Npc20576Data.alias)
end

function Quest73066:OnSubStart7306636(arg1)
    print("OnSubStart7306636")
end

function Quest73066:OnSubFinish7306636(arg1)
    print("OnSubFinish7306636")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73066:OnSubStart7306637(arg1)
    print("OnSubStart7306637")
    actorMgr:CreateActorWithPos("Q7306637Trigger", "Actor/Gadget/Q7306637Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306621_guide").pos, sceneData:GetDummyPoint(3, "Q7306621_guide").rot, true, false, 3)
end

function Quest73066:OnSubFinish7306637(arg1)
    print("OnSubFinish7306637")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20576Data.id, 1, npcs.Npc20576Data.alias)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20577Data.id, 2, npcs.Npc20577Data.alias)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20578Data.id, 3, npcs.Npc20578Data.alias)
end

function Quest73066:OnSubStart7306638(arg1)
    print("OnSubStart7306638")
end

function Quest73066:OnSubFinish7306638(arg1)
    print("OnSubFinish7306638")
end

function Quest73066:OnSubStart7306621(arg1)
    print("OnSubStart7306621")
end

function Quest73066:OnSubFinish7306621(arg1)
    print("OnSubFinish7306621")
end

function Quest73066:OnSubStart7306640(arg1)
    print("OnSubStart7306640")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(7306640, function(arg1)
            actorUtils.FinishQuestID(false, 7306640)
        end, nil, nil, false)
    end)
end

function Quest73066:OnSubFinish7306640(arg1)
    print("OnSubFinish7306640")
end

function Quest73066:OnSubStart7306639(arg1)
    print("OnSubStart7306639")
    self:RequestInteraction(npcs.Npc20578Data.alias)
end

function Quest73066:OnSubFinish7306639(arg1)
    print("OnSubFinish7306639")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73066:OnSubStart7306622(arg1)
    print("OnSubStart7306622")
    actorMgr:CreateActorWithPos("Q7306622Trigger", "Actor/Gadget/Q7306622Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306622_guide").pos, sceneData:GetDummyPoint(3, "Q7306622_guide").rot, true, false, 3)
end

function Quest73066:OnSubFinish7306622(arg1)
    print("OnSubFinish7306622")
end

function Quest73066:OnSubStart7306623(arg1)
    print("OnSubStart7306623")
    actorMgr:CreateActorWithPos("Q7306623Trigger", "Actor/Gadget/Q7306623Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306623_guide").pos, sceneData:GetDummyPoint(3, "Q7306623_guide").rot, true, false, 3)
end

function Quest73066:OnSubFinish7306623(arg1)
    print("OnSubFinish7306623")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20576Data.id, 1, npcs.Npc20576Data.alias)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20577Data.id, 2, npcs.Npc20577Data.alias)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20578Data.id, 3, npcs.Npc20578Data.alias)
end

function Quest73066:OnSubStart7306644(arg1)
    print("OnSubStart7306644")
end

function Quest73066:OnSubFinish7306644(arg1)
    print("OnSubFinish7306644")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73066:OnSubStart7306625(arg1)
    print("OnSubStart7306625")
end

function Quest73066:OnSubFinish7306625(arg1)
    print("OnSubFinish7306625")
end

function Quest73066:OnSubStart7306626(arg1)
    print("OnSubStart7306626")
end

function Quest73066:OnSubFinish7306626(arg1)
    print("OnSubFinish7306626")
end

function Quest73066:OnSubStart7306627(arg1)
    print("OnSubStart7306627")
end

function Quest73066:OnSubFinish7306627(arg1)
    print("OnSubFinish7306627")
end

function Quest73066:OnSubStart7306628(arg1)
    print("OnSubStart7306628")
end

function Quest73066:OnSubFinish7306628(arg1)
    print("OnSubFinish7306628")
end

function Quest73066:OnSubStart7306643(arg1)
    print("OnSubStart7306643")
    actorMgr:CreateActorWithPos("Q7306643Trigger", "Actor/Gadget/Q7306643Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306629_guide").pos, sceneData:GetDummyPoint(3, "Q7306629_guide").rot, true, false, 3)
end

function Quest73066:OnSubFinish7306643(arg1)
    print("OnSubFinish7306643")
end

function Quest73066:OnSubStart7306629(arg1)
    print("OnSubStart7306629")
end

function Quest73066:OnSubFinish7306629(arg1)
    print("OnSubFinish7306629")
end

function Quest73066:OnSubStart7306630(arg1)
    print("OnSubStart7306630")
end

function Quest73066:OnSubFinish7306630(arg1)
    print("OnSubFinish7306630")
end

function Quest73066:OnSubStart7306641(arg1)
    print("OnSubStart7306641")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(7306641, function(arg1)
            actorUtils.FinishQuestID(false, 7306641)
        end, nil, nil, false)
    end)
end

function Quest73066:OnSubFinish7306641(arg1)
    print("OnSubFinish7306641")
    self:NarratorOnlyTask(datas.Q7306631NarratorTable, nil, "")
end

function Quest73066:OnSubStart7306631(arg1)
    print("OnSubStart7306631")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 3)
end

function Quest73066:OnSubFinish7306631(arg1)
    print("OnSubFinish7306631")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73066:OnSubStart7306607(arg1)
    print("OnSubStart7306607")
    actorMgr:CreateActorWithPos("Q7306607Trigger", "Actor/Gadget/Q7306607Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306608_guide").pos, sceneData:GetDummyPoint(3, "Q7306608_guide").rot, true, false, 3)
end

function Quest73066:OnSubFinish7306607(arg1)
    print("OnSubFinish7306607")
end

function Quest73066:OnSubStart7306609(arg1)
    print("OnSubStart7306609")
    actorMgr:CreateActorWithPos("Q7306609Trigger", "Actor/Gadget/Q7306609Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306610_guide").pos, sceneData:GetDummyPoint(3, "Q7306610_guide").rot, true, false, 3)
end

function Quest73066:OnSubFinish7306609(arg1)
    print("OnSubFinish7306609")
end

function Quest73066:OnSubStart7306611(arg1)
    print("OnSubStart7306611")
    actorMgr:CreateActorWithPos("Q7306611Trigger", "Actor/Gadget/Q7306611Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306612_guide").pos, sceneData:GetDummyPoint(3, "Q7306612_guide").rot, true, false, 3)
end

function Quest73066:OnSubFinish7306611(arg1)
    print("OnSubFinish7306611")
end

function Quest73066:OnSubStart7306614(arg1)
    print("OnSubStart7306614")
end

function Quest73066:OnSubFinish7306614(arg1)
    print("OnSubFinish7306614")
end

function Quest73066:OnSubStart7306624(arg1)
    print("OnSubStart7306624")
    self:NpcCreate(arg1, npcs.Npc20576Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc20577Data.id, 2)
    self:NpcCreate(arg1, npcs.Npc20578Data.id, 3)
end

function Quest73066:OnSubFinish7306624(arg1)
    print("OnSubFinish7306624")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73066:OnSubStart7306632(arg1)
    print("OnSubStart7306632")
end

function Quest73066:OnSubFinish7306632(arg1)
    print("OnSubFinish7306632")
end

function Quest73066:OnSubStart7306634(arg1)
    print("OnSubStart7306634")
end

function Quest73066:OnSubFinish7306634(arg1)
    print("OnSubFinish7306634")
end

return Quest73066
