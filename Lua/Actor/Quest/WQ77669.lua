require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77669 = class("Quest77669", QuestActorProxy)
Quest77669.defaultAlias = "Quest77669"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77669:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77669:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7766901"] = self.OnSubStart7766901, ["7766902"] = self.OnSubStart7766902}
end

function Quest77669:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7766901"] = self.OnSubFinish7766901, ["7766902"] = self.OnSubFinish7766902}
end

function Quest77669:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77669:Start()
    print("Start")
end

function Quest77669:OnDestroy()
    print("OnDestroy")
end

function Quest77669:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77669:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77669:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7766901N1339Trigger")
    this:ActorDestroy("Q77669Trigger", 77669)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1339.alias, 1162)
    this:RecycleAllRes()
end

function Quest77669:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q77669Trigger", 77669)
end

function Quest77669:ActorDestroy(arg1, arg2)
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

function Quest77669:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77669:OnSubStart7766901(arg1)
    print("OnSubStart7766901")
    this:AfterInterCall(function(arg1)
        actorMgr:DestroyNpcActorByAlias("Npc133877668")
        actorMgr:DestroyNpcActorByAlias("Npc134177668")
        actorMgr:DestroyNpcActorByAlias("Npc1339_177668")
        actorMgr:DestroyNpcActorByAlias("Npc108077668")
        actorMgr:DestroyNpcActorByAlias("Npc131877668")
        actorMgr:DestroyNpcActorByAlias("Npc133277668")
        actorMgr:DestroyNpcActorByAlias("Npc133577668")
        actorMgr:DestroyNpcActorByAlias("Npc1336_177668")
    end)

    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1339.id, 0, 7766901, 200, true)
    this:DeployStoryByQuest(147766900)
    if this:GetQuestVar(7766901, 1) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7766901, function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest77669:OnSubFinish7766901(arg1)
    print("OnSubFinish7766901")
    this:ActionSafeCall(function(arg1_2)
        actorUtils.ShowContext("ReputationSnezhnayaPage", 0, "0;1;1;5;2")
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1339_1.id, 2, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:ClearNarratorTask()
        actorMgr:CreateActorWithPos("Q77669Trigger", "Actor/Gadget/Q77669Trigger", 70900002, 0, points._Q77669TriggerPoint_.pos, points._Q77669TriggerPoint_.rot, true, false, 1162, nil, 0, 77669)
        this:GetQuestNpcActor(npcs.Npc1339_1.alias, 77669):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:DeployStoryByQuest(147766900)
        this:GetQuestNpcActor(npcs.Npc1339_1.alias, 77669):DisableInteeHeadCtrl(true)
    end)
end

function Quest77669:OnSubStart7766902(arg1)
    print("OnSubStart7766902")
end

function Quest77669:OnSubFinish7766902(arg1)
    print("OnSubFinish7766902")
end

return Quest77669
