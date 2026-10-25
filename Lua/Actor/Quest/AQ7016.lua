require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7016 = class("Quest7016", QuestActorProxy)
Quest7016.defaultAlias = "Quest7016"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7016:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["701601"] = self.OnSubStart701601,
        ["701619"] = self.OnSubStart701619,
        ["701616"] = self.OnSubStart701616,
        ["701617"] = self.OnSubStart701617,
        ["701618"] = self.OnSubStart701618,
        ["701602"] = self.OnSubStart701602,
        ["701603"] = self.OnSubStart701603,
        ["701605"] = self.OnSubStart701605,
        ["701604"] = self.OnSubStart701604,
        ["701614"] = self.OnSubStart701614,
        ["701606"] = self.OnSubStart701606,
        ["701612"] = self.OnSubStart701612,
        ["701607"] = self.OnSubStart701607,
        ["701613"] = self.OnSubStart701613,
        ["701608"] = self.OnSubStart701608,
        ["701609"] = self.OnSubStart701609,
        ["701610"] = self.OnSubStart701610,
        ["701611"] = self.OnSubStart701611,
        ["701615"] = self.OnSubStart701615
    }
end

function Quest7016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["701601"] = self.OnSubFinish701601,
        ["701619"] = self.OnSubFinish701619,
        ["701616"] = self.OnSubFinish701616,
        ["701617"] = self.OnSubFinish701617,
        ["701618"] = self.OnSubFinish701618,
        ["701602"] = self.OnSubFinish701602,
        ["701603"] = self.OnSubFinish701603,
        ["701605"] = self.OnSubFinish701605,
        ["701604"] = self.OnSubFinish701604,
        ["701614"] = self.OnSubFinish701614,
        ["701606"] = self.OnSubFinish701606,
        ["701612"] = self.OnSubFinish701612,
        ["701607"] = self.OnSubFinish701607,
        ["701613"] = self.OnSubFinish701613,
        ["701608"] = self.OnSubFinish701608,
        ["701609"] = self.OnSubFinish701609,
        ["701610"] = self.OnSubFinish701610,
        ["701611"] = self.OnSubFinish701611,
        ["701615"] = self.OnSubFinish701615
    }
end

function Quest7016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["701616"] = self.OnSubFailed701616, ["701608"] = self.OnSubFailed701608}
end

function Quest7016:Start()
    print("Start")
end

function Quest7016:OnDestroy()
    print("OnDestroy")
end

function Quest7016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7016:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q701602Trigger", 7016)
    this:ActorDestroy("Q701613Trigger", 7016)
    this:ActorDestroy("Q701619Trigger", 7016)
end

function Quest7016:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueInt == 6767 then
        this:QuestNarratorTask(datas.NarratorWithId_701603, nil)
    end
end

function Quest7016:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest7016:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7016:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7016:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest7016:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest7016:OnSubStart701601(arg1)
    print("OnSubStart701601")
    this:NpcCreateWithNpcTrigger(npcs.Npc1338.id, 0, 17, 701601)
end

function Quest7016:OnSubFinish701601(arg1)
    print("OnSubFinish701601")
    this:NpcDestroyImmediately(1158, npcs.Npc1338.alias)
end

function Quest7016:OnSubStart701619(arg1)
    print("OnSubStart701619")
    actorMgr:CreateActorWithPos("Q701619Trigger", "Actor/Gadget/Q701619Trigger", 70900002, 0, points._Q701619TriggerPoint_.pos, points._Q701619TriggerPoint_.rot, true, false, 1158, nil, 0, 7016)
end

function Quest7016:OnSubFinish701619(arg1)
    print("OnSubFinish701619")
end

function Quest7016:OnSubStart701616(arg1)
    print("OnSubStart701616")
end

function Quest7016:OnSubFinish701616(arg1)
    print("OnSubFinish701616")
end

function Quest7016:OnSubFailed701616(arg1)
    print("OnSubFailed701616")
    this:RecycleAllRes()
end

