require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73257 = class("Quest73257", QuestActorProxy)
Quest73257.defaultAlias = "Quest73257"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73257:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73257:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7325715"] = self.OnSubStart7325715,
        ["7325701"] = self.OnSubStart7325701,
        ["7325702"] = self.OnSubStart7325702,
        ["7325703"] = self.OnSubStart7325703,
        ["7325704"] = self.OnSubStart7325704,
        ["7325705"] = self.OnSubStart7325705,
        ["7325706"] = self.OnSubStart7325706,
        ["7325730"] = self.OnSubStart7325730,
        ["7325718"] = self.OnSubStart7325718,
        ["7325719"] = self.OnSubStart7325719,
        ["7325720"] = self.OnSubStart7325720,
        ["7325721"] = self.OnSubStart7325721,
        ["7325722"] = self.OnSubStart7325722,
        ["7325717"] = self.OnSubStart7325717,
        ["7325723"] = self.OnSubStart7325723,
        ["7325724"] = self.OnSubStart7325724,
        ["7325725"] = self.OnSubStart7325725,
        ["7325726"] = self.OnSubStart7325726,
        ["7325727"] = self.OnSubStart7325727,
        ["7325728"] = self.OnSubStart7325728,
        ["7325714"] = self.OnSubStart7325714,
        ["7325711"] = self.OnSubStart7325711,
        ["7325729"] = self.OnSubStart7325729,
        ["7325709"] = self.OnSubStart7325709
    }
end

function Quest73257:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7325715"] = self.OnSubFinish7325715,
        ["7325701"] = self.OnSubFinish7325701,
        ["7325702"] = self.OnSubFinish7325702,
        ["7325703"] = self.OnSubFinish7325703,
        ["7325704"] = self.OnSubFinish7325704,
        ["7325705"] = self.OnSubFinish7325705,
        ["7325706"] = self.OnSubFinish7325706,
        ["7325730"] = self.OnSubFinish7325730,
        ["7325718"] = self.OnSubFinish7325718,
        ["7325719"] = self.OnSubFinish7325719,
        ["7325720"] = self.OnSubFinish7325720,
        ["7325721"] = self.OnSubFinish7325721,
        ["7325722"] = self.OnSubFinish7325722,
        ["7325717"] = self.OnSubFinish7325717,
        ["7325723"] = self.OnSubFinish7325723,
        ["7325724"] = self.OnSubFinish7325724,
        ["7325725"] = self.OnSubFinish7325725,
        ["7325726"] = self.OnSubFinish7325726,
        ["7325727"] = self.OnSubFinish7325727,
        ["7325728"] = self.OnSubFinish7325728,
        ["7325714"] = self.OnSubFinish7325714,
        ["7325711"] = self.OnSubFinish7325711,
        ["7325729"] = self.OnSubFinish7325729,
        ["7325709"] = self.OnSubFinish7325709
    }
end

function Quest73257:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7325723"] = self.OnSubFailed7325723,
        ["7325724"] = self.OnSubFailed7325724,
        ["7325725"] = self.OnSubFailed7325725,
        ["7325726"] = self.OnSubFailed7325726,
        ["7325727"] = self.OnSubFailed7325727,
        ["7325728"] = self.OnSubFailed7325728
    }
end

function Quest73257:Start()
    print("Start")
end

function Quest73257:OnDestroy()
    print("OnDestroy")
end

function Quest73257:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73257:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73257:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73257:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73257:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73257:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest73257:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73257:OnSubStart7325715(arg1)
    print("OnSubStart7325715")
    actorMgr:CreateActorWithPos("Q7325715Trigger", "Actor/Gadget/Q7325715Trigger", 70900002, 0, points.TPos_Q7325715Trigger.pos, points.TPos_Q7325715Trigger.rot, true, false, 3)
end

function Quest73257:OnSubFinish7325715(arg1)
    print("OnSubFinish7325715")
end

function Quest73257:OnSubStart7325701(arg1)
    print("OnSubStart7325701")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20883Data.id, 1, npcs.Npc20883Data.alias)
