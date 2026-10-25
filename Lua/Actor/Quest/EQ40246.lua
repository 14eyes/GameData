require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40246 = class("Quest40246", QuestActorProxy)
Quest40246.defaultAlias = "Quest40246"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40246:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40246:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4024601"] = self.OnSubStart4024601,
        ["4024602"] = self.OnSubStart4024602,
        ["4024612"] = self.OnSubStart4024612,
        ["4024603"] = self.OnSubStart4024603,
        ["4024604"] = self.OnSubStart4024604,
        ["4024605"] = self.OnSubStart4024605,
        ["4024606"] = self.OnSubStart4024606,
        ["4024613"] = self.OnSubStart4024613,
        ["4024607"] = self.OnSubStart4024607,
        ["4024608"] = self.OnSubStart4024608,
        ["4024609"] = self.OnSubStart4024609,
        ["4024610"] = self.OnSubStart4024610,
        ["4024611"] = self.OnSubStart4024611
    }
end

function Quest40246:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4024601"] = self.OnSubFinish4024601,
        ["4024602"] = self.OnSubFinish4024602,
        ["4024612"] = self.OnSubFinish4024612,
        ["4024603"] = self.OnSubFinish4024603,
        ["4024604"] = self.OnSubFinish4024604,
        ["4024605"] = self.OnSubFinish4024605,
        ["4024606"] = self.OnSubFinish4024606,
        ["4024613"] = self.OnSubFinish4024613,
        ["4024607"] = self.OnSubFinish4024607,
        ["4024608"] = self.OnSubFinish4024608,
        ["4024609"] = self.OnSubFinish4024609,
        ["4024610"] = self.OnSubFinish4024610,
        ["4024611"] = self.OnSubFinish4024611
    }
end

function Quest40246:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4024604"] = self.OnSubFailed4024604,
        ["4024605"] = self.OnSubFailed4024605,
        ["4024606"] = self.OnSubFailed4024606,
        ["4024607"] = self.OnSubFailed4024607,
        ["4024608"] = self.OnSubFailed4024608,
        ["4024609"] = self.OnSubFailed4024609,
        ["4024610"] = self.OnSubFailed4024610
    }
end

function Quest40246:Start()
    print("Start")
end

function Quest40246:OnDestroy()
    print("OnDestroy")
end

function Quest40246:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40246:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40246:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q4024602N1318Trigger")
    this:DestroyNpcTrigger("Q4024605N1336Trigger")
    this:DestroyNpcTrigger("Q4024607N31094Trigger")
    this:DestroyNpcTrigger("Q4024609N31094Trigger")
    this:DestroyNpcTrigger("Q4024610N1336Trigger")
    this:DestroyNpcTrigger("Q4024611N1336Trigger")
    this:DestroyNpcTrigger("Q4024612N1096Trigger")
    this:ActorDestroy("Q4024609Trigger", 40246)
    this:ActorDestroy("Q4024610Trigger", 40246)
    this:ActorDestroy("Q4024604Trigger", nil)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 20359)
    this:SafeDestroyQuestNpc(npcs.Npc31094.alias, 20359)
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1161)
    this:RecycleAllRes()
end

function Quest40246:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4024609Trigger", 40246)
    this:ActorDestroy("Q4024610Trigger", 40246)
    this:ActorDestroy("Q4024604Trigger", nil)
end

function Quest40246:ActorDestroy(arg1, arg2)
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

function Quest40246:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40246:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40246:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40246:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40246:OnSubStart4024601(arg1)
    print("OnSubStart4024601")
end

function Quest40246:OnSubFinish4024601(arg1)
    print("OnSubFinish4024601")
    this:QuestNarratorTask(datas.NarratorWithId4024601, nil)
    actorMgr:DestroyNpcActorByAlias("Npc133640245")
end

function Quest40246:OnSubStart4024602(arg1)
    print("OnSubStart4024602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024602, 0, 12, 0, npcs.Npc1318.id)
end

function Quest40246:OnSubFinish4024602(arg1)
    print("OnSubFinish4024602")
    this:NpcDestroyImmediately(3, npcs.Npc1318.alias)
    this:ClearNarratorTask()
end

function Quest40246:OnSubStart4024612(arg1)
    print("OnSubStart4024612")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1096.id, 0, 4024612, 40, true)
end

function Quest40246:OnSubFinish4024612(arg1)
    print("OnSubFinish4024612")
    this:NpcDestroyImmediately(1161, npcs.Npc1096.alias)
    this:PlayerEnterDungeonWithData(2011, 1328, 4024612, 1, datas.PlayerEnterDungeonDataNormal, nil, nil)
end

function Quest40246:OnSubStart4024603(arg1)
    print("OnSubStart4024603")
