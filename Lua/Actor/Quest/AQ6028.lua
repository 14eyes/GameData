require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6028 = class("Quest6028", QuestActorProxy)
Quest6028.defaultAlias = "Quest6028"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6028:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["602801"] = self.OnSubStart602801,
        ["602802"] = self.OnSubStart602802,
        ["602803"] = self.OnSubStart602803,
        ["602804"] = self.OnSubStart602804,
        ["602805"] = self.OnSubStart602805
    }
end

function Quest6028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["602801"] = self.OnSubFinish602801,
        ["602802"] = self.OnSubFinish602802,
        ["602803"] = self.OnSubFinish602803,
        ["602804"] = self.OnSubFinish602804,
        ["602805"] = self.OnSubFinish602805
    }
end

function Quest6028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["602802"] = self.OnSubFailed602802, ["602803"] = self.OnSubFailed602803}
end

function Quest6028:Start()
    print("Start")
end

function Quest6028:OnDestroy()
    print("OnDestroy")
end

function Quest6028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6028:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q602805Trigger")
    this:ActorDestroy("Q602804Trigger")
    this:ActorDestroy("Q602801Trigger")
end

function Quest6028:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6028:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6028:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6028:OnSubStart602801(arg1)
    print("OnSubStart602801")
    actorMgr:CreateActorWithPos("Q602801Trigger", "Actor/Gadget/Q602801Trigger", 70900002, 0, points._Q602801TriggerPoint_.pos, points._Q602801TriggerPoint_.rot, true, false, 20303)
end

function Quest6028:OnSubFinish602801(arg1)
    print("OnSubFinish602801")
    this:ActorDestroy("Q602801Trigger")
end

function Quest6028:OnSubStart602802(arg1)
    print("OnSubStart602802")
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
    actorUtils.BanUIByQuest(16, true, 6027)
    actorUtils.BanUIByQuest(27, true, 6027)
    this:DeployStoryByQuest(110602800)
end

function Quest6028:OnSubFinish602802(arg1)
    print("OnSubFinish602802")
    this:CancelStoryByQuest(110602800)
end

function Quest6028:OnSubFailed602802(arg1)
    print("OnSubFailed602802")
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
    actorUtils.BanUIByQuest(16, false, 6027)
    actorUtils.BanUIByQuest(27, false, 6027)
    this:CancelStoryByQuest(110602800)
end

function Quest6028:OnSubStart602803(arg1)
    print("OnSubStart602803")
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
    actorUtils.BanUIByQuest(16, true, 6027)
    actorUtils.BanUIByQuest(27, true, 6027)
    this:CreateNpcWithCameraLookTrigger("Q602803N1315Trigger", 602803, 1080, 0, 39, 602802, true)
end

function Quest6028:OnSubFinish602803(arg1)
    print("OnSubFinish602803")
    this:NpcDestroyImmediately(20296, npcs.Npc1080.alias)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
    actorUtils.BanUIByQuest(16, false, 6027)
    actorUtils.BanUIByQuest(27, false, 6027)
    this:ClearNarratorTask()
end

function Quest6028:OnSubFailed602803(arg1)
    print("OnSubFailed602803")
    this:NpcDestroyImmediately(20296, npcs.Npc1080.alias)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
    actorUtils.BanUIByQuest(16, false, 6027)
    actorUtils.BanUIByQuest(27, false, 6027)
    this:ActorDestroy("Q602803N1315Trigger")
    this:ClearNarratorTask()
end

function Quest6028:OnSubStart602804(arg1)
    print("OnSubStart602804")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1315.id, 0, 602804, 40, true)
    actorMgr:CreateActorWithPos("Q602804Trigger", "Actor/Gadget/Q602804Trigger", 70900002, 0, points._Q602804TriggerPoint_.pos, points._Q602804TriggerPoint_.rot, true, false, 20296)
end

function Quest6028:OnSubFinish602804(arg1)
    print("OnSubFinish602804")
    this:NpcDestroyImmediately(1205, npcs.Npc1315.alias)
    this:ActorDestroy("Q602804Trigger")
end

function Quest6028:OnSubStart602805(arg1)
    print("OnSubStart602805")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16149.id, 0, 602805, 20, true)
    actorMgr:CreateActorWithPos("Q602805Trigger", "Actor/Gadget/Q602805Trigger", 70900002, 0, points._Q602805TriggerPoint_.pos, points._Q602805TriggerPoint_.rot, true, false, 1205)
end

function Quest6028:OnSubFinish602805(arg1)
    print("OnSubFinish602805")
    this:NpcDestroyImmediately(3, npcs.Npc16149.alias)
    this:ActorDestroy("Q602805Trigger")
end

return Quest6028