end

function Quest73257:OnSubFinish7325701(arg1)
    print("OnSubFinish7325701")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20883Data.alias)
end

function Quest73257:OnSubStart7325702(arg1)
    print("OnSubStart7325702")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4284Data.id, 1)
end

function Quest73257:OnSubFinish7325702(arg1)
    print("OnSubFinish7325702")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4284Data.alias)
end

function Quest73257:OnSubStart7325703(arg1)
    print("OnSubStart7325703")
    this:CreateQuestNpc(arg1, npcs.Npc20887Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20892Data.id, 2)
    actorMgr:CreateActorWithPos("Q7325703Trigger", "Actor/Gadget/Q7325703Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7325703_N20892").pos, sceneData:GetDummyPoint(3, "Q7325703_N20892").rot, true, false, 3)
end

function Quest73257:OnSubFinish7325703(arg1)
    print("OnSubFinish7325703")
end

function Quest73257:OnSubStart7325704(arg1)
    print("OnSubStart7325704")
    this:CreateQuestNpc(arg1, npcs.Npc20887Data.id, 1)
    this:NpcCreateWithNpcTrigger(npcs.Npc20892Data.id, 7325704, 2, 6)
end

function Quest73257:OnSubFinish7325704(arg1)
    print("OnSubFinish7325704")
end

function Quest73257:OnSubStart7325705(arg1)
    print("OnSubStart7325705")
    this:CreateQuestNpc(arg1, npcs.Npc20887Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20892Data.id, 2)
end

function Quest73257:OnSubFinish7325705(arg1)
    print("OnSubFinish7325705")
    this:SafeDestroyQuestNpc(npcs.Npc20887Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20892Data.alias, 3)
end

function Quest73257:OnSubStart7325706(arg1)
    print("OnSubStart7325706")
    this:ShowBlackScreenWithDialogText(0, 0.5, 0, nil, nil, nil, 0, false, true)
    this:PlayCutsceneIndex(7325706, function(arg1)
        actorUtils.FinishQuestID(false, 7325706)
        this:ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
    end, nil, nil, false)
end

function Quest73257:OnSubFinish7325706(arg1)
    print("OnSubFinish7325706")
end

function Quest73257:OnSubStart7325730(arg1)
    print("OnSubStart7325730")
    this:NpcCreateWithNpcTrigger(npcs.Npc20887Data.id, 7325730, 1, 5)
    this:CreateQuestNpc(arg1, npcs.Npc20892Data.id, 2)
    this:RequestInteraction(npcs.Npc20887Data.alias)
end

function Quest73257:OnSubFinish7325730(arg1)
    print("OnSubFinish7325730")
end

function Quest73257:OnSubStart7325718(arg1)
    print("OnSubStart7325718")
    this:CreateQuestNpc(arg1, npcs.Npc20887Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20892Data.id, 2)
end

function Quest73257:OnSubFinish7325718(arg1)
    print("OnSubFinish7325718")
end

function Quest73257:OnSubStart7325719(arg1)
    print("OnSubStart7325719")
    this:CreateQuestNpc(arg1, npcs.Npc20887Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20892Data.id, 2)
end

function Quest73257:OnSubFinish7325719(arg1)
    print("OnSubFinish7325719")
end

function Quest73257:OnSubStart7325720(arg1)
    print("OnSubStart7325720")
    this:CreateQuestNpc(arg1, npcs.Npc20887Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20892Data.id, 2)
end

function Quest73257:OnSubFinish7325720(arg1)
    print("OnSubFinish7325720")
end

function Quest73257:OnSubStart7325721(arg1)
    print("OnSubStart7325721")
    this:CreateQuestNpc(arg1, npcs.Npc20887Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20892Data.id, 2)
end

function Quest73257:OnSubFinish7325721(arg1)
    print("OnSubFinish7325721")
end

function Quest73257:OnSubStart7325722(arg1)
    print("OnSubStart7325722")
    this:CreateQuestNpc(arg1, npcs.Npc20887Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20892Data.id, 2)
