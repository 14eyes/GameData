require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73314 = class("Quest73314", QuestActorProxy)
Quest73314.defaultAlias = "Quest73314"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73314:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73314:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7331401"] = self.OnSubStart7331401,
        ["7331402"] = self.OnSubStart7331402,
        ["7331403"] = self.OnSubStart7331403,
        ["7331408"] = self.OnSubStart7331408,
        ["7331404"] = self.OnSubStart7331404,
        ["7331405"] = self.OnSubStart7331405,
        ["7331406"] = self.OnSubStart7331406,
        ["7331407"] = self.OnSubStart7331407,
        ["7331409"] = self.OnSubStart7331409
    }
end

function Quest73314:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7331401"] = self.OnSubFinish7331401,
        ["7331402"] = self.OnSubFinish7331402,
        ["7331403"] = self.OnSubFinish7331403,
        ["7331408"] = self.OnSubFinish7331408,
        ["7331404"] = self.OnSubFinish7331404,
        ["7331405"] = self.OnSubFinish7331405,
        ["7331406"] = self.OnSubFinish7331406,
        ["7331407"] = self.OnSubFinish7331407,
        ["7331409"] = self.OnSubFinish7331409
    }
end

function Quest73314:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73314:Start()
    print("Start")
end

function Quest73314:OnDestroy()
    print("OnDestroy")
end

function Quest73314:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73314:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73314:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20959Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7331402Trigger", 3, false)
end

function Quest73314:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73314:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73314:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73314:OnSubStart7331401(arg1)
    print("OnSubStart7331401")
end

function Quest73314:OnSubFinish7331401(arg1)
    print("OnSubFinish7331401")
end

function Quest73314:OnSubStart7331402(arg1)
    print("OnSubStart7331402")
    actorMgr:CreateActorWithPos("Q7331402Trigger", "Actor/Gadget/Q7331402Trigger", 70900002, 0, points.TPos_Q7331402Trigger.pos, points.TPos_Q7331402Trigger.rot, true, false, 3)
end

function Quest73314:OnSubFinish7331402(arg1)
    print("OnSubFinish7331402")
end

function Quest73314:OnSubStart7331403(arg1)
    print("OnSubStart7331403")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73314:OnSubFinish7331403(arg1)
    print("OnSubFinish7331403")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73314:OnSubStart7331408(arg1)
    print("OnSubStart7331408")
end

function Quest73314:OnSubFinish7331408(arg1)
    print("OnSubFinish7331408")
    this:NarratorOnlyTaskByData(datas.Narrator_7331402)
end

function Quest73314:OnSubStart7331404(arg1)
    print("OnSubStart7331404")
end

function Quest73314:OnSubFinish7331404(arg1)
    print("OnSubFinish7331404")
end

function Quest73314:OnSubStart7331405(arg1)
    print("OnSubStart7331405")
    this:CreateQuestNpc(arg1, npcs.Npc20959Data.id, 1)
end

function Quest73314:OnSubFinish7331405(arg1)
    print("OnSubFinish7331405")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, false)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20959Data.alias)
end

function Quest73314:OnSubStart7331406(arg1)
    print("OnSubStart7331406")
end

function Quest73314:OnSubFinish7331406(arg1)
    print("OnSubFinish7331406")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, false)
end

function Quest73314:OnSubStart7331407(arg1)
    print("OnSubStart7331407")
    this:CreateQuestNpc(arg1, npcs.Npc20959Data.id, 1)
end

function Quest73314:OnSubFinish7331407(arg1)
    print("OnSubFinish7331407")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(1.5, function(arg1)
            this:NpcDestroy(npcs.Npc20959Data.alias, 3)
        end)
    end)
end

function Quest73314:OnSubStart7331409(arg1)
    print("OnSubStart7331409")
end

function Quest73314:OnSubFinish7331409(arg1)
    print("OnSubFinish7331409")
end

return Quest73314