end

function Quest40246:OnSubFinish4024603(arg1)
    print("OnSubFinish4024603")
end

function Quest40246:OnSubStart4024604(arg1)
    print("OnSubStart4024604")
    actorMgr:CreateActorWithPos("Q4024604Trigger", "Actor/Gadget/Q4024604Trigger", 70900002, 0, points._Q4024604TriggerPoint_.pos, points._Q4024604TriggerPoint_.rot, true, false, 20359, nil, 0, 40246)
end

function Quest40246:OnSubFinish4024604(arg1)
    print("OnSubFinish4024604")
    this:ActorDestroy("Q4024604Trigger", nil)
end

function Quest40246:OnSubFailed4024604(arg1)
    print("OnSubFailed4024604")
    this:RecycleAllRes()
end

function Quest40246:OnSubStart4024605(arg1)
    print("OnSubStart4024605")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1336.id, 0, 4024605, 40, true)
end

function Quest40246:OnSubFinish4024605(arg1)
    print("OnSubFinish4024605")
    this:NpcDestroyImmediately(20359, npcs.Npc1336.alias)
end

function Quest40246:OnSubFailed4024605(arg1)
    print("OnSubFailed4024605")
    this:RecycleAllRes()
end

function Quest40246:OnSubStart4024606(arg1)
    print("OnSubStart4024606")
end

function Quest40246:OnSubFinish4024606(arg1)
    print("OnSubFinish4024606")
end

function Quest40246:OnSubFailed4024606(arg1)
    print("OnSubFailed4024606")
    this:RecycleAllRes()
end

function Quest40246:OnSubStart4024613(arg1)
    print("OnSubStart4024613")
end

function Quest40246:OnSubFinish4024613(arg1)
    print("OnSubFinish4024613")
    this:PlayCutsceneIndex(402460601, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {4024606})
    end, nil, nil, false)
end

function Quest40246:OnSubStart4024607(arg1)
    print("OnSubStart4024607")
    this:NpcCreateWithNpcTrigger(npcs.Npc31094.id, 0, 8, 4024607)
end

function Quest40246:OnSubFinish4024607(arg1)
    print("OnSubFinish4024607")
    this:NpcDestroyImmediately(20359, npcs.Npc31094.alias)
end

function Quest40246:OnSubFailed4024607(arg1)
    print("OnSubFailed4024607")
    this:RecycleAllRes()
end

function Quest40246:OnSubStart4024608(arg1)
    print("OnSubStart4024608")
end

function Quest40246:OnSubFinish4024608(arg1)
    print("OnSubFinish4024608")
end

function Quest40246:OnSubFailed4024608(arg1)
    print("OnSubFailed4024608")
    this:RecycleAllRes()
end

function Quest40246:OnSubStart4024609(arg1)
    print("OnSubStart4024609")
    this:NpcCreateWithNpcTrigger(npcs.Npc31094.id, 0, 40, 4024609)
end

function Quest40246:OnSubFinish4024609(arg1)
    print("OnSubFinish4024609")
    this:NpcDestroyImmediately(20359, npcs.Npc31094.alias)
end

function Quest40246:OnSubFailed4024609(arg1)
    print("OnSubFailed4024609")
    this:RecycleAllRes()
end

function Quest40246:OnSubStart4024610(arg1)
    print("OnSubStart4024610")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1336.id, 0, 4024610, 40, true)
    actorMgr:CreateActorWithPos("Q4024609Trigger", "Actor/Gadget/Q4024609Trigger", 70900002, 0, points._Q4024609TriggerPoint_.pos, points._Q4024609TriggerPoint_.rot, true, false, 20359, nil, 0, 40246)
end

function Quest40246:OnSubFinish4024610(arg1)
    print("OnSubFinish4024610")
    this:NpcDestroyImmediately(20359, npcs.Npc1336.alias)
    this:ActorDestroy("Q4024609Trigger", 40246)
end

function Quest40246:OnSubFailed4024610(arg1)
    print("OnSubFailed4024610")
    this:RecycleAllRes()
end

function Quest40246:OnSubStart4024611(arg1)
    print("OnSubStart4024611")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1336.id, 0, 4024611, 40, true)
    actorMgr:CreateActorWithPos("Q4024610Trigger", "Actor/Gadget/Q4024610Trigger", 70900002, 0, points._Q4024610TriggerPoint_.pos, points._Q4024610TriggerPoint_.rot, true, false, 20359, nil, 0, 40246)
end

function Quest40246:OnSubFinish4024611(arg1)
    print("OnSubFinish4024611")
    this:NpcDestroyImmediately(3, npcs.Npc1336.alias)
    this:ActorDestroy("Q4024610Trigger", 40246)
end

return Quest40246
