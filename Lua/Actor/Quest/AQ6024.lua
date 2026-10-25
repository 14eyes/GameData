require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6024 = class("Quest6024", QuestActorProxy)
Quest6024.defaultAlias = "Quest6024"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6024:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["602401"] = self.OnSubStart602401,
        ["602402"] = self.OnSubStart602402,
        ["602403"] = self.OnSubStart602403,
        ["602404"] = self.OnSubStart602404,
        ["602409"] = self.OnSubStart602409,
        ["602405"] = self.OnSubStart602405,
        ["602406"] = self.OnSubStart602406,
        ["602407"] = self.OnSubStart602407,
        ["602408"] = self.OnSubStart602408,
        ["602410"] = self.OnSubStart602410,
        ["602413"] = self.OnSubStart602413,
        ["602411"] = self.OnSubStart602411,
        ["602412"] = self.OnSubStart602412,
        ["602414"] = self.OnSubStart602414
    }
end

function Quest6024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["602401"] = self.OnSubFinish602401,
        ["602402"] = self.OnSubFinish602402,
        ["602403"] = self.OnSubFinish602403,
        ["602404"] = self.OnSubFinish602404,
        ["602409"] = self.OnSubFinish602409,
        ["602405"] = self.OnSubFinish602405,
        ["602406"] = self.OnSubFinish602406,
        ["602407"] = self.OnSubFinish602407,
        ["602408"] = self.OnSubFinish602408,
        ["602410"] = self.OnSubFinish602410,
        ["602413"] = self.OnSubFinish602413,
        ["602411"] = self.OnSubFinish602411,
        ["602412"] = self.OnSubFinish602412,
        ["602414"] = self.OnSubFinish602414
    }
end

function Quest6024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["602402"] = self.OnSubFailed602402,
        ["602403"] = self.OnSubFailed602403,
        ["602404"] = self.OnSubFailed602404,
        ["602405"] = self.OnSubFailed602405,
        ["602406"] = self.OnSubFailed602406,
        ["602407"] = self.OnSubFailed602407,
        ["602408"] = self.OnSubFailed602408
    }
end

function Quest6024:Start()
    print("Start")
end

function Quest6024:OnDestroy()
    print("OnDestroy")
end

function Quest6024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6024:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q602407Trigger")
    this:ActorDestroy("Q602410Trigger")
    this:ActorDestroy("Q602412Trigger")
end

function Quest6024:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 602413)
    end
end

function Quest6024:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6024:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6024:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6024:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest6024:OnSubStart602401(arg1)
    print("OnSubStart602401")
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1310.alias, 6024):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6024):DoFreeStyle(1340, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6024):DisableInteeHeadCtrl(true)
end

function Quest6024:OnSubFinish602401(arg1)
    print("OnSubFinish602401")
end

function Quest6024:OnSubStart602402(arg1)
    print("OnSubStart602402")
    this:NpcCreateWithNpcTriggerAndBlackscreen(602402, 0, 10, 1, npcs.Npc1322.id)
end

function Quest6024:OnSubFinish602402(arg1)
    print("OnSubFinish602402")
    this:NpcDestroyImmediately(20296, npcs.Npc1322.alias)
end

function Quest6024:OnSubFailed602402(arg1)
    print("OnSubFailed602402")
    this:NpcDestroyImmediately(20296, npcs.Npc1322.alias)
    this:ActorDestroy("Q602402N1322Trigger")
end

function Quest6024:OnSubStart602403(arg1)
    print("OnSubStart602403")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110602400)
    end)
end

function Quest6024:OnSubFinish602403(arg1)
    print("OnSubFinish602403")
end

function Quest6024:OnSubFailed602403(arg1)
    print("OnSubFailed602403")
    this:CancelStoryByQuest(110602400)
end

function Quest6024:OnSubStart602404(arg1)
    print("OnSubStart602404")
    this:CreateNpcWithCameraLookTrigger("Q602404N1322Trigger", 602404, 1322, 0, 5, 602404, true)
    this:DeployStoryByQuest(110602400)
end

function Quest6024:OnSubFinish602404(arg1)
    print("OnSubFinish602404")
    this:NpcDestroyImmediately(20296, npcs.Npc1322.alias)
end

function Quest6024:OnSubFailed602404(arg1)
    print("OnSubFailed602404")
    this:NpcDestroyImmediately(20296, npcs.Npc1322.alias)
    this:CancelStoryByQuest(110602400)
    this:ActorDestroy("Q602404N1322Trigger")
end

function Quest6024:OnSubStart602409(arg1)
    print("OnSubStart602409")
end

function Quest6024:OnSubFinish602409(arg1)
    print("OnSubFinish602409")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_602401, nil)
    end)
end

