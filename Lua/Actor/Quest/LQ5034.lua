require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5034 = class("Quest5034", QuestActorProxy)
Quest5034.defaultAlias = "Quest5034"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5034:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["503401"] = self.OnSubStart503401,
        ["503407"] = self.OnSubStart503407,
        ["503402"] = self.OnSubStart503402,
        ["503403"] = self.OnSubStart503403,
        ["503408"] = self.OnSubStart503408,
        ["503409"] = self.OnSubStart503409,
        ["503404"] = self.OnSubStart503404,
        ["503405"] = self.OnSubStart503405,
        ["503406"] = self.OnSubStart503406
    }
end

function Quest5034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["503401"] = self.OnSubFinish503401,
        ["503407"] = self.OnSubFinish503407,
        ["503402"] = self.OnSubFinish503402,
        ["503403"] = self.OnSubFinish503403,
        ["503408"] = self.OnSubFinish503408,
        ["503409"] = self.OnSubFinish503409,
        ["503404"] = self.OnSubFinish503404,
        ["503405"] = self.OnSubFinish503405,
        ["503406"] = self.OnSubFinish503406
    }
end

function Quest5034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["503404"] = self.OnSubFailed503404}
end

function Quest5034:Start()
    print("Start")
end

function Quest5034:OnDestroy()
    print("OnDestroy")
end

function Quest5034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5034:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5034:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest5034:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest5034:OnSubStart503401(arg1)
    print("OnSubStart503401")
    this:NpcCreateWithNpcTriggerAndBlackscreen(503401, 0, 15, 1, npcs.Npc1089.id)
    local subQuestState = this:GetSubQuestState(7501605)
    local v = this:GetSubQuestState(7501603)
    local questGlobalVar = this:GetQuestGlobalVar(7501601)
    local actor = actorMgr:GetActor("75016")
    if actor ~= actorMgr.dummyActor then
        if subQuestState == 2 then
            actor:CancelStoryByQuest(147501605)
        end

        if v == 2 then
            actor:DestroyQuestNpcActor("Npc21697", 3)
            this:ActorDestroy("Q7501603N21697Trigger")
        end
    end
end

function Quest5034:OnSubFinish503401(arg1)
    print("OnSubFinish503401")
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 3)
    actorMgr:CreateActorWithPos("Q503401Transmit", "Actor/Gadget/Q503401Transmit", 70900002, 0, points._Q503401TransmitPoint_.pos, points._Q503401TransmitPoint_.rot, true, false, 3)
    local subQuestState = this:GetSubQuestState(7501605)
    local v = this:GetSubQuestState(7501603)
    local questGlobalVar = this:GetQuestGlobalVar(7501601)
    local actor = actorMgr:GetActor("75016")
    if actor ~= actorMgr.dummyActor then
        if subQuestState == 2 and questGlobalVar == 0 then
            actor:DeployStoryByQuest(147501605)
        end

        if v == 2 and questGlobalVar == 0 then
            this:SafeCallDelay(0.5, function(arg1)
                this:LevelReadySafeCall(function(arg1)
                    actorMgr:GetActor("75016"):NpcCreateWithNpcTrigger(21697, 0, 60, 7501603)
                end)
            end)
        end
    end
end

function Quest5034:OnSubStart503407(arg1)
    print("OnSubStart503407")
end

function Quest5034:OnSubFinish503407(arg1)
    print("OnSubFinish503407")
end

function Quest5034:OnSubStart503402(arg1)
    print("OnSubStart503402")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 503402, 50)
end

function Quest5034:OnSubFinish503402(arg1)
    print("OnSubFinish503402")
end

function Quest5034:OnSubStart503403(arg1)
    print("OnSubStart503403")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 503403, 50)
end

function Quest5034:OnSubFinish503403(arg1)
    print("OnSubFinish503403")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 20246)
end

function Quest5034:OnSubStart503408(arg1)
    print("OnSubStart503408")
    actorMgr:CreateActorWithPos("Q503408Dungeon", "Actor/Gadget/Q503408Dungeon", 70900002, 0, points._Q503408DungeonPoint_.pos, points._Q503408DungeonPoint_.rot, true, false, 3)
end

function Quest5034:OnSubFinish503408(arg1)
    print("OnSubFinish503408")
    this:ActorDestroy("Q503408Dungeon")
end

