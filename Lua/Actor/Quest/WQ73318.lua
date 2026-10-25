require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73318 = class("Quest73318", QuestActorProxy)
Quest73318.defaultAlias = "Quest73318"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73318:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73318:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7331801"] = self.OnSubStart7331801,
        ["7331802"] = self.OnSubStart7331802,
        ["7331803"] = self.OnSubStart7331803,
        ["7331808"] = self.OnSubStart7331808,
        ["7331804"] = self.OnSubStart7331804,
        ["7331805"] = self.OnSubStart7331805,
        ["7331806"] = self.OnSubStart7331806,
        ["7331810"] = self.OnSubStart7331810,
        ["7331811"] = self.OnSubStart7331811,
        ["7331813"] = self.OnSubStart7331813,
        ["7331807"] = self.OnSubStart7331807,
        ["7331809"] = self.OnSubStart7331809
    }
end

function Quest73318:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7331801"] = self.OnSubFinish7331801,
        ["7331802"] = self.OnSubFinish7331802,
        ["7331803"] = self.OnSubFinish7331803,
        ["7331808"] = self.OnSubFinish7331808,
        ["7331804"] = self.OnSubFinish7331804,
        ["7331805"] = self.OnSubFinish7331805,
        ["7331806"] = self.OnSubFinish7331806,
        ["7331810"] = self.OnSubFinish7331810,
        ["7331811"] = self.OnSubFinish7331811,
        ["7331813"] = self.OnSubFinish7331813,
        ["7331807"] = self.OnSubFinish7331807,
        ["7331809"] = self.OnSubFinish7331809
    }
end

function Quest73318:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73318:Start()
    print("Start")
end

function Quest73318:OnDestroy()
    print("OnDestroy")
end

function Quest73318:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73318:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73318:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20953Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7331802Trigger", 3, false)
end

function Quest73318:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73318:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73318:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73318:OnSubStart7331801(arg1)
    print("OnSubStart7331801")
end

function Quest73318:OnSubFinish7331801(arg1)
    print("OnSubFinish7331801")
end

function Quest73318:OnSubStart7331802(arg1)
    print("OnSubStart7331802")
    actorMgr:CreateActorWithPos("Q7331802Trigger", "Actor/Gadget/Q7331802Trigger", 70900002, 0, points.TPos_Q7331802Trigger.pos, points.TPos_Q7331802Trigger.rot, true, false, 3)
end

function Quest73318:OnSubFinish7331802(arg1)
    print("OnSubFinish7331802")
end

function Quest73318:OnSubStart7331803(arg1)
    print("OnSubStart7331803")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73318:OnSubFinish7331803(arg1)
    print("OnSubFinish7331803")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73318:OnSubStart7331808(arg1)
    print("OnSubStart7331808")
end

function Quest73318:OnSubFinish7331808(arg1)
    print("OnSubFinish7331808")
    this:NarratorOnlyTaskByData(datas.Narrator_7331802)
end

function Quest73318:OnSubStart7331804(arg1)
    print("OnSubStart7331804")
end

function Quest73318:OnSubFinish7331804(arg1)
    print("OnSubFinish7331804")
end

function Quest73318:OnSubStart7331805(arg1)
    print("OnSubStart7331805")
    this:CreateQuestNpc(arg1, npcs.Npc20953Data.id, 1)
end

function Quest73318:OnSubFinish7331805(arg1)
    print("OnSubFinish7331805")
end

function Quest73318:OnSubStart7331806(arg1)
    print("OnSubStart7331806")
end

function Quest73318:OnSubFinish7331806(arg1)
    print("OnSubFinish7331806")
end

function Quest73318:OnSubStart7331810(arg1)
    print("OnSubStart7331810")
end

function Quest73318:OnSubFinish7331810(arg1)
    print("OnSubFinish7331810")
end

function Quest73318:OnSubStart7331811(arg1)
    print("OnSubStart7331811")
end

function Quest73318:OnSubFinish7331811(arg1)
    print("OnSubFinish7331811")
end

function Quest73318:OnSubStart7331813(arg1)
    print("OnSubStart7331813")
end

function Quest73318:OnSubFinish7331813(arg1)
    print("OnSubFinish7331813")
end

function Quest73318:OnSubStart7331807(arg1)
    print("OnSubStart7331807")
end

function Quest73318:OnSubFinish7331807(arg1)
    print("OnSubFinish7331807")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(1.5, function(arg1)
            this:NpcDestroy(npcs.Npc20953Data.alias, 3)
        end)
    end)
end

function Quest73318:OnSubStart7331809(arg1)
    print("OnSubStart7331809")
end

function Quest73318:OnSubFinish7331809(arg1)
    print("OnSubFinish7331809")
end

return Quest73318
