require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7020 = class("Quest7020", QuestActorProxy)
Quest7020.defaultAlias = "Quest7020"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7020:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["702013"] = self.OnSubStart702013,
        ["702001"] = self.OnSubStart702001,
        ["702014"] = self.OnSubStart702014,
        ["702002"] = self.OnSubStart702002,
        ["702003"] = self.OnSubStart702003,
        ["702004"] = self.OnSubStart702004,
        ["702019"] = self.OnSubStart702019,
        ["702015"] = self.OnSubStart702015,
        ["702005"] = self.OnSubStart702005,
        ["702018"] = self.OnSubStart702018,
        ["702006"] = self.OnSubStart702006,
        ["702017"] = self.OnSubStart702017,
        ["702016"] = self.OnSubStart702016,
        ["702007"] = self.OnSubStart702007,
        ["702008"] = self.OnSubStart702008,
        ["702009"] = self.OnSubStart702009,
        ["702010"] = self.OnSubStart702010,
        ["702011"] = self.OnSubStart702011,
        ["702012"] = self.OnSubStart702012
    }
end

function Quest7020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["702013"] = self.OnSubFinish702013,
        ["702001"] = self.OnSubFinish702001,
        ["702014"] = self.OnSubFinish702014,
        ["702002"] = self.OnSubFinish702002,
        ["702003"] = self.OnSubFinish702003,
        ["702004"] = self.OnSubFinish702004,
        ["702019"] = self.OnSubFinish702019,
        ["702015"] = self.OnSubFinish702015,
        ["702005"] = self.OnSubFinish702005,
        ["702018"] = self.OnSubFinish702018,
        ["702006"] = self.OnSubFinish702006,
        ["702017"] = self.OnSubFinish702017,
        ["702016"] = self.OnSubFinish702016,
        ["702007"] = self.OnSubFinish702007,
        ["702008"] = self.OnSubFinish702008,
        ["702009"] = self.OnSubFinish702009,
        ["702010"] = self.OnSubFinish702010,
        ["702011"] = self.OnSubFinish702011,
        ["702012"] = self.OnSubFinish702012
    }
end

function Quest7020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["702005"] = self.OnSubFailed702005,
        ["702006"] = self.OnSubFailed702006,
        ["702017"] = self.OnSubFailed702017,
        ["702007"] = self.OnSubFailed702007,
        ["702009"] = self.OnSubFailed702009,
        ["702010"] = self.OnSubFailed702010
    }
end

function Quest7020:Start()
    print("Start")
end

function Quest7020:OnDestroy()
    print("OnDestroy")
end

function Quest7020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7020:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q702001Trigger", 7020)
    this:ActorDestroy("Q702008Trigger", 7020)
    this:ActorDestroy("Q702009Trigger", 7020)
    this:ActorDestroy("Q702014Trigger", 7020)
    this:ActorDestroy("Q702005Trigger", 7020)
    this:ActorDestroy("Q702015Trigger", 7020)
    this:ActorDestroy("Q702017Trigger", 7020)
    this:ActorDestroy("Q702017Trigger_1", 7020)
    this:ActorDestroy("Q702019Trigger", 7020)
end

function Quest7020:ActorDestroy(arg1, arg2)
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

function Quest7020:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7020:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7020:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest7020:OnSubStart702013(arg1)
    print("OnSubStart702013")
    this:NotifyTo(npcs.Npc7428.alias, 1, true)
    this:CreateLocalGadget(74045030, "1", points.Q701905_Gadget74045030_1_Point.pos, points.Q701905_Gadget74045030_1_Point.rot, 20367, nil, nil, false, 0, true, nil)
    this:DeployStoryByQuest(110702001)
    this:DeployRangeStoryByQuest(110702002, 20367, {x = 465, y = 52, z = 607}, 50, 80)
end

function Quest7020:OnSubFinish702013(arg1)
    print("OnSubFinish702013")
    this:LightNotifyTo(npcs.Npc7428.alias, 0, true)
    this:RemoveLocalGadget(74045030, "1")
    this:CancelAllStory()
end

function Quest7020:OnSubStart702001(arg1)
    print("OnSubStart702001")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 20, 702001)
    actorMgr:CreateActorWithPos("Q702001Trigger", "Actor/Gadget/Q702001Trigger", 70900002, 0, points._Q702001TriggerPoint_.pos, points._Q702001TriggerPoint_.rot, true, false, 1158, nil, 0, 7020)
