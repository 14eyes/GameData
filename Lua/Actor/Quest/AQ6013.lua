require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6013 = class("Quest6013", QuestActorProxy)
Quest6013.defaultAlias = "Quest6013"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6013:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["601318"] = self.OnSubStart601318,
        ["601301"] = self.OnSubStart601301,
        ["601302"] = self.OnSubStart601302,
        ["601303"] = self.OnSubStart601303,
        ["601306"] = self.OnSubStart601306,
        ["601307"] = self.OnSubStart601307,
        ["601316"] = self.OnSubStart601316,
        ["601308"] = self.OnSubStart601308,
        ["601312"] = self.OnSubStart601312,
        ["601309"] = self.OnSubStart601309,
        ["601310"] = self.OnSubStart601310,
        ["601313"] = self.OnSubStart601313,
        ["601314"] = self.OnSubStart601314,
        ["601315"] = self.OnSubStart601315,
        ["601311"] = self.OnSubStart601311,
        ["601317"] = self.OnSubStart601317,
        ["601304"] = self.OnSubStart601304,
        ["601305"] = self.OnSubStart601305
    }
end

function Quest6013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["601318"] = self.OnSubFinish601318,
        ["601301"] = self.OnSubFinish601301,
        ["601302"] = self.OnSubFinish601302,
        ["601303"] = self.OnSubFinish601303,
        ["601306"] = self.OnSubFinish601306,
        ["601307"] = self.OnSubFinish601307,
        ["601316"] = self.OnSubFinish601316,
        ["601308"] = self.OnSubFinish601308,
        ["601312"] = self.OnSubFinish601312,
        ["601309"] = self.OnSubFinish601309,
        ["601310"] = self.OnSubFinish601310,
        ["601313"] = self.OnSubFinish601313,
        ["601314"] = self.OnSubFinish601314,
        ["601315"] = self.OnSubFinish601315,
        ["601311"] = self.OnSubFinish601311,
        ["601317"] = self.OnSubFinish601317,
        ["601304"] = self.OnSubFinish601304,
        ["601305"] = self.OnSubFinish601305
    }
end

function Quest6013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["601301"] = self.OnSubFailed601301,
        ["601302"] = self.OnSubFailed601302,
        ["601303"] = self.OnSubFailed601303,
        ["601306"] = self.OnSubFailed601306,
        ["601308"] = self.OnSubFailed601308,
        ["601312"] = self.OnSubFailed601312,
        ["601309"] = self.OnSubFailed601309,
        ["601310"] = self.OnSubFailed601310,
        ["601313"] = self.OnSubFailed601313,
        ["601314"] = self.OnSubFailed601314,
        ["601315"] = self.OnSubFailed601315
    }
end

function Quest6013:Start()
    print("Start")
end

function Quest6013:OnDestroy()
    print("OnDestroy")
end

function Quest6013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6013:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q601317Trigger")
    this:ActorDestroy("Q601302Trigger")
    this:ActorDestroy("Q601318Trigger")
    this:ActorDestroy("Q601316Trigger")
end

function Quest6013:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6013:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6013:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6013:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6013:OnSubStart601318(arg1)
    print("OnSubStart601318")
end

function Quest6013:OnSubFinish601318(arg1)
    print("OnSubFinish601318")
end

function Quest6013:OnSubStart601301(arg1)
    print("OnSubStart601301")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1318.id, 0, 601301, 50, true)
end

function Quest6013:OnSubFinish601301(arg1)
    print("OnSubFinish601301")
    this:NpcDestroyImmediately(20293, npcs.Npc1318.alias)
end

function Quest6013:OnSubFailed601301(arg1)
    print("OnSubFailed601301")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 20293)
    this:DestroyNpcTrigger("Q601301N1318Trigger")
end

function Quest6013:OnSubStart601302(arg1)
    print("OnSubStart601302")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601302, 0, 10, 2, npcs.Npc1319.id)
    actorMgr:CreateActorWithPos("Q601302Trigger", "Actor/Gadget/Q601302Trigger", 70900002, 0, points._Q601302TriggerPoint_.pos, points._Q601302TriggerPoint_.rot, true, false, 20293)
end

function Quest6013:OnSubFinish601302(arg1)
    print("OnSubFinish601302")
    this:ActorDestroy("Q601302Trigger")
end

