require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75076 = class("Quest75076", QuestActorProxy)
Quest75076.defaultAlias = "Quest75076"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75076:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75076:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7507601"] = self.OnSubStart7507601,
        ["7507602"] = self.OnSubStart7507602,
        ["7507603"] = self.OnSubStart7507603,
        ["7507604"] = self.OnSubStart7507604,
        ["7507605"] = self.OnSubStart7507605,
        ["7507606"] = self.OnSubStart7507606,
        ["7507607"] = self.OnSubStart7507607,
        ["7507608"] = self.OnSubStart7507608,
        ["7507609"] = self.OnSubStart7507609,
        ["7507610"] = self.OnSubStart7507610,
        ["7507612"] = self.OnSubStart7507612,
        ["7507611"] = self.OnSubStart7507611,
        ["7507613"] = self.OnSubStart7507613,
        ["7507614"] = self.OnSubStart7507614
    }
end

function Quest75076:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7507601"] = self.OnSubFinish7507601,
        ["7507602"] = self.OnSubFinish7507602,
        ["7507603"] = self.OnSubFinish7507603,
        ["7507604"] = self.OnSubFinish7507604,
        ["7507605"] = self.OnSubFinish7507605,
        ["7507606"] = self.OnSubFinish7507606,
        ["7507607"] = self.OnSubFinish7507607,
        ["7507608"] = self.OnSubFinish7507608,
        ["7507609"] = self.OnSubFinish7507609,
        ["7507610"] = self.OnSubFinish7507610,
        ["7507612"] = self.OnSubFinish7507612,
        ["7507611"] = self.OnSubFinish7507611,
        ["7507613"] = self.OnSubFinish7507613,
        ["7507614"] = self.OnSubFinish7507614
    }
end

function Quest75076:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7507612"] = self.OnSubFailed7507612}
end

function Quest75076:Start()
    print("Start")
end

function Quest75076:OnDestroy()
    print("OnDestroy")
end

function Quest75076:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75076:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75076:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75076:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75076:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest75076:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75076:OnSubStart7507601(arg1)
    print("OnSubStart7507601")
    this:CreateQuestNpc(arg1, npcs.Npc21705_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7507601Trigger", "Actor/Gadget/Q7507601Trigger", 70900002, 0, points._Q7507601TriggerPoint_.pos, points._Q7507601TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7507601Trigger_2", "Actor/Gadget/Q7507601Trigger_2", 70900002, 0, points._Q7507601Trigger_2Point_.pos, points._Q7507601Trigger_2Point_.rot, true, false, 3)
    this:DeployStoryByQuest(147507601)
end

function Quest75076:OnSubFinish7507601(arg1)
    print("OnSubFinish7507601")
    this:SetNavigationByMainId(75076, true)
    this:ActorDestroy("Q7507601Trigger")
end

function Quest75076:OnSubStart7507602(arg1)
    print("OnSubStart7507602")
    this:CreateQuestNpc(arg1, npcs.Npc21705_1.id, 0, false, 0)
end

function Quest75076:OnSubFinish7507602(arg1)
    print("OnSubFinish7507602")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:CallDelay(2, function(arg1)
            this:PlayCutsceneIndex(7507601, function(arg1)
                this:CallDelay(2, function(arg1)
                    this:QuestNarratorTask(datas.NarratorWithId, nil)
                end)
            end, nil, nil, false)
        end)
    end)
end

function Quest75076:OnSubStart7507603(arg1)
    print("OnSubStart7507603")
end

function Quest75076:OnSubFinish7507603(arg1)
    print("OnSubFinish7507603")
end

function Quest75076:OnSubStart7507604(arg1)
    print("OnSubStart7507604")
    this:CreateQuestNpc(arg1, npcs.Npc21705_1.id, 0, false, 0)
end

function Quest75076:OnSubFinish7507604(arg1)
    print("OnSubFinish7507604")
end