function Quest7016:OnSubStart701617(arg1)
    print("OnSubStart701617")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701617, 0, 20, 0, npcs.Npc17009.id)
end

function Quest7016:OnSubFinish701617(arg1)
    print("OnSubFinish701617")
    this:NpcDestroyImmediately(1158, npcs.Npc17009.alias)
end

function Quest7016:OnSubStart701618(arg1)
    print("OnSubStart701618")
    this:CreateQuestNpc(arg1, npcs.Npc7422.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7431.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc17009.id, 0, 5, 701618)
    this:GetQuestNpcActor(npcs.Npc7422.alias, 7016):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc7431.alias, 7016):SitOnChair(0, true)
end

function Quest7016:OnSubFinish701618(arg1)
    print("OnSubFinish701618")
    this:NpcDestroyImmediately(1158, npcs.Npc17009.alias)
end

function Quest7016:OnSubStart701602(arg1)
    print("OnSubStart701602")
    this:CreateQuestNpc(arg1, npcs.Npc17009.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1332.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7422.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7431.id, 0, false, 0)
    this:NotifyTo(npcs.Npc7545.alias, 1, true)
    this:NotifyTo(npcs.Npc7449.alias, 1, true)
    this:NotifyTo(npcs.Npc7525.alias, 1, true)
    this:NotifyTo(npcs.Npc7526.alias, 1, true)
    this:NotifyTo(npcs.Npc7448.alias, 1, true)
    this:NotifyTo(npcs.Npc7447.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc7422.alias, 7016):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc7431.alias, 7016):SitOnChair(0, true)
    this:DeployStoryByQuest(110701600)
    this:NotifyTo(npcs.Npc3460.alias, 1, true)
    this:NotifyTo(npcs.Npc3460.alias, 1, true)
    this:NotifyTo(npcs.Npc3459.alias, 1, true)
    this:NotifyTo(npcs.Npc3432.alias, 1, true)
    this:NotifyTo(npcs.Npc3442.alias, 1, true)
    this:NotifyTo(npcs.Npc3431.alias, 1, true)
    this:NotifyTo(npcs.Npc3444.alias, 1, true)
    this:NotifyTo(npcs.Npc7446.alias, 1, true)
    this:NotifyTo("Npc3512", 1, true)
    this:NotifyTo("Npc3507", 1, true)
    this:NotifyTo("Npc7454", 1, true)
    this:NotifyTo("Npc7526", 1, true)
    this:NotifyTo("Npc3424", 1, true)
end

function Quest7016:OnSubFinish701602(arg1)
    print("OnSubFinish701602")
    this:NpcDestroyImmediately(3, npcs.Npc17009.alias)
    this:NpcDestroyImmediately(1158, npcs.Npc7422.alias)
    this:NpcDestroyImmediately(1158, npcs.Npc7431.alias)
end

function Quest7016:OnSubStart701603(arg1)
    print("OnSubStart701603")
    this:NpcCreateWithNpcTrigger(npcs.Npc1332.id, 0, 10, 701603)
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    this:NotifyTo(npcs.Npc7447.alias, 1, true)
    this:NotifyTo(npcs.Npc7448.alias, 1, true)
    this:NotifyTo(npcs.Npc7449.alias, 1, true)
    this:NotifyTo(npcs.Npc7545.alias, 1, true)
    this:NotifyTo(npcs.Npc7525.alias, 1, true)
    this:NotifyTo(npcs.Npc7526.alias, 1, true)
    this:NotifyTo(npcs.Npc3477.alias, 1, true)
end

function Quest7016:OnSubFinish701603(arg1)
    print("OnSubFinish701603")
    this:NpcDestroyImmediately(3, npcs.Npc1332.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1335.alias)
end

