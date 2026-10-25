require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16011 = class("Quest16011", QuestActorProxy)
Quest16011.defaultAlias = "Quest16011"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest16011:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest16011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1601101"] = self.OnSubStart1601101,
        ["1601102"] = self.OnSubStart1601102,
        ["1601103"] = self.OnSubStart1601103,
        ["1601105"] = self.OnSubStart1601105,
        ["1601104"] = self.OnSubStart1601104,
        ["1601106"] = self.OnSubStart1601106,
        ["1601107"] = self.OnSubStart1601107,
        ["1601108"] = self.OnSubStart1601108,
        ["1601109"] = self.OnSubStart1601109,
        ["1601110"] = self.OnSubStart1601110,
        ["1601111"] = self.OnSubStart1601111,
        ["1601112"] = self.OnSubStart1601112
    }
end

function Quest16011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1601101"] = self.OnSubFinish1601101,
        ["1601102"] = self.OnSubFinish1601102,
        ["1601103"] = self.OnSubFinish1601103,
        ["1601105"] = self.OnSubFinish1601105,
        ["1601104"] = self.OnSubFinish1601104,
        ["1601106"] = self.OnSubFinish1601106,
        ["1601107"] = self.OnSubFinish1601107,
        ["1601108"] = self.OnSubFinish1601108,
        ["1601109"] = self.OnSubFinish1601109,
        ["1601110"] = self.OnSubFinish1601110,
        ["1601111"] = self.OnSubFinish1601111,
        ["1601112"] = self.OnSubFinish1601112
    }
end

function Quest16011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1601102"] = self.OnSubFailed1601102,
        ["1601103"] = self.OnSubFailed1601103,
        ["1601105"] = self.OnSubFailed1601105,
        ["1601104"] = self.OnSubFailed1601104,
        ["1601106"] = self.OnSubFailed1601106,
        ["1601107"] = self.OnSubFailed1601107,
        ["1601108"] = self.OnSubFailed1601108,
        ["1601109"] = self.OnSubFailed1601109,
        ["1601110"] = self.OnSubFailed1601110
    }
end

function Quest16011:Start()
    print("Start")
end

function Quest16011:OnDestroy()
    print("OnDestroy")
end

function Quest16011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16011:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q1601111N1310Trigger")
    this:DestroyNpcTrigger("Q1601102N1310Trigger")
    this:ActorDestroy("Q1601110Trigger", nil)
    this:ActorDestroy("Q1601103Trigger_2", nil)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1310_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16279.alias, 20336)
    this:SafeDestroyQuestNpc(npcs.Npc1310_1.alias, 20336)
    this:CancelStoryByQuest(121601102)
    this:CancelStoryByQuest(121601101)
    this:CancelStoryByQuest(121601100)
    this:RecycleAllRes()
end

function Quest16011:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1601111WhiteTalkTrigger", 16011)
    this:ActorDestroy("Q1601105Trigger_2", 16011)
    this:ActorDestroy("Q1601103Trigger_2", 0)
end

function Quest16011:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1601112 then
        actorUtils.FinishQuestWithParam({false}, {1601112})
    end
end

function Quest16011:ActorDestroy(arg1, arg2)
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

function Quest16011:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest16011:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest16011:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest16011:OnSubStart1601101(arg1)
    print("OnSubStart1601101")
end

function Quest16011:OnSubFinish1601101(arg1)
    print("OnSubFinish1601101")
end

function Quest16011:OnSubStart1601102(arg1)
    print("OnSubStart1601102")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1310.id, 0, 1601102, 30, true)
end

function Quest16011:OnSubFinish1601102(arg1)
    print("OnSubFinish1601102")
    this:NpcDestroyImmediately(20336, npcs.Npc1310.alias)
end

function Quest16011:OnSubFailed1601102(arg1)
    print("OnSubFailed1601102")
    this:RecycleAllRes()
end

function Quest16011:OnSubStart1601103(arg1)
    print("OnSubStart1601103")
    this:DeployStoryByQuest(121601100)
end

function Quest16011:OnSubFinish1601103(arg1)
    print("OnSubFinish1601103")
    this:CancelStoryByQuest(121601100)
end

function Quest16011:OnSubFailed1601103(arg1)
    print("OnSubFailed1601103")
    this:RecycleAllRes()
end

function Quest16011:OnSubStart1601105(arg1)
    print("OnSubStart1601105")
    actorMgr:CreateActorWithPos("Q1601105Trigger_2", "Actor/Gadget/Q1601105Trigger_2", 70900002, 0, points._Q1601105Trigger_2Point_.pos, points._Q1601105Trigger_2Point_.rot, true, false, 20336, nil, 0, 16011)