function Quest75076:OnSubStart7507605(arg1)
    print("OnSubStart7507605")
end

function Quest75076:OnSubFinish7507605(arg1)
    print("OnSubFinish7507605")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:CallDelay(2, function(arg1)
            this:PlayCutsceneIndex(7507602, function(arg1)
                this:CallDelay(2, function(arg1)
                    this:NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.NarratorWithId_7507603, nil, nil, 0)
                end)
            end, nil, nil, false)
        end)
    end)
end

function Quest75076:OnSubStart7507606(arg1)
    print("OnSubStart7507606")
    this:CreateQuestNpc(arg1, npcs.Npc21705_1.id, 0, false, 0)
end

function Quest75076:OnSubFinish7507606(arg1)
    print("OnSubFinish7507606")
end

function Quest75076:OnSubStart7507607(arg1)
    print("OnSubStart7507607")
end

function Quest75076:OnSubFinish7507607(arg1)
    print("OnSubFinish7507607")
end

function Quest75076:OnSubStart7507608(arg1)
    print("OnSubStart7507608")
    this:CreateQuestNpc(arg1, npcs.Npc21705_1.id, 0, false, 0)
end

function Quest75076:OnSubFinish7507608(arg1)
    print("OnSubFinish7507608")
    this:NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.NarratorWithId_7507609, nil, nil, 0)
end

function Quest75076:OnSubStart7507609(arg1)
    print("OnSubStart7507609")
    this:CreateQuestNpc(arg1, npcs.Npc21705_1.id, 0, false, 0)
end

function Quest75076:OnSubFinish7507609(arg1)
    print("OnSubFinish7507609")
end

function Quest75076:OnSubStart7507610(arg1)
    print("OnSubStart7507610")
    this:CreateQuestNpc(arg1, npcs.Npc21705_1.id, 0, false, 0)
end

function Quest75076:OnSubFinish7507610(arg1)
    print("OnSubFinish7507610")
end

function Quest75076:OnSubStart7507612(arg1)
    print("OnSubStart7507612")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21742.id, 0, 7507612, 60, false)
end

function Quest75076:OnSubFinish7507612(arg1)
    print("OnSubFinish7507612")
    this:NpcDestroyWithDither(3, npcs.Npc21742.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21705_1.alias, 3)
    this:TransmitPlayerUseCustomizedTplById(arg1, 2, 41)
end

function Quest75076:OnSubFailed7507612(arg1)
    print("OnSubFailed7507612")
    this:NpcDestroyWithDither(3, npcs.Npc21742.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21705_1.alias, 3)
    this:DestroyNpcTrigger("Q7507612N21742Trigger")
end

function Quest75076:OnSubStart7507611(arg1)
    print("OnSubStart7507611")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q7507611Trigger", "Actor/Gadget/Q7507611Trigger", 70900002, 0, points._Q7507611TriggerPoint_.pos, points._Q7507611TriggerPoint_.rot, true, false, 3)
    end)
end

function Quest75076:OnSubFinish7507611(arg1)
    print("OnSubFinish7507611")
end

function Quest75076:OnSubStart7507613(arg1)
    print("OnSubStart7507613")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:CallDelay(2, function(arg1)
            this:PlayCutsceneIndex(7507603, function(arg1)
                actorUtils.FinishQuestID(false, 7507613)
            end, nil, nil, false)
        end)
    end)
end

function Quest75076:OnSubFinish7507613(arg1)
    print("OnSubFinish7507613")
end

function Quest75076:OnSubStart7507614(arg1)
    print("OnSubStart7507614")
    actorMgr:CreateActorWithPos("Q7507614Trigger", "Actor/Gadget/Q7507614Trigger", 70900002, 0, points._Q7507614TriggerPoint_.pos, points._Q7507614TriggerPoint_.rot, true, false, 3)
end

function Quest75076:OnSubFinish7507614(arg1)
    print("OnSubFinish7507614")
end

return Quest75076
