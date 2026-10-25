require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77130 = class("Quest77130", QuestActorProxy)
Quest77130.defaultAlias = "Quest77130"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77130:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77130:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7713019"] = self.OnSubStart7713019,
        ["7713001"] = self.OnSubStart7713001,
        ["7713007"] = self.OnSubStart7713007,
        ["7713002"] = self.OnSubStart7713002,
        ["7713018"] = self.OnSubStart7713018,
        ["7713004"] = self.OnSubStart7713004,
        ["7713005"] = self.OnSubStart7713005,
        ["7713006"] = self.OnSubStart7713006,
        ["7713009"] = self.OnSubStart7713009,
        ["7713011"] = self.OnSubStart7713011,
        ["7713010"] = self.OnSubStart7713010,
        ["7713014"] = self.OnSubStart7713014,
        ["7713012"] = self.OnSubStart7713012,
        ["7713013"] = self.OnSubStart7713013,
        ["7713015"] = self.OnSubStart7713015,
        ["7713016"] = self.OnSubStart7713016,
        ["7713017"] = self.OnSubStart7713017,
        ["7713003"] = self.OnSubStart7713003,
        ["7713020"] = self.OnSubStart7713020,
        ["7713008"] = self.OnSubStart7713008
    }
end

function Quest77130:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7713019"] = self.OnSubFinish7713019,
        ["7713001"] = self.OnSubFinish7713001,
        ["7713007"] = self.OnSubFinish7713007,
        ["7713002"] = self.OnSubFinish7713002,
        ["7713018"] = self.OnSubFinish7713018,
        ["7713004"] = self.OnSubFinish7713004,
        ["7713005"] = self.OnSubFinish7713005,
        ["7713006"] = self.OnSubFinish7713006,
        ["7713009"] = self.OnSubFinish7713009,
        ["7713011"] = self.OnSubFinish7713011,
        ["7713010"] = self.OnSubFinish7713010,
        ["7713014"] = self.OnSubFinish7713014,
        ["7713012"] = self.OnSubFinish7713012,
        ["7713013"] = self.OnSubFinish7713013,
        ["7713015"] = self.OnSubFinish7713015,
        ["7713016"] = self.OnSubFinish7713016,
        ["7713017"] = self.OnSubFinish7713017,
        ["7713003"] = self.OnSubFinish7713003,
        ["7713020"] = self.OnSubFinish7713020,
        ["7713008"] = self.OnSubFinish7713008
    }
end

function Quest77130:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7713017"] = self.OnSubFailed7713017}
end

function Quest77130:Start()
    print("Start")
end

function Quest77130:OnDestroy()
    print("OnDestroy")
end

function Quest77130:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77130:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77130:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77130:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7713001Trigger", 0)
    this:ActorDestroy("Q7713007Trigger", 0)
    this:ActorDestroy("Q7713008Trigger", 0)
    this:ActorDestroy("Q7713018Trigger", 77130)
    this:ActorDestroy("Q7713017Trigger", 77130)
    this:ActorDestroy("Q7713020Trigger", 77130)
end

function Quest77130:ActorDestroy(arg1, arg2)
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

function Quest77130:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77130:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77130:OnSubStart7713019(arg1)
    print("OnSubStart7713019")
end

function Quest77130:OnSubFinish7713019(arg1)
    print("OnSubFinish7713019")
    actorUtils.ShowReminder(1004880016)
end

function Quest77130:OnSubStart7713001(arg1)
    print("OnSubStart7713001")
    actorMgr:CreateActorWithPos("Q7713001Trigger", "Actor/Gadget/Q7713001Trigger", 70900002, 0, points._Q7713001TriggerPoint_.pos, points._Q7713001TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77130:OnSubFinish7713001(arg1)
    print("OnSubFinish7713001")
    this:SetNavigationByMainId(77130, true)
    this:QuestNarratorTask(datas.NarratorWithId_7713001, nil)
end

function Quest77130:OnSubStart7713007(arg1)
    print("OnSubStart7713007")
    actorMgr:CreateActorWithPos("Q7713007Trigger", "Actor/Gadget/Q7713007Trigger", 70900002, 0, points._Q7713007TriggerPoint_.pos, points._Q7713007TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77130:OnSubFinish7713007(arg1)
    print("OnSubFinish7713007")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77130:OnSubStart7713002(arg1)
    print("OnSubStart7713002")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7713002, 0, 20, 0, npcs.Npc22418.id)
end

function Quest77130:OnSubFinish7713002(arg1)
    print("OnSubFinish7713002")
    this:NpcDestroyImmediately(3, npcs.Npc22418.alias)
end

function Quest77130:OnSubStart7713018(arg1)
    print("OnSubStart7713018")
    actorMgr:CreateActorWithPos("Q7713018Trigger", "Actor/Gadget/Q7713018Trigger", 70900002, 0, points._Q7713018TriggerPoint_.pos, points._Q7713018TriggerPoint_.rot, true, false, 3, nil, 0, 77130)
end

function Quest77130:OnSubFinish7713018(arg1)
    print("OnSubFinish7713018")
end

function Quest77130:OnSubStart7713004(arg1)
    print("OnSubStart7713004")
    this:PlayCutsceneIndex(7713004, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7713004})
    end, nil, nil, false)
