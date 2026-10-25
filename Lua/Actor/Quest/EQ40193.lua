require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40193 = class("Quest40193", QuestActorProxy)
Quest40193.defaultAlias = "Quest40193"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest40193:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40193:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4019301"] = self.OnSubStart4019301,
        ["4019304"] = self.OnSubStart4019304,
        ["4019302"] = self.OnSubStart4019302,
        ["4019303"] = self.OnSubStart4019303
    }
end

function Quest40193:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4019301"] = self.OnSubFinish4019301,
        ["4019304"] = self.OnSubFinish4019304,
        ["4019302"] = self.OnSubFinish4019302,
        ["4019303"] = self.OnSubFinish4019303
    }
end

function Quest40193:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40193:Start()
    print("Start")
end

function Quest40193:OnDestroy()
    print("OnDestroy")
end

function Quest40193:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40193:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40193:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12276.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12277.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12278.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3038.alias, 3)
    this:ActorDestroy("Q4019302Trigger")
    this:DestroyNpcTrigger("Q4019303N3038Trigger")
end

function Quest40193:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40193:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40193:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40193:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40193:OnSubStart4019301(arg1)
    print("OnSubStart4019301")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc1044.id, arg1)
        this:GetQuestNpcActor(npcs.Npc1044.alias, 40193):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1049.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1049.alias, 40193):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc12276.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12277.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc12277.alias, 40193):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc12278.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc12278.alias, 40193):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1044.alias, 40193):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1049.alias, 40193):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc12276.alias, 40193):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc12277.alias, 40193):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc12278.alias, 40193):DisableInteeHeadCtrl(true)
    end)
end

function Quest40193:OnSubFinish4019301(arg1)
    print("OnSubFinish4019301")
end

function Quest40193:OnSubStart4019304(arg1)
    print("OnSubStart4019304")
    this:GetQuestNpcActor(npcs.Npc1044.alias, 40193):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 40193):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc12277.alias, 40193):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc12278.alias, 40193):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1044.alias, 40193):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 40193):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12276.alias, 40193):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12277.alias, 40193):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12278.alias, 40193):DisableInteeHeadCtrl(true)
end

function Quest40193:OnSubFinish4019304(arg1)
    print("OnSubFinish4019304")
    this:NpcDestroyImmediately(3, npcs.Npc1044.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1049.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12276.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12277.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12278.alias)
    this:TransmitPlayerByData(arg1, 4, nil, nil, nil, nil)
end

function Quest40193:OnSubStart4019302(arg1)
    print("OnSubStart4019302")
    actorMgr:CreateActorWithPos("Q4019302Trigger", "Actor/Gadget/Q4019302Trigger", 70900002, 0, points._Q4019302TriggerPoint_.pos, points._Q4019302TriggerPoint_.rot, true, false, 1202)
end

function Quest40193:OnSubFinish4019302(arg1)
    print("OnSubFinish4019302")
    this:NpcDestroyImmediately(1202, npcs.Npc1044.alias)
    this:TransmitPlayerByData(arg1, 4, nil, nil, nil, nil)
end

function Quest40193:OnSubStart4019303(arg1)
    print("OnSubStart4019303")
    this:CreateQuestNpc(arg1, npcs.Npc1034.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1097.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc3038.id, 0, 4019303, 10, true)
end

function Quest40193:OnSubFinish4019303(arg1)
    print("OnSubFinish4019303")
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3038.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 1202)
end

return Quest40193