end

function Quest7020:OnSubFinish702001(arg1)
    print("OnSubFinish702001")
    this:ActorDestroy("Q702001Trigger", 7020)
end

function Quest7020:OnSubStart702014(arg1)
    print("OnSubStart702014")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 10, 702014)
    actorMgr:CreateActorWithPos("Q702014Trigger", "Actor/Gadget/Q702014Trigger", 70900002, 0, points._Q702014TriggerPoint_.pos, points._Q702014TriggerPoint_.rot, true, false, 1162, nil, 0, 7020)
end

function Quest7020:OnSubFinish702014(arg1)
    print("OnSubFinish702014")
    this:ActorDestroy("Q702014Trigger", 7020)
end

function Quest7020:OnSubStart702002(arg1)
    print("OnSubStart702002")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 10, 702002)
end

function Quest7020:OnSubFinish702002(arg1)
    print("OnSubFinish702002")
end

function Quest7020:OnSubStart702003(arg1)
    print("OnSubStart702003")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 5, 702003)
end

function Quest7020:OnSubFinish702003(arg1)
    print("OnSubFinish702003")
    this:NpcDestroyImmediately(3, npcs.Npc16999.alias)
    this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2102, dungeonId = 1334, questId = 702004, questPointCfgId = 1}, datas.__EmbedClientConfig_6, nil, nil)
end

function Quest7020:OnSubStart702004(arg1)
    print("OnSubStart702004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(702004, 0, 10, 1, npcs.Npc1339.id)
end

function Quest7020:OnSubFinish702004(arg1)
    print("OnSubFinish702004")
    this:NpcDestroyImmediately(20366, npcs.Npc1339.alias)
end

function Quest7020:OnSubStart702019(arg1)
    print("OnSubStart702019")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 20, 702019)
    actorMgr:CreateActorWithPos("Q702019Trigger", "Actor/Gadget/Q702019Trigger", 70900002, 0, points._Q702019TriggerPoint_.pos, points._Q702019TriggerPoint_.rot, true, false, 20366, nil, 0, 7020)
end

function Quest7020:OnSubFinish702019(arg1)
    print("OnSubFinish702019")
    this:NpcDestroyImmediately(3, npcs.Npc16999.alias)
    this:ActorDestroy("Q702019Trigger", 7020)
    this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2102, dungeonId = 1334, questId = 702019, questPointCfgId = 1}, datas.__EmbedClientConfig_9, nil, nil)
end

function Quest7020:OnSubStart702015(arg1)
    print("OnSubStart702015")
    actorMgr:CreateActorWithPos("Q702015Trigger", "Actor/Gadget/Q702015Trigger", 70900002, 0, points._Q702015TriggerPoint_.pos, points._Q702015TriggerPoint_.rot, true, false, 20366, nil, 0, 7020)
    actorMgr:CreateActorWithPos("Q702005Trigger", "Actor/Gadget/Q702005Trigger", 70900002, 0, points._Q702005TriggerPoint_.pos, points._Q702005TriggerPoint_.rot, true, false, 20366, nil, 0, 7020)
end

function Quest7020:OnSubFinish702015(arg1)
    print("OnSubFinish702015")
    this:ActorDestroy("Q702015Trigger", 7020)
    this:ActorDestroy("Q702005Trigger", 7020)
end

function Quest7020:OnSubStart702005(arg1)
    print("OnSubStart702005")
end

function Quest7020:OnSubFinish702005(arg1)
    print("OnSubFinish702005")
end

function Quest7020:OnSubFailed702005(arg1)
    print("OnSubFailed702005")
    this:RecycleAllRes()
end

function Quest7020:OnSubStart702018(arg1)
    print("OnSubStart702018")
end

function Quest7020:OnSubFinish702018(arg1)
    print("OnSubFinish702018")
end

function Quest7020:OnSubStart702006(arg1)
    print("OnSubStart702006")
    this:DeployStoryByQuest(110702000)
    actorUtils.SetOperationCardProgress(11)
end

function Quest7020:OnSubFinish702006(arg1)
    print("OnSubFinish702006")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_FromDeath, nil, nil, nil)
    actorUtils.HideOperationCard()
end