function Quest6024:OnSubStart602405(arg1)
    print("OnSubStart602405")
    this:CreateNpcWithCameraLookTrigger("Q602405N1322Trigger", 602405, 1322, 0, 12, 602405, true)
    this:DeployStoryByQuest(110602400)
end

function Quest6024:OnSubFinish602405(arg1)
    print("OnSubFinish602405")
    this:NpcDestroyImmediately(20296, npcs.Npc1322.alias)
    this:ActionSafeCall(function(arg1)
        this:ClearNarratorTask()
    end)
end

function Quest6024:OnSubFailed602405(arg1)
    print("OnSubFailed602405")
    this:NpcDestroyImmediately(20296, npcs.Npc1322.alias)
    this:CancelStoryByQuest(110602400)
    this:ClearNarratorTask()
    this:ActorDestroy("Q602405N1322Trigger")
end

function Quest6024:OnSubStart602406(arg1)
    print("OnSubStart602406")
    this:DeployStoryByQuest(110602400)
end

function Quest6024:OnSubFinish602406(arg1)
    print("OnSubFinish602406")
end

function Quest6024:OnSubFailed602406(arg1)
    print("OnSubFailed602406")
    this:CancelStoryByQuest(110602400)
end

function Quest6024:OnSubStart602407(arg1)
    print("OnSubStart602407")
    actorMgr:CreateActorWithPos("Q602407Trigger", "Actor/Gadget/Q602407Trigger", 70900002, 0, points._Q602407TriggerPoint_.pos, points._Q602407TriggerPoint_.rot, true, false, 20296)
    this:DeployStoryByQuest(110602400)
end

function Quest6024:OnSubFinish602407(arg1)
    print("OnSubFinish602407")
    this:ActorDestroy("Q602407Trigger")
end

function Quest6024:OnSubFailed602407(arg1)
    print("OnSubFailed602407")
    this:ActorDestroy("Q602407Trigger")
    this:CancelStoryByQuest(110602400)
end

function Quest6024:OnSubStart602408(arg1)
    print("OnSubStart602408")
    this:CreateNpcWithCameraLookTrigger("Q602408N1322Trigger", 602408, 1322, 0, 20, 602406, true)
end

function Quest6024:OnSubFinish602408(arg1)
    print("OnSubFinish602408")
    this:NpcDestroyImmediately(3, npcs.Npc1310.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
    this:NpcDestroyImmediately(20296, npcs.Npc1322.alias)
end

function Quest6024:OnSubFailed602408(arg1)
    print("OnSubFailed602408")
    this:NpcDestroyImmediately(20296, npcs.Npc1322.alias)
    this:ActorDestroy("Q602408N1322Trigger")
end

function Quest6024:OnSubStart602410(arg1)
    print("OnSubStart602410")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16186.id, 0, 602410, 40, true)
    actorMgr:CreateActorWithPos("Q602410Trigger", "Actor/Gadget/Q602410Trigger", 70900002, 0, points._Q602410TriggerPoint_.pos, points._Q602410TriggerPoint_.rot, true, false, 20296)
end

function Quest6024:OnSubFinish602410(arg1)
    print("OnSubFinish602410")
    this:NpcDestroyImmediately(3, npcs.Npc16186.alias)
    this:ActorDestroy("Q602410Trigger")
end

function Quest6024:OnSubStart602413(arg1)
    print("OnSubStart602413")
end

function Quest6024:OnSubFinish602413(arg1)
    print("OnSubFinish602413")
end

function Quest6024:OnSubStart602411(arg1)
    print("OnSubStart602411")
    this:NpcCreateWithNpcTriggerAndBlackscreen(602411, 0, 40, 1, npcs.Npc1318.id)
end

function Quest6024:OnSubFinish602411(arg1)
    print("OnSubFinish602411")
    this:NpcDestroyImmediately(3, npcs.Npc1318.alias)
end

function Quest6024:OnSubStart602412(arg1)
    print("OnSubStart602412")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1318.id, 0, 602412, 30, true)
    actorMgr:CreateActorWithPos("Q602412Trigger", "Actor/Gadget/Q602412Trigger", 70900002, 0, points._Q602412TriggerPoint_.pos, points._Q602412TriggerPoint_.rot, true, false, 3)
end

function Quest6024:OnSubFinish602412(arg1)
    print("OnSubFinish602412")
    this:NpcDestroyImmediately(3, npcs.Npc1318.alias)
    this:ActorDestroy("Q602412Trigger")
    this:PlayerEnterDungeonWithData(1814, 1282, 602412, 1, datas.PlayerEnterDungeonData, nil, nil)
end

function Quest6024:OnSubStart602414(arg1)
    print("OnSubStart602414")
    actorUtils.FinishQuestID(false, 602414)
end

function Quest6024:OnSubFinish602414(arg1)
    print("OnSubFinish602414")
end

return Quest6024