end

function Quest77130:OnSubFinish7713004(arg1)
    print("OnSubFinish7713004")
end

function Quest77130:OnSubStart7713005(arg1)
    print("OnSubStart7713005")
end

function Quest77130:OnSubFinish7713005(arg1)
    print("OnSubFinish7713005")
end

function Quest77130:OnSubStart7713006(arg1)
    print("OnSubStart7713006")
end

function Quest77130:OnSubFinish7713006(arg1)
    print("OnSubFinish7713006")
end

function Quest77130:OnSubStart7713009(arg1)
    print("OnSubStart7713009")
end

function Quest77130:OnSubFinish7713009(arg1)
    print("OnSubFinish7713009")
end

function Quest77130:OnSubStart7713011(arg1)
    print("OnSubStart7713011")
    this:DeployRangeStoryByQuest(147713000, 3, {x = 9920, y = 200, z = 7330}, 80, 100)
end

function Quest77130:OnSubFinish7713011(arg1)
    print("OnSubFinish7713011")
    this:CancelRangeStoryByQuest(147713000)
end

function Quest77130:OnSubStart7713010(arg1)
    print("OnSubStart7713010")
end

function Quest77130:OnSubFinish7713010(arg1)
    print("OnSubFinish7713010")
end

function Quest77130:OnSubStart7713014(arg1)
    print("OnSubStart7713014")
end

function Quest77130:OnSubFinish7713014(arg1)
    print("OnSubFinish7713014")
end

function Quest77130:OnSubStart7713012(arg1)
    print("OnSubStart7713012")
    this:DeployRangeStoryByQuest(147713001, 3, {x = 10100, y = 220, z = 7330}, 80, 100)
end

function Quest77130:OnSubFinish7713012(arg1)
    print("OnSubFinish7713012")
    this:CancelRangeStoryByQuest(147713001)
end

function Quest77130:OnSubStart7713013(arg1)
    print("OnSubStart7713013")
    this:DeployRangeStoryByQuest(147713002, 3, {x = 10075, y = 210, z = 7240}, 80, 100)
end

function Quest77130:OnSubFinish7713013(arg1)
    print("OnSubFinish7713013")
    this:CancelRangeStoryByQuest(147713002)
end

function Quest77130:OnSubStart7713015(arg1)
    print("OnSubStart7713015")
end

function Quest77130:OnSubFinish7713015(arg1)
    print("OnSubFinish7713015")
end

function Quest77130:OnSubStart7713016(arg1)
    print("OnSubStart7713016")
end

function Quest77130:OnSubFinish7713016(arg1)
    print("OnSubFinish7713016")
end

function Quest77130:OnSubStart7713017(arg1)
    print("OnSubStart7713017")
    actorMgr:CreateActorWithPos("Q7713017Trigger", "Actor/Gadget/Q7713017Trigger", 70900002, 0, points._Q7713017TriggerPoint_.pos, points._Q7713017TriggerPoint_.rot, true, false, 3, nil, 0, 77130)
end

function Quest77130:OnSubFinish7713017(arg1)
    print("OnSubFinish7713017")
end

function Quest77130:OnSubFailed7713017(arg1)
    print("OnSubFailed7713017")
    this:RecycleAllRes()
end

function Quest77130:OnSubStart7713003(arg1)
    print("OnSubStart7713003")
    this:PlayCutsceneIndex(7713003, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7713003})
    end, nil, nil, false)
end

function Quest77130:OnSubFinish7713003(arg1)
    print("OnSubFinish7713003")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77130:OnSubStart7713020(arg1)
    print("OnSubStart7713020")
    actorMgr:CreateActorWithPos("Q7713020Trigger", "Actor/Gadget/Q7713020Trigger", 70900002, 0, points._Q7713020TriggerPoint_.pos, points._Q7713020TriggerPoint_.rot, true, false, 3, nil, 0, 77130)
end

function Quest77130:OnSubFinish7713020(arg1)
    print("OnSubFinish7713020")
end

function Quest77130:OnSubStart7713008(arg1)
    print("OnSubStart7713008")
    actorMgr:CreateActorWithPos("Q7713008Trigger", "Actor/Gadget/Q7713008Trigger", 70900002, 0, points._Q7713008TriggerPoint_.pos, points._Q7713008TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77130:OnSubFinish7713008(arg1)
    print("OnSubFinish7713008")
end

return Quest77130