function Quest5034:OnSubStart503409(arg1)
    print("OnSubStart503409")
    actorMgr:CreateActorWithPos("Q503409Finish", "Actor/Gadget/Q503409Finish", 70900002, 0, points._Q503409FinishPoint_.pos, points._Q503409FinishPoint_.rot, true, false, 20245)
    actorMgr:CreateActorWithPos("Q503409Dungeon", "Actor/Gadget/Q503409Dungeon", 70900002, 0, points._Q503409DungeonPoint_.pos, points._Q503409DungeonPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q503404Kaiche", "Actor/Gadget/Q503404Kaiche", 70900002, 0, points._Q503404KaichePoint_.pos, points._Q503404KaichePoint_.rot, true, false, 20245)
end

function Quest5034:OnSubFinish503409(arg1)
    print("OnSubFinish503409")
    this:ActorDestroy("Q503409Finish")
    this:ActorDestroy("Q503409Dungeon")
end

function Quest5034:OnSubStart503404(arg1)
    print("OnSubStart503404")
    actorMgr:CreateActorWithPos("Q5034HuguangChuansongA", "Actor/Gadget/Q5034HuguangChuansongA", 70900002, 0, points._Q5034HuguangChuansongAPoint_.pos, points._Q5034HuguangChuansongAPoint_.rot, true, false, 20245)
    actorMgr:CreateActorWithPos("Q5034HuguangChuansongB", "Actor/Gadget/Q5034HuguangChuansongB", 70900002, 0, points._Q5034HuguangChuansongBPoint_.pos, points._Q5034HuguangChuansongBPoint_.rot, true, false, 20245)
    actorMgr:CreateActorWithPos("Q5034HuguangkaicheA", "Actor/Gadget/Q5034HuguangkaicheA", 70900002, 0, points._Q5034HuguangkaicheAPoint_.pos, points._Q5034HuguangkaicheAPoint_.rot, true, false, 20245)
    actorMgr:CreateActorWithPos("Q5034huguangkaicheC", "Actor/Gadget/Q5034huguangkaicheC", 70900002, 0, points._Q5034huguangkaicheCPoint_.pos, points._Q5034huguangkaicheCPoint_.rot, true, false, 20245)
    actorMgr:CreateActorWithPos("Q5034HuguangkaicheYOulie", "Actor/Gadget/Q5034HuguangkaicheYOulie", 70900002, 0, points._Q5034HuguangkaicheYOuliePoint_.pos, points._Q5034HuguangkaicheYOuliePoint_.rot, true, false, 20245)
end

function Quest5034:OnSubFinish503404(arg1)
    print("OnSubFinish503404")
end

function Quest5034:OnSubFailed503404(arg1)
    print("OnSubFailed503404")
    this:ActorDestroy("Q5034HuguangChuansongA")
    this:ActorDestroy("Q5034LandingShangche")
    this:ActorDestroy("Q5034HuguangChuansongB")
    this:ActorDestroy("Q5034ArcShangcheB")
    this:ActorDestroy("Q5034HuguangkaicheA")
    this:ActorDestroy("Q5034huguangkaicheC")
    this:ActorDestroy("Q5034HuguangkaicheYOulie")
    this:ActorDestroy("Q503404Kaiche")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest5034:OnSubStart503405(arg1)
    print("OnSubStart503405")
    this:NpcCreateWithNpcTriggerAndBlackscreen(503405, 0, 15, 1, npcs.Npc1089.id)
end

function Quest5034:OnSubFinish503405(arg1)
    print("OnSubFinish503405")
    this:TransmitPlayerWithQuestIdByData(503405, 1, datas.TransmitData_NowordNoSound, nil, nil, nil)
end

function Quest5034:OnSubStart503406(arg1)
    print("OnSubStart503406")
    this:NpcCreateWithNpcTriggerAndBlackscreen(503406, 0, 50, 1, npcs.Npc1089.id)
    local subQuestState = this:GetSubQuestState(7501605)
    local v = this:GetSubQuestState(7501603)
    local questGlobalVar = this:GetQuestGlobalVar(7501601)
    local actor = actorMgr:GetActor("75016")
    if actor ~= actorMgr.dummyActor then
        if subQuestState == 2 then
            actor:CancelStoryByQuest(147501605)
        end

        if v == 2 then
            actor:DestroyQuestNpcActor("Npc21697", 3)
            this:ActorDestroy("Q7501603N21697Trigger")
        end
    end
end

function Quest5034:OnSubFinish503406(arg1)
    print("OnSubFinish503406")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
    local subQuestState = this:GetSubQuestState(7501605)
    local v = this:GetSubQuestState(7501603)
    local questGlobalVar = this:GetQuestGlobalVar(7501601)
    local actor = actorMgr:GetActor("75016")
    if actor ~= actorMgr.dummyActor then
        if subQuestState == 2 and questGlobalVar == 0 then
            actor:DeployStoryByQuest(147501605)
        end

        if v == 2 and questGlobalVar == 0 then
            this:SafeCallDelay(0.5, function(arg1)
                this:LevelReadySafeCall(function(arg1)
                    actorMgr:GetActor("75016"):NpcCreateWithNpcTrigger(21697, 0, 60, 7501603)
                end)
            end)
        end
    end
end

return Quest5034