function Quest7020:OnSubFailed702006(arg1)
    print("OnSubFailed702006")
    this:RecycleAllRes()
    actorUtils.HideOperationCard()
end

function Quest7020:OnSubStart702017(arg1)
    print("OnSubStart702017")
    this:CreateQuestNpc(arg1, npcs.Npc16999.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q702017Trigger", "Actor/Gadget/Q702017Trigger", 70900002, 0, points._Q702017TriggerPoint_.pos, points._Q702017TriggerPoint_.rot, true, false, 20366, nil, 0, 7020)
    actorMgr:CreateActorWithPos("Q702017Trigger_1", "Actor/Gadget/Q702017Trigger_1", 70900002, 0, points._Q702017Trigger_1Point_.pos, points._Q702017Trigger_1Point_.rot, true, false, 20366, nil, 0, 7020)
end

function Quest7020:OnSubFinish702017(arg1)
    print("OnSubFinish702017")
    this:ActorDestroy("Q702017Trigger", 7020)
    this:ActorDestroy("Q702017Trigger_1", 7020)
    this:CancelAllStory()
end

function Quest7020:OnSubFailed702017(arg1)
    print("OnSubFailed702017")
    this:RecycleAllRes()
end

function Quest7020:OnSubStart702016(arg1)
    print("OnSubStart702016")
end

function Quest7020:OnSubFinish702016(arg1)
    print("OnSubFinish702016")
end

function Quest7020:OnSubStart702007(arg1)
    print("OnSubStart702007")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 20, 702007)
end

function Quest7020:OnSubFinish702007(arg1)
    print("OnSubFinish702007")
    this:NpcDestroyImmediately(20366, npcs.Npc16999.alias)
    this:DestroyNpcTrigger("Q702007N16999Trigger")
end

function Quest7020:OnSubFailed702007(arg1)
    print("OnSubFailed702007")
    this:RecycleAllRes()
end

function Quest7020:OnSubStart702008(arg1)
    print("OnSubStart702008")
    this:NpcCreateWithNpcTrigger(npcs.Npc17566.id, 0, 30, 702008)
    actorMgr:CreateActorWithPos("Q702008Trigger", "Actor/Gadget/Q702008Trigger", 70900002, 0, points._Q702008TriggerPoint_.pos, points._Q702008TriggerPoint_.rot, true, false, 20366, nil, 0, 7020)
end

function Quest7020:OnSubFinish702008(arg1)
    print("OnSubFinish702008")
    this:NpcDestroyImmediately(20366, npcs.Npc17566.alias)
    this:ActorDestroy("Q702008Trigger", 7020)
end

function Quest7020:OnSubStart702009(arg1)
    print("OnSubStart702009")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 30, 702009)
    actorMgr:CreateActorWithPos("Q702009Trigger", "Actor/Gadget/Q702009Trigger", 70900002, 0, points._Q702009TriggerPoint_.pos, points._Q702009TriggerPoint_.rot, true, false, 20366, nil, 0, 7020)
end

function Quest7020:OnSubFinish702009(arg1)
    print("OnSubFinish702009")
    this:NpcDestroyImmediately(20366, npcs.Npc16999.alias)
    this:ActorDestroy("Q702009Trigger", 7020)
end

function Quest7020:OnSubFailed702009(arg1)
    print("OnSubFailed702009")
    this:RecycleAllRes()
end

function Quest7020:OnSubStart702010(arg1)
    print("OnSubStart702010")
end

function Quest7020:OnSubFinish702010(arg1)
    print("OnSubFinish702010")
end

function Quest7020:OnSubFailed702010(arg1)
    print("OnSubFailed702010")
    this:RecycleAllRes()
end

function Quest7020:OnSubStart702011(arg1)
    print("OnSubStart702011")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 30, 702011)
end

function Quest7020:OnSubFinish702011(arg1)
    print("OnSubFinish702011")
    this:NpcDestroyImmediately(20366, npcs.Npc16999.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_2, nil, nil, nil)
end

function Quest7020:OnSubStart702012(arg1)
    print("OnSubStart702012")
    this:NpcCreateWithNpcTriggerAndBlackscreen(702012, 0, 10, 1, npcs.Npc1022.id)
end

function Quest7020:OnSubFinish702012(arg1)
    print("OnSubFinish702012")
    this:NpcDestroyImmediately(3, npcs.Npc1022.alias)
end

return Quest7020
