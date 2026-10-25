require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73332 = class("Quest73332", QuestActorProxy)
Quest73332.defaultAlias = "Quest73332"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73332:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73332:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7333201"] = self.OnSubStart7333201,
        ["7333202"] = self.OnSubStart7333202,
        ["7333203"] = self.OnSubStart7333203,
        ["7333208"] = self.OnSubStart7333208,
        ["7333204"] = self.OnSubStart7333204,
        ["7333205"] = self.OnSubStart7333205,
        ["7333206"] = self.OnSubStart7333206,
        ["7333207"] = self.OnSubStart7333207,
        ["7333209"] = self.OnSubStart7333209
    }
end

function Quest73332:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7333201"] = self.OnSubFinish7333201,
        ["7333202"] = self.OnSubFinish7333202,
        ["7333203"] = self.OnSubFinish7333203,
        ["7333208"] = self.OnSubFinish7333208,
        ["7333204"] = self.OnSubFinish7333204,
        ["7333205"] = self.OnSubFinish7333205,
        ["7333206"] = self.OnSubFinish7333206,
        ["7333207"] = self.OnSubFinish7333207,
        ["7333209"] = self.OnSubFinish7333209
    }
end

function Quest73332:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73332:Start()
    print("Start")
end

function Quest73332:OnDestroy()
    print("OnDestroy")
end

function Quest73332:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73332:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73332:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20954Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7333202Trigger", 3, false)
end

function Quest73332:OnDestroy()
    print("OnDestroy")
end

function Quest73332:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73332:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73332:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73332:Start()
    print("Start")
end

function Quest73332:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73332:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73332:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73332:OnSubStart7333201(arg1)
    print("OnSubStart7333201")
end

function Quest73332:OnSubFinish7333201(arg1)
    print("OnSubFinish7333201")
end

function Quest73332:OnSubFinish7333201(arg1)
    print("OnSubFinish7333201")
end

function Quest73332:OnSubStart7333202(arg1)
    print("OnSubStart7333202")
    actorMgr:CreateActorWithPos("Q7333202Trigger", "Actor/Gadget/Q7333202Trigger", 70900002, 0, points.TPos_Q7333202Trigger.pos, points.TPos_Q7333202Trigger.rot, true, false, 3)
end

function Quest73332:OnSubFinish7333202(arg1)
    print("OnSubFinish7333202")
end

function Quest73332:OnSubStart7333203(arg1)
    print("OnSubStart7333203")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73332:OnSubFinish7333203(arg1)
    print("OnSubFinish7333203")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73332:OnSubStart7333208(arg1)
    print("OnSubStart7333208")
end

function Quest73332:OnSubFinish7333208(arg1)
    print("OnSubFinish7333208")
    this:NarratorOnlyTaskByData(datas.Narrator_7333202)
end

function Quest73332:OnSubStart7333204(arg1)
    print("OnSubStart7333204")
end

function Quest73332:OnSubFinish7333204(arg1)
    print("OnSubFinish7333204")
end

function Quest73332:OnSubStart7333205(arg1)
    print("OnSubStart7333205")
    this:CreateQuestNpc(arg1, npcs.Npc20954Data.id, 1)
end

function Quest73332:OnSubFinish7333205(arg1)
    print("OnSubFinish7333205")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, false)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20954Data.alias)
end

function Quest73332:OnSubStart7333206(arg1)
    print("OnSubStart7333206")
end

function Quest73332:OnSubFinish7333206(arg1)
    print("OnSubFinish7333206")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, false)
end

function Quest73332:OnSubStart7333207(arg1)
    print("OnSubStart7333207")
    this:CreateQuestNpc(arg1, npcs.Npc20954Data.id, 1)
end

function Quest73332:OnSubFinish7333207(arg1)
    print("OnSubFinish7333207")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(1.5, function(arg1)
            this:NpcDestroy(npcs.Npc20954Data.alias, 3)
        end)
    end)
end

function Quest73332:OnSubStart7333209(arg1)
    print("OnSubStart7333209")
end

function Quest73332:OnSubFinish7333209(arg1)
    print("OnSubFinish7333209")
end

return Quest73332