function Quest7016:OnSubStart701605(arg1)
    print("OnSubStart701605")
    this:NpcCreateWithNpcTrigger(npcs.Npc1331.id, 0, 10, 701605)
    this:NotifyTo(npcs.Npc7447.alias, 1, true)
    this:NotifyTo(npcs.Npc7448.alias, 1, true)
    this:NotifyTo(npcs.Npc7449.alias, 1, true)
    this:NotifyTo(npcs.Npc7545.alias, 1, true)
    this:NotifyTo(npcs.Npc7525.alias, 1, true)
    this:NotifyTo(npcs.Npc7526.alias, 1, true)
    this:NotifyTo(npcs.Npc3477.alias, 1, true)
end

function Quest7016:OnSubFinish701605(arg1)
    print("OnSubFinish701605")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
end

function Quest7016:OnSubStart701604(arg1)
    print("OnSubStart701604")
    this:DeployStoryByQuest(110701600)
    this:NotifyTo(npcs.Npc3477.alias, 1, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc17009.id, 0, 20, 701604)
    this:NotifyTo(npcs.Npc7545.alias, 1, true)
    this:NotifyTo(npcs.Npc7447.alias, 1, true)
    this:NotifyTo(npcs.Npc7448.alias, 1, true)
    this:NotifyTo(npcs.Npc7449.alias, 1, true)
    this:NotifyTo(npcs.Npc7525.alias, 1, true)
    this:NotifyTo(npcs.Npc7526.alias, 1, true)
    this:NotifyTo(npcs.Npc3460.alias, 1, true)
    this:NotifyTo(npcs.Npc3460.alias, 1, true)
    this:NotifyTo(npcs.Npc3459.alias, 1, true)
    this:NotifyTo(npcs.Npc3432.alias, 1, true)
    this:NotifyTo(npcs.Npc3442.alias, 1, true)
    this:NotifyTo(npcs.Npc3431.alias, 1, true)
    this:NotifyTo(npcs.Npc3444.alias, 1, true)
    this:NotifyTo(npcs.Npc7446.alias, 1, true)
    this:NotifyTo("Npc3512", 1, true)
    this:NotifyTo("Npc3507", 1, true)
    this:NotifyTo("Npc7454", 1, true)
    this:NotifyTo("Npc7526", 1, true)
    this:NotifyTo("Npc3424", 1, true)
    this:NotifyTo("Npc7455", 1, true)
end

function Quest7016:OnSubFinish701604(arg1)
    print("OnSubFinish701604")
    this:RecycleAllRes()
    this:LightNotifyTo(npcs.Npc3477.alias, 0, true)
end

function Quest7016:OnSubStart701614(arg1)
    print("OnSubStart701614")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17009.id, 0, 701614, 50, true)
    this:NotifyTo(npcs.Npc7545.alias, 1, true)
    this:NotifyTo(npcs.Npc7447.alias, 1, true)
    this:NotifyTo(npcs.Npc3570.alias, 1, true)
    this:NotifyTo(npcs.Npc7525.alias, 1, true)
    this:NotifyTo(npcs.Npc7526.alias, 1, true)
    this:NotifyTo(npcs.Npc7448.alias, 1, true)
    this:NotifyTo(npcs.Npc7449.alias, 1, true)
    this:DeployStoryByQuest(110701600)
    this:NotifyTo(npcs.Npc3460.alias, 1, true)
    this:NotifyTo(npcs.Npc3460.alias, 1, true)
    this:NotifyTo(npcs.Npc3459.alias, 1, true)
    this:NotifyTo(npcs.Npc3432.alias, 1, true)
    this:NotifyTo(npcs.Npc3442.alias, 1, true)
    this:NotifyTo(npcs.Npc3431.alias, 1, true)
    this:NotifyTo(npcs.Npc3444.alias, 1, true)
    this:NotifyTo(npcs.Npc7446.alias, 1, true)
    this:NotifyTo("Npc3512", 1, true)
    this:NotifyTo("Npc3507", 1, true)
    this:NotifyTo("Npc7454", 1, true)
    this:NotifyTo("Npc7526", 1, true)
    this:NotifyTo("Npc3424", 1, true)
    this:NotifyTo("Npc7455", 1, true)
end