function Quest6013:OnSubFailed601302(arg1)
    print("OnSubFailed601302")
    this:SafeDestroyQuestNpc(npcs.Npc1319.alias, 20293)
    this:ActorDestroy("Q601302Trigger")
    this:DestroyNpcTrigger("Q601302N1319Trigger")
end

function Quest6013:OnSubStart601303(arg1)
    print("OnSubStart601303")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601303, 0, 60, 1, npcs.Npc15712.id)
end

function Quest6013:OnSubFinish601303(arg1)
    print("OnSubFinish601303")
end

function Quest6013:OnSubFailed601303(arg1)
    print("OnSubFailed601303")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20293)
    this:DestroyNpcTrigger("Q601303N15712Trigger")
end

function Quest6013:OnSubStart601306(arg1)
    print("OnSubStart601306")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601306, 0, 30, 2, npcs.Npc1319.id)
end

function Quest6013:OnSubFinish601306(arg1)
    print("OnSubFinish601306")
    this:NpcDestroyImmediately(20293, npcs.Npc1319.alias)
end

function Quest6013:OnSubFailed601306(arg1)
    print("OnSubFailed601306")
    this:SafeDestroyQuestNpc(npcs.Npc1319.alias, 20293)
    this:DestroyNpcTrigger("Q601306N1319Trigger")
end

function Quest6013:OnSubStart601307(arg1)
    print("OnSubStart601307")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20293 then
                this:TransmitPlayerByData(arg1, 5, datas.TransmitDatadSpecial02, nil, nil, nil)
            end
        end)

        this:NpcCreateWithNpcTriggerAndBlackscreen(601307, 0, 20, 2, npcs.Npc1316.id)
    end)
end

function Quest6013:OnSubFinish601307(arg1)
    print("OnSubFinish601307")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
end

function Quest6013:OnSubStart601316(arg1)
    print("OnSubStart601316")
    actorMgr:CreateActorWithPos("Q601316Trigger", "Actor/Gadget/Q601316Trigger", 70900002, 0, points._Q601316TriggerPoint_.pos, points._Q601316TriggerPoint_.rot, true, false, 1205)
end

function Quest6013:OnSubFinish601316(arg1)
    print("OnSubFinish601316")
    this:ActorDestroy("Q601316Trigger")
end

function Quest6013:OnSubStart601308(arg1)
    print("OnSubStart601308")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc15712.id, 0, 601308, 10, true)
    this:DeployRangeStoryByQuest(110601300, 20280, {x = 85.31, y = 44.331, z = 252.29}, 30, 35)
end

function Quest6013:OnSubFinish601308(arg1)
    print("OnSubFinish601308")
end

function Quest6013:OnSubFailed601308(arg1)
    print("OnSubFailed601308")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20280)
    this:DestroyNpcTrigger("Q601308N15712Trigger")
    this:CancelRangeStoryByQuest(110601300)
end

function Quest6013:OnSubStart601312(arg1)
    print("OnSubStart601312")
    this:CreateQuestNpc(arg1, npcs.Npc15796.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15712.id, 0, false, 0)
    this:DeployRangeStoryByQuest(110601300, 20280, {x = 85.31, y = 44.331, z = 252.29}, 30, 35)
end

function Quest6013:OnSubFinish601312(arg1)
    print("OnSubFinish601312")
    this:NpcDestroyImmediately(20280, npcs.Npc15796.alias)
end

function Quest6013:OnSubFailed601312(arg1)
    print("OnSubFailed601312")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20280)
    this:SafeDestroyQuestNpc(npcs.Npc15796.alias, 20280)
    this:CancelRangeStoryByQuest(110601300)
end

function Quest6013:OnSubStart601309(arg1)
    print("OnSubStart601309")
    this:CreateQuestNpc(arg1, npcs.Npc15719.id, 0, false, 0)
    this:DeployRangeStoryByQuest(110601300, 20280, {x = 85.31, y = 44.331, z = 252.29}, 30, 35)
end

function Quest6013:OnSubFinish601309(arg1)
    print("OnSubFinish601309")
    this:NpcDestroyImmediately(20280, npcs.Npc15719.alias)
    this:NpcDestroyImmediately(20280, npcs.Npc15712.alias)
end