end

function Quest73257:OnSubFinish7325722(arg1)
    print("OnSubFinish7325722")
end

function Quest73257:OnSubStart7325717(arg1)
    print("OnSubStart7325717")
    this:NpcCreateWithNpcTrigger(npcs.Npc20887Data.id, 7325717, 1, 6)
    this:CreateQuestNpc(arg1, npcs.Npc20892Data.id, 2)
end

function Quest73257:OnSubFinish7325717(arg1)
    print("OnSubFinish7325717")
end

function Quest73257:OnSubStart7325723(arg1)
    print("OnSubStart7325723")
end

function Quest73257:OnSubFinish7325723(arg1)
    print("OnSubFinish7325723")
end

function Quest73257:OnSubFailed7325723(arg1)
    print("OnSubFailed7325723")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 732579910, false, true)
end

function Quest73257:OnSubStart7325724(arg1)
    print("OnSubStart7325724")
end

function Quest73257:OnSubFinish7325724(arg1)
    print("OnSubFinish7325724")
end

function Quest73257:OnSubFailed7325724(arg1)
    print("OnSubFailed7325724")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 732579910, false, true)
end

function Quest73257:OnSubStart7325725(arg1)
    print("OnSubStart7325725")
end

function Quest73257:OnSubFinish7325725(arg1)
    print("OnSubFinish7325725")
end

function Quest73257:OnSubFailed7325725(arg1)
    print("OnSubFailed7325725")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 732579910, false, true)
end

function Quest73257:OnSubStart7325726(arg1)
    print("OnSubStart7325726")
end

function Quest73257:OnSubFinish7325726(arg1)
    print("OnSubFinish7325726")
end

function Quest73257:OnSubFailed7325726(arg1)
    print("OnSubFailed7325726")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 732579910, false, true)
end

function Quest73257:OnSubStart7325727(arg1)
    print("OnSubStart7325727")
end

function Quest73257:OnSubFinish7325727(arg1)
    print("OnSubFinish7325727")
end

function Quest73257:OnSubFailed7325727(arg1)
    print("OnSubFailed7325727")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 732579910, false, true)
end

function Quest73257:OnSubStart7325728(arg1)
    print("OnSubStart7325728")
end

function Quest73257:OnSubFinish7325728(arg1)
    print("OnSubFinish7325728")
    this:TransmitPlayerByQuestId(7325728, 1)
end

function Quest73257:OnSubFailed7325728(arg1)
    print("OnSubFailed7325728")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 732579910, false, true)
end

function Quest73257:OnSubStart7325714(arg1)
    print("OnSubStart7325714")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20887Data.id, 1, npcs.Npc20887Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc20892Data.id, 2)
    this:LevelLoadFinishSafeCall(function(arg1_2)
        this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20883Data.id, 1, npcs.Npc20883Data.alias)
    end)
end

function Quest73257:OnSubFinish7325714(arg1)
    print("OnSubFinish7325714")
    this:SafeDestroyQuestNpc(npcs.Npc20887Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20892Data.alias, 3)
end

function Quest73257:OnSubStart7325711(arg1)
    print("OnSubStart7325711")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7325711, function(arg1)
            actorUtils.FinishQuestID(false, 7325711)
        end, nil, nil, false)
    end)
end

function Quest73257:OnSubFinish7325711(arg1)
    print("OnSubFinish7325711")
end

function Quest73257:OnSubStart7325729(arg1)
    print("OnSubStart7325729")
    this:CreateQuestNpc(arg1, npcs.Npc20887Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20892Data.id, 2)
end

function Quest73257:OnSubFinish7325729(arg1)
    print("OnSubFinish7325729")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20887Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc20892Data.alias, 3)
end

function Quest73257:OnSubStart7325709(arg1)
    print("OnSubStart7325709")
end

function Quest73257:OnSubFinish7325709(arg1)
    print("OnSubFinish7325709")
end

return Quest73257