function Quest7016:OnSubFinish701614(arg1)
    print("OnSubFinish701614")
    this:NpcDestroyImmediately(1163, npcs.Npc17009.alias)
    this:LightNotifyTo(npcs.Npc7545.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7447.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7525.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7526.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7448.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7449.alias, 0, true)
    this:CancelStoryByQuest(110701600)
    this:LightNotifyTo(npcs.Npc3460.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3459.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3432.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3442.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3431.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3444.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7446.alias, 0, true)
    this:LightNotifyTo("Npc3512", 0, true)
    this:LightNotifyTo("Npc3507", 0, true)
    this:LightNotifyTo("Npc7454", 0, true)
    this:LightNotifyTo("Npc7526", 0, true)
    this:LightNotifyTo("Npc3424", 0, true)
    this:LightNotifyTo("Npc7455", 0, true)
end

function Quest7016:OnSubStart701606(arg1)
    print("OnSubStart701606")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1341.id, 0, 701606, 80, true)
    this:NotifyTo(npcs.Npc3570.alias, 1, true)
    this:DeployStoryByQuest(110701602)
end

function Quest7016:OnSubFinish701606(arg1)
    print("OnSubFinish701606")
    this:NpcDestroyImmediately(3, npcs.Npc1341.alias)
    this:LightNotifyTo(npcs.Npc3570.alias, 0, true)
    this:CancelStoryByQuest(110701602)
end

function Quest7016:OnSubStart701612(arg1)
    print("OnSubStart701612")
    this:CreateQuestNpc(arg1, npcs.Npc17009.id, 0, false, 0)
    this:DeployStoryByQuest(110701601)
end

function Quest7016:OnSubFinish701612(arg1)
    print("OnSubFinish701612")
    this:NpcDestroyImmediately(3, npcs.Npc17009.alias)
end

function Quest7016:OnSubStart701607(arg1)
    print("OnSubStart701607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701607, 0, 10, 0, npcs.Npc17009.id)
end

function Quest7016:OnSubFinish701607(arg1)
    print("OnSubFinish701607")
    this:NpcDestroyImmediately(3, npcs.Npc17009.alias)
    this:CancelStoryByQuest(110701601)
end

function Quest7016:OnSubStart701613(arg1)
    print("OnSubStart701613")
    actorMgr:CreateActorWithPos("Q701613Trigger", "Actor/Gadget/Q701613Trigger", 70900002, 0, points._Q701613TriggerPoint_.pos, points._Q701613TriggerPoint_.rot, true, false, 3, nil, 0, 7016)
end

function Quest7016:OnSubFinish701613(arg1)
    print("OnSubFinish701613")
end

function Quest7016:OnSubStart701608(arg1)
    print("OnSubStart701608")
end

function Quest7016:OnSubFinish701608(arg1)
    print("OnSubFinish701608")
end

function Quest7016:OnSubFailed701608(arg1)
    print("OnSubFailed701608")
    this:RecycleAllRes()
end

function Quest7016:OnSubStart701609(arg1)
    print("OnSubStart701609")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701609, 0, 30, 0, npcs.Npc1341.id)
end

function Quest7016:OnSubFinish701609(arg1)
    print("OnSubFinish701609")
end

function Quest7016:OnSubStart701610(arg1)
    print("OnSubStart701610")
end

function Quest7016:OnSubFinish701610(arg1)
    print("OnSubFinish701610")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_BlackNoSound, nil, nil, nil)
end

function Quest7016:OnSubStart701611(arg1)
    print("OnSubStart701611")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1341.id, 0, 701611, 30, true)
end

function Quest7016:OnSubFinish701611(arg1)
    print("OnSubFinish701611")
    this:NpcDestroyImmediately(3, npcs.Npc1341.alias)
end

function Quest7016:OnSubStart701615(arg1)
    print("OnSubStart701615")
    actorUtils.FinishQuestWithParam({false}, {701615})
end

function Quest7016:OnSubFinish701615(arg1)
    print("OnSubFinish701615")
end

return Quest7016