end

function Quest16011:OnSubFinish1601105(arg1)
    print("OnSubFinish1601105")
end

function Quest16011:OnSubFailed1601105(arg1)
    print("OnSubFailed1601105")
    this:RecycleAllRes()
end

function Quest16011:OnSubStart1601104(arg1)
    print("OnSubStart1601104")
    this:DeployStoryByQuest(121601101)
end

function Quest16011:OnSubFinish1601104(arg1)
    print("OnSubFinish1601104")
    this:CancelStoryByQuest(121601101)
end

function Quest16011:OnSubFailed1601104(arg1)
    print("OnSubFailed1601104")
    this:RecycleAllRes()
end

function Quest16011:OnSubStart1601106(arg1)
    print("OnSubStart1601106")
end

function Quest16011:OnSubFinish1601106(arg1)
    print("OnSubFinish1601106")
end

function Quest16011:OnSubFailed1601106(arg1)
    print("OnSubFailed1601106")
    this:RecycleAllRes()
end

function Quest16011:OnSubStart1601107(arg1)
    print("OnSubStart1601107")
    this:NpcCreateWithNoBlackData(1601107, 0, npcs.Npc1310.id, 0, 25, 1601107, datas.NoBlackData_ForceStop_Dither)
    this:DeployStoryByQuest(121601102)
end

function Quest16011:OnSubFinish1601107(arg1)
    print("OnSubFinish1601107")
    this:NpcDestroyImmediately(20336, npcs.Npc1310.alias)
end

function Quest16011:OnSubFailed1601107(arg1)
    print("OnSubFailed1601107")
    this:RecycleAllRes()
end

function Quest16011:OnSubStart1601108(arg1)
    print("OnSubStart1601108")
end

function Quest16011:OnSubFinish1601108(arg1)
    print("OnSubFinish1601108")
    this:CancelStoryByQuest(121601102)
end

function Quest16011:OnSubFailed1601108(arg1)
    print("OnSubFailed1601108")
    this:RecycleAllRes()
end

function Quest16011:OnSubStart1601109(arg1)
    print("OnSubStart1601109")
    this:NpcCreateWithNoBlackData(1601109, 0, npcs.Npc16279.id, 0, 100, 1601109, datas.NoBlackData_NoDelay)
end

function Quest16011:OnSubFinish1601109(arg1)
    print("OnSubFinish1601109")
    this:NpcDestroyImmediately(20336, npcs.Npc16279.alias)
end

function Quest16011:OnSubFailed1601109(arg1)
    print("OnSubFailed1601109")
    this:RecycleAllRes()
end

function Quest16011:OnSubStart1601110(arg1)
    print("OnSubStart1601110")
    this:DeployStoryByQuest(121600901)
end

function Quest16011:OnSubFinish1601110(arg1)
    print("OnSubFinish1601110")
    this:ShowBlackScreen(0, 3, 1.5, nil, nil, nil, "", true, true)
end

function Quest16011:OnSubFailed1601110(arg1)
    print("OnSubFailed1601110")
    this:RecycleAllRes()
end

function Quest16011:OnSubStart1601111(arg1)
    print("OnSubStart1601111")
    actorMgr:CreateActorWithPos("Q1601111WhiteTalkTrigger", "Actor/Gadget/Q1601111WhiteTalkTrigger", 70900002, 0, points._Q1601111WhiteTalkTriggerPoint_.pos, points._Q1601111WhiteTalkTriggerPoint_.rot, true, false, 3, nil, 0, 16011)
    if sceneData.currSceneID == 20336 then
        this:ShowBlackScreen(0, 1, 0.5, function(arg1_2)
            this:TransmitPlayerByData(arg1, 1, datas.TransmitData_White, nil, nil, nil)
            this:CancelStoryByQuest(121600901)
        end, nil, nil, "", true, true)
    end
end

function Quest16011:OnSubFinish1601111(arg1)
    print("OnSubFinish1601111")
end

function Quest16011:OnSubStart1601112(arg1)
    print("OnSubStart1601112")
    this:CreateQuestNpc(arg1, npcs.Npc1310_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1310_1.alias, 16011):DoFreeStyle(4100, true, nil, true, true, false, true)
end

function Quest16011:OnSubFinish1601112(arg1)
    print("OnSubFinish1601112")
    this:NpcDestroyImmediately(3, npcs.Npc1310_1.alias)
end

return Quest16011
