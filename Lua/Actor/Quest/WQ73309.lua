require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73309 = class("Quest73309", QuestActorProxy)
Quest73309.defaultAlias = "Quest73309"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73309:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73309:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7330901"] = self.OnSubStart7330901,
        ["7330902"] = self.OnSubStart7330902,
        ["7330903"] = self.OnSubStart7330903,
        ["7330908"] = self.OnSubStart7330908,
        ["7330904"] = self.OnSubStart7330904,
        ["7330905"] = self.OnSubStart7330905,
        ["7330906"] = self.OnSubStart7330906,
        ["7330907"] = self.OnSubStart7330907,
        ["7330909"] = self.OnSubStart7330909
    }
end

function Quest73309:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7330901"] = self.OnSubFinish7330901,
        ["7330902"] = self.OnSubFinish7330902,
        ["7330903"] = self.OnSubFinish7330903,
        ["7330908"] = self.OnSubFinish7330908,
        ["7330904"] = self.OnSubFinish7330904,
        ["7330905"] = self.OnSubFinish7330905,
        ["7330906"] = self.OnSubFinish7330906,
        ["7330907"] = self.OnSubFinish7330907,
        ["7330909"] = self.OnSubFinish7330909
    }
end

function Quest73309:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73309:Start()
    print("Start")
end

function Quest73309:OnDestroy()
    print("OnDestroy")
end

function Quest73309:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73309:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73309:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20960Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7330902Trigger", 3, false)
end

function Quest73309:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73309:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73309:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73309:OnSubStart7330901(arg1)
    print("OnSubStart7330901")
end

function Quest73309:OnSubFinish7330901(arg1)
    print("OnSubFinish7330901")
end

function Quest73309:OnSubStart7330902(arg1)
    print("OnSubStart7330902")
    actorMgr:CreateActorWithPos("Q7330902Trigger", "Actor/Gadget/Q7330902Trigger", 70900002, 0, points.TPos_Q7330902Trigger.pos, points.TPos_Q7330902Trigger.rot, true, false, 3)
end

function Quest73309:OnSubFinish7330902(arg1)
    print("OnSubFinish7330902")
end

function Quest73309:OnSubStart7330903(arg1)
    print("OnSubStart7330903")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73309:OnSubFinish7330903(arg1)
    print("OnSubFinish7330903")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73309:OnSubStart7330908(arg1)
    print("OnSubStart7330908")
end

function Quest73309:OnSubFinish7330908(arg1)
    print("OnSubFinish7330908")
    this:NarratorOnlyTaskByData(datas.Narrator_7330902)
end

function Quest73309:OnSubStart7330904(arg1)
    print("OnSubStart7330904")
end

function Quest73309:OnSubFinish7330904(arg1)
    print("OnSubFinish7330904")
end

function Quest73309:OnSubStart7330905(arg1)
    print("OnSubStart7330905")
    this:CreateQuestNpc(arg1, npcs.Npc20960Data.id, 1)
end

function Quest73309:OnSubFinish7330905(arg1)
    print("OnSubFinish7330905")
end

function Quest73309:OnSubStart7330906(arg1)
    print("OnSubStart7330906")
end

function Quest73309:OnSubFinish7330906(arg1)
    print("OnSubFinish7330906")
end

function Quest73309:OnSubStart7330907(arg1)
    print("OnSubStart7330907")
end

function Quest73309:OnSubFinish7330907(arg1)
    print("OnSubFinish7330907")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(1.5, function(arg1)
            this:NpcDestroy(npcs.Npc20960Data.alias, 3)
        end)
    end)
end

function Quest73309:OnSubStart7330909(arg1)
    print("OnSubStart7330909")
end

function Quest73309:OnSubFinish7330909(arg1)
    print("OnSubFinish7330909")
end

return Quest73309
