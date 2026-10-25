require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73312 = class("Quest73312", QuestActorProxy)
Quest73312.defaultAlias = "Quest73312"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73312:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73312:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7331201"] = self.OnSubStart7331201,
        ["7331202"] = self.OnSubStart7331202,
        ["7331203"] = self.OnSubStart7331203,
        ["7331208"] = self.OnSubStart7331208,
        ["7331204"] = self.OnSubStart7331204,
        ["7331205"] = self.OnSubStart7331205,
        ["7331206"] = self.OnSubStart7331206,
        ["7331210"] = self.OnSubStart7331210,
        ["7331211"] = self.OnSubStart7331211,
        ["7331213"] = self.OnSubStart7331213,
        ["7331207"] = self.OnSubStart7331207,
        ["7331209"] = self.OnSubStart7331209
    }
end

function Quest73312:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7331201"] = self.OnSubFinish7331201,
        ["7331202"] = self.OnSubFinish7331202,
        ["7331203"] = self.OnSubFinish7331203,
        ["7331208"] = self.OnSubFinish7331208,
        ["7331204"] = self.OnSubFinish7331204,
        ["7331205"] = self.OnSubFinish7331205,
        ["7331206"] = self.OnSubFinish7331206,
        ["7331210"] = self.OnSubFinish7331210,
        ["7331211"] = self.OnSubFinish7331211,
        ["7331213"] = self.OnSubFinish7331213,
        ["7331207"] = self.OnSubFinish7331207,
        ["7331209"] = self.OnSubFinish7331209
    }
end

function Quest73312:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73312:Start()
    print("Start")
end

function Quest73312:OnDestroy()
    print("OnDestroy")
end

function Quest73312:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73312:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73312:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20958Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7331202Trigger", 3, false)
end

function Quest73312:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73312:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73312:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73312:OnSubStart7331201(arg1)
    print("OnSubStart7331201")
end

function Quest73312:OnSubFinish7331201(arg1)
    print("OnSubFinish7331201")
end

function Quest73312:OnSubStart7331202(arg1)
    print("OnSubStart7331202")
    actorMgr:CreateActorWithPos("Q7331202Trigger", "Actor/Gadget/Q7331202Trigger", 70900002, 0, points.TPos_Q7331202Trigger.pos, points.TPos_Q7331202Trigger.rot, true, false, 3)
end

function Quest73312:OnSubFinish7331202(arg1)
    print("OnSubFinish7331202")
end

function Quest73312:OnSubStart7331203(arg1)
    print("OnSubStart7331203")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73312:OnSubFinish7331203(arg1)
    print("OnSubFinish7331203")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73312:OnSubStart7331208(arg1)
    print("OnSubStart7331208")
end

function Quest73312:OnSubFinish7331208(arg1)
    print("OnSubFinish7331208")
    this:NarratorOnlyTaskByData(datas.Narrator_7331202)
end

function Quest73312:OnSubStart7331204(arg1)
    print("OnSubStart7331204")
end

function Quest73312:OnSubFinish7331204(arg1)
    print("OnSubFinish7331204")
end

function Quest73312:OnSubStart7331205(arg1)
    print("OnSubStart7331205")
    this:CreateQuestNpc(arg1, npcs.Npc20958Data.id, 1)
end

function Quest73312:OnSubFinish7331205(arg1)
    print("OnSubFinish7331205")
end

function Quest73312:OnSubStart7331206(arg1)
    print("OnSubStart7331206")
end

function Quest73312:OnSubFinish7331206(arg1)
    print("OnSubFinish7331206")
end

function Quest73312:OnSubStart7331210(arg1)
    print("OnSubStart7331210")
end

function Quest73312:OnSubFinish7331210(arg1)
    print("OnSubFinish7331210")
end

function Quest73312:OnSubStart7331211(arg1)
    print("OnSubStart7331211")
end

function Quest73312:OnSubFinish7331211(arg1)
    print("OnSubFinish7331211")
end

function Quest73312:OnSubStart7331213(arg1)
    print("OnSubStart7331213")
end

function Quest73312:OnSubFinish7331213(arg1)
    print("OnSubFinish7331213")
end

function Quest73312:OnSubStart7331207(arg1)
    print("OnSubStart7331207")
end

function Quest73312:OnSubFinish7331207(arg1)
    print("OnSubFinish7331207")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(1.5, function(arg1)
            this:NpcDestroy(npcs.Npc20958Data.alias, 3)
        end)
    end)
end

function Quest73312:OnSubStart7331209(arg1)
    print("OnSubStart7331209")
end

function Quest73312:OnSubFinish7331209(arg1)
    print("OnSubFinish7331209")
end

return Quest73312
