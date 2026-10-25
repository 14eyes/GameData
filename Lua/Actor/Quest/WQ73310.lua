require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73310 = class("Quest73310", QuestActorProxy)
Quest73310.defaultAlias = "Quest73310"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73310:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73310:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7331001"] = self.OnSubStart7331001,
        ["7331002"] = self.OnSubStart7331002,
        ["7331003"] = self.OnSubStart7331003,
        ["7331008"] = self.OnSubStart7331008,
        ["7331004"] = self.OnSubStart7331004,
        ["7331005"] = self.OnSubStart7331005,
        ["7331006"] = self.OnSubStart7331006,
        ["7331007"] = self.OnSubStart7331007,
        ["7331009"] = self.OnSubStart7331009
    }
end

function Quest73310:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7331001"] = self.OnSubFinish7331001,
        ["7331002"] = self.OnSubFinish7331002,
        ["7331003"] = self.OnSubFinish7331003,
        ["7331008"] = self.OnSubFinish7331008,
        ["7331004"] = self.OnSubFinish7331004,
        ["7331005"] = self.OnSubFinish7331005,
        ["7331006"] = self.OnSubFinish7331006,
        ["7331007"] = self.OnSubFinish7331007,
        ["7331009"] = self.OnSubFinish7331009
    }
end

function Quest73310:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73310:Start()
    print("Start")
end

function Quest73310:OnDestroy()
    print("OnDestroy")
end

function Quest73310:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73310:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73310:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20965Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7331002Trigger", 3, false)
end

function Quest73310:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73310:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73310:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73310:OnSubStart7331001(arg1)
    print("OnSubStart7331001")
    actorUtils.FinishQuestID(false, 7331001)
end

function Quest73310:OnSubFinish7331001(arg1)
    print("OnSubFinish7331001")
end

function Quest73310:OnSubStart7331002(arg1)
    print("OnSubStart7331002")
    actorMgr:CreateActorWithPos("Q7331002Trigger", "Actor/Gadget/Q7331002Trigger", 70900002, 0, points.TPos_Q7331002Trigger.pos, points.TPos_Q7331002Trigger.rot, true, false, 3)
end

function Quest73310:OnSubFinish7331002(arg1)
    print("OnSubFinish7331002")
end

function Quest73310:OnSubStart7331003(arg1)
    print("OnSubStart7331003")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73310:OnSubFinish7331003(arg1)
    print("OnSubFinish7331003")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73310:OnSubStart7331008(arg1)
    print("OnSubStart7331008")
    actorUtils.FinishQuestID(false, 7331008)
end

function Quest73310:OnSubFinish7331008(arg1)
    print("OnSubFinish7331008")
    this:NarratorOnlyTaskByData(datas.Narrator_7331002)
end

function Quest73310:OnSubStart7331004(arg1)
    print("OnSubStart7331004")
end

function Quest73310:OnSubFinish7331004(arg1)
    print("OnSubFinish7331004")
end

function Quest73310:OnSubStart7331005(arg1)
    print("OnSubStart7331005")
    this:CreateQuestNpc(arg1, npcs.Npc20965Data.id, 1)
end

function Quest73310:OnSubFinish7331005(arg1)
    print("OnSubFinish7331005")
end

function Quest73310:OnSubStart7331006(arg1)
    print("OnSubStart7331006")
end

function Quest73310:OnSubFinish7331006(arg1)
    print("OnSubFinish7331006")
end

function Quest73310:OnSubStart7331007(arg1)
    print("OnSubStart7331007")
end

function Quest73310:OnSubFinish7331007(arg1)
    print("OnSubFinish7331007")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(1.5, function(arg1)
            this:NpcDestroy(npcs.Npc20965Data.alias, 3)
        end)
    end)
end

function Quest73310:OnSubStart7331009(arg1)
    print("OnSubStart7331009")
    actorUtils.FinishQuestID(false, 7331009)
end

function Quest73310:OnSubFinish7331009(arg1)
    print("OnSubFinish7331009")
end

return Quest73310