function Quest6013:OnSubFailed601309(arg1)
    print("OnSubFailed601309")
    this:SafeDestroyQuestNpc(npcs.Npc15719.alias, 20280)
    this:CancelRangeStoryByQuest(110601300)
end

function Quest6013:OnSubStart601310(arg1)
    print("OnSubStart601310")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601310, 0, 5, 2, npcs.Npc15712.id)
    this:DeployRangeStoryByQuest(110601300, 20280, {x = 85.31, y = 44.331, z = 252.29}, 30, 35)
end

function Quest6013:OnSubFinish601310(arg1)
    print("OnSubFinish601310")
end

function Quest6013:OnSubFailed601310(arg1)
    print("OnSubFailed601310")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20280)
    this:DestroyNpcTrigger("Q601310N15712Trigger")
    this:CancelRangeStoryByQuest(110601300)
end

function Quest6013:OnSubStart601313(arg1)
    print("OnSubStart601313")
    this:CreateQuestNpc(arg1, npcs.Npc15712.id, 0, false, 0)
    this:DeployRangeStoryByQuest(110601300, 20280, {x = 85.31, y = 44.331, z = 252.29}, 30, 35)
end

function Quest6013:OnSubFinish601313(arg1)
    print("OnSubFinish601313")
    this:NpcDestroyImmediately(20280, npcs.Npc15712.alias)
end

function Quest6013:OnSubFailed601313(arg1)
    print("OnSubFailed601313")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20280)
    this:CancelRangeStoryByQuest(110601300)
end

function Quest6013:OnSubStart601314(arg1)
    print("OnSubStart601314")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601314, 0, 10, 2, npcs.Npc15712.id)
    this:DeployRangeStoryByQuest(110601300, 20280, {x = 85.31, y = 44.331, z = 252.29}, 30, 35)
end

function Quest6013:OnSubFinish601314(arg1)
    print("OnSubFinish601314")
end

function Quest6013:OnSubFailed601314(arg1)
    print("OnSubFailed601314")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20280)
    this:DestroyNpcTrigger("Q601314N15712Trigger")
    this:CancelRangeStoryByQuest(110601300)
end

function Quest6013:OnSubStart601315(arg1)
    print("OnSubStart601315")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601315, 0, 30, 2, npcs.Npc15712.id)
    this:DeployRangeStoryByQuest(110601300, 20280, {x = 85.31, y = 44.331, z = 252.29}, 30, 35)
end

function Quest6013:OnSubFinish601315(arg1)
    print("OnSubFinish601315")
    this:NpcDestroyImmediately(20280, npcs.Npc15712.alias)
    this:CancelRangeStoryByQuest(110601300)
end

function Quest6013:OnSubFailed601315(arg1)
    print("OnSubFailed601315")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20280)
    this:DestroyNpcTrigger("Q601315N15712Trigger")
    this:CancelRangeStoryByQuest(110601300)
end

function Quest6013:OnSubStart601311(arg1)
    print("OnSubStart601311")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 20280 then
                this:TransmitPlayerWithQuestIdByData(601311, 6, datas.TransmitDataWhiteScreen, nil, nil, nil)
            end
        end)

        this:NpcCreateWithNpcTriggerAndBlackscreen(601311, 0, 20, 2, npcs.Npc1316.id)
    end)
end

function Quest6013:OnSubFinish601311(arg1)
    print("OnSubFinish601311")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
    this:TransmitPlayerByData(arg1, 7, datas.TransmitDatadSpecial03, nil, nil, nil)
end

function Quest6013:OnSubStart601317(arg1)
    print("OnSubStart601317")
    actorMgr:CreateActorWithPos("Q601317Trigger", "Actor/Gadget/Q601317Trigger", 70900002, 0, points._Q601317TriggerPoint_.pos, points._Q601317TriggerPoint_.rot, true, false, 3)
end

function Quest6013:OnSubFinish601317(arg1)
    print("OnSubFinish601317")
    this:ActorDestroy("Q601317Trigger")
end

function Quest6013:OnSubStart601304(arg1)
    print("OnSubStart601304")
end

function Quest6013:OnSubFinish601304(arg1)
    print("OnSubFinish601304")
end

function Quest6013:OnSubStart601305(arg1)
    print("OnSubStart601305")
end

function Quest6013:OnSubFinish601305(arg1)
    print("OnSubFinish601305")
end

return Quest6013
