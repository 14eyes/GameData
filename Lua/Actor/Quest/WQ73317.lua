require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73317 = class("Quest73317", QuestActorProxy)
Quest73317.defaultAlias = "Quest73317"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73317:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73317:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7331701"] = self.OnSubStart7331701,
        ["7331702"] = self.OnSubStart7331702,
        ["7331703"] = self.OnSubStart7331703,
        ["7331708"] = self.OnSubStart7331708,
        ["7331704"] = self.OnSubStart7331704,
        ["7331705"] = self.OnSubStart7331705,
        ["7331706"] = self.OnSubStart7331706,
        ["7331707"] = self.OnSubStart7331707,
        ["7331709"] = self.OnSubStart7331709
    }
end

function Quest73317:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7331701"] = self.OnSubFinish7331701,
        ["7331702"] = self.OnSubFinish7331702,
        ["7331703"] = self.OnSubFinish7331703,
        ["7331708"] = self.OnSubFinish7331708,
        ["7331704"] = self.OnSubFinish7331704,
        ["7331705"] = self.OnSubFinish7331705,
        ["7331706"] = self.OnSubFinish7331706,
        ["7331707"] = self.OnSubFinish7331707,
        ["7331709"] = self.OnSubFinish7331709
    }
end

function Quest73317:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73317:Start()
    print("Start")
end

function Quest73317:OnDestroy()
    print("OnDestroy")
end

function Quest73317:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73317:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73317:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20963Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7331702Trigger", 3, false)
end

function Quest73317:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73317:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73317:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73317:OnSubStart7331701(arg1)
    print("OnSubStart7331701")
end

function Quest73317:OnSubFinish7331701(arg1)
    print("OnSubFinish7331701")
end

function Quest73317:OnSubStart7331702(arg1)
    print("OnSubStart7331702")
    actorMgr:CreateActorWithPos("Q7331702Trigger", "Actor/Gadget/Q7331702Trigger", 70900002, 0, points.TPos_Q7331702Trigger.pos, points.TPos_Q7331702Trigger.rot, true, false, 3)
end

function Quest73317:OnSubFinish7331702(arg1)
    print("OnSubFinish7331702")
end

function Quest73317:OnSubStart7331703(arg1)
    print("OnSubStart7331703")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73317:OnSubFinish7331703(arg1)
    print("OnSubFinish7331703")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73317:OnSubStart7331708(arg1)
    print("OnSubStart7331708")
end

function Quest73317:OnSubFinish7331708(arg1)
    print("OnSubFinish7331708")
    this:NarratorOnlyTaskByData(datas.Narrator_7331702)
end

function Quest73317:OnSubStart7331704(arg1)
    print("OnSubStart7331704")
end

function Quest73317:OnSubFinish7331704(arg1)
    print("OnSubFinish7331704")
end

function Quest73317:OnSubStart7331705(arg1)
    print("OnSubStart7331705")
    this:CreateQuestNpc(arg1, npcs.Npc20963Data.id, 1)
end

function Quest73317:OnSubFinish7331705(arg1)
    print("OnSubFinish7331705")
end

function Quest73317:OnSubStart7331706(arg1)
    print("OnSubStart7331706")
end

function Quest73317:OnSubFinish7331706(arg1)
    print("OnSubFinish7331706")
end

function Quest73317:OnSubStart7331707(arg1)
    print("OnSubStart7331707")
end

function Quest73317:OnSubFinish7331707(arg1)
    print("OnSubFinish7331707")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(1.5, function(arg1)
            this:NpcDestroy(npcs.Npc20963Data.alias, 3)
        end)
    end)
end

function Quest73317:OnSubStart7331709(arg1)
    print("OnSubStart7331709")
end

function Quest73317:OnSubFinish7331709(arg1)
    print("OnSubFinish7331709")
end

return Quest73317
