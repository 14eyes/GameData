require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15032 = class("Quest15032", QuestActorProxy)
Quest15032.defaultAlias = "Quest15032"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15032:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1503201"] = self.OnSubStart1503201,
        ["1503219"] = self.OnSubStart1503219,
        ["1503203"] = self.OnSubStart1503203,
        ["1503208"] = self.OnSubStart1503208,
        ["1503213"] = self.OnSubStart1503213,
        ["1503204"] = self.OnSubStart1503204,
        ["1503214"] = self.OnSubStart1503214,
        ["1503216"] = self.OnSubStart1503216,
        ["1503211"] = self.OnSubStart1503211,
        ["1503205"] = self.OnSubStart1503205,
        ["1503218"] = self.OnSubStart1503218,
        ["1503215"] = self.OnSubStart1503215,
        ["1503217"] = self.OnSubStart1503217,
        ["1503212"] = self.OnSubStart1503212,
        ["1503206"] = self.OnSubStart1503206,
        ["1503207"] = self.OnSubStart1503207,
        ["1503209"] = self.OnSubStart1503209,
        ["1503210"] = self.OnSubStart1503210,
        ["1503202"] = self.OnSubStart1503202
    }
end

function Quest15032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1503201"] = self.OnSubFinish1503201,
        ["1503219"] = self.OnSubFinish1503219,
        ["1503203"] = self.OnSubFinish1503203,
        ["1503208"] = self.OnSubFinish1503208,
        ["1503213"] = self.OnSubFinish1503213,
        ["1503204"] = self.OnSubFinish1503204,
        ["1503214"] = self.OnSubFinish1503214,
        ["1503216"] = self.OnSubFinish1503216,
        ["1503211"] = self.OnSubFinish1503211,
        ["1503205"] = self.OnSubFinish1503205,
        ["1503218"] = self.OnSubFinish1503218,
        ["1503215"] = self.OnSubFinish1503215,
        ["1503217"] = self.OnSubFinish1503217,
        ["1503212"] = self.OnSubFinish1503212,
        ["1503206"] = self.OnSubFinish1503206,
        ["1503207"] = self.OnSubFinish1503207,
        ["1503209"] = self.OnSubFinish1503209,
        ["1503210"] = self.OnSubFinish1503210,
        ["1503202"] = self.OnSubFinish1503202
    }
end

function Quest15032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1503203"] = self.OnSubFailed1503203,
        ["1503213"] = self.OnSubFailed1503213,
        ["1503204"] = self.OnSubFailed1503204,
        ["1503211"] = self.OnSubFailed1503211,
        ["1503205"] = self.OnSubFailed1503205,
        ["1503206"] = self.OnSubFailed1503206
    }
end

function Quest15032:Start()
    print("Start")
end

function Quest15032:OnDestroy()
    print("OnDestroy")
end

function Quest15032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15032:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:BanCrowdNpc(3517, 4, nil, false, nil)
end

function Quest15032:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q1503203Trigger_Enter")
    this:ActorDestroy("Q1503201igger_Dungeon")
    this:ActorDestroy("Q1503205gger_save")
    this:ActorDestroy("Q1503201Trigger_Talk")
    this:ActorDestroy("Q1503205Trigger_PreTP")
    this:BanCrowdNpc(3517, 4, nil, false, nil)
end

function Quest15032:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1503218 then
        actorUtils.FinishQuestID(false, 1503218)
    elseif arg1 == 1503219 then
        actorUtils.FinishQuestID(false, 1503219)
        this:PlayerEnterDungeonWithData(1513, 1239, 1503219, 1, datas.PlayerEnterDungeonData, nil, nil)
    elseif arg1 == 1503205 then
        this:ActorDestroy("Q1503205gger_save")
        this:ActorDestroy("Q1503205Trigger_PreTP")
    end
end

function Quest15032:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15032:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15032:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15032:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest15032:OnSubStart1503201(arg1)
    print("OnSubStart1503201")
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:BanCrowdNpc(3517, 4, nil, true, nil)
    actorMgr:CreateActorWithPos("Q1503201Trigger_Talk", "Actor/Gadget/Q1503201Trigger_Talk", 70900002, 0, points._Q1503201Trigger_TalkPoint_.pos, points._Q1503201Trigger_TalkPoint_.rot, true, false, 3)
end

function Quest15032:OnSubFinish1503201(arg1)
    print("OnSubFinish1503201")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
    this:ActorDestroy("Q1503201Trigger_Talk")
end

function Quest15032:OnSubStart1503219(arg1)
    print("OnSubStart1503219")
end

function Quest15032:OnSubFinish1503219(arg1)
    print("OnSubFinish1503219")
end

function Quest15032:OnSubStart1503203(arg1)
    print("OnSubStart1503203")
    this:CreateNpcWithCameraLookTrigger("Q1503203Trigger_Enter", 1503203, npcs.Npc1098.id, 0, 40, 1503202, true)
end

function Quest15032:OnSubFinish1503203(arg1)
    print("OnSubFinish1503203")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 20254)
end

function Quest15032:OnSubFailed1503203(arg1)
    print("OnSubFailed1503203")
    this:ActorDestroy("Q1503203Trigger_Enter")
end

function Quest15032:OnSubStart1503208(arg1)
    print("OnSubStart1503208")
end

function Quest15032:OnSubFinish1503208(arg1)
    print("OnSubFinish1503208")
end

function Quest15032:OnSubStart1503213(arg1)
    print("OnSubStart1503213")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503213, 0, 90, 1.5, npcs.Npc1098.id)
end

function Quest15032:OnSubFinish1503213(arg1)
    print("OnSubFinish1503213")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 20254)
end

function Quest15032:OnSubFailed1503213(arg1)
    print("OnSubFailed1503213")
    this:DestroyNpcTrigger("Q1503213N1098Trigger")
end

function Quest15032:OnSubStart1503204(arg1)
    print("OnSubStart1503204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503204, 0, 25, 1.5, npcs.Npc1098.id)
end

function Quest15032:OnSubFinish1503204(arg1)
    print("OnSubFinish1503204")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 20254)
end

function Quest15032:OnSubFailed1503204(arg1)
    print("OnSubFailed1503204")
    this:DestroyNpcTrigger("Q1503204N1098Trigger")
end

function Quest15032:OnSubStart1503214(arg1)
    print("OnSubStart1503214")
end

function Quest15032:OnSubFinish1503214(arg1)
    print("OnSubFinish1503214")
end

function Quest15032:OnSubStart1503216(arg1)
    print("OnSubStart1503216")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20254 then
                this:TransmitPlayerByData(arg1, 2, datas.TransmitData1503214, nil, nil, nil)
            end
        end)
    end)
end

function Quest15032:OnSubFinish1503216(arg1)
    print("OnSubFinish1503216")
end

function Quest15032:OnSubStart1503211(arg1)
    print("OnSubStart1503211")
    this:DeployStoryByQuest(121503211)
end

function Quest15032:OnSubFinish1503211(arg1)
    print("OnSubFinish1503211")
    this:CancelStoryByQuest(121503211)
end

function Quest15032:OnSubFailed1503211(arg1)
    print("OnSubFailed1503211")
    this:CancelStoryByQuest(121503211)
end

function Quest15032:OnSubStart1503205(arg1)
    print("OnSubStart1503205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503205, 0, 40, 1.5, npcs.Npc1098.id)
    actorMgr:CreateActorWithPos("Q1503205gger_save", "Actor/Gadget/Q1503205gger_save", 70900002, 0, points._Q1503205gger_savePoint_.pos, points._Q1503205gger_savePoint_.rot, true, false, 20254)
    actorMgr:CreateActorWithPos("Q1503205Trigger_PreTP", "Actor/Gadget/Q1503205Trigger_PreTP", 70900002, 0, points._Q1503205Trigger_PreTPPoint_.pos, points._Q1503205Trigger_PreTPPoint_.rot, true, false, 20254)
end

function Quest15032:OnSubFinish1503205(arg1)
    print("OnSubFinish1503205")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 20254)
    this:ActorDestroy("Q1503205gger_save")
    this:ActorDestroy("Q1503205Trigger_PreTP")
end

function Quest15032:OnSubFailed1503205(arg1)
    print("OnSubFailed1503205")
    this:DestroyNpcTrigger("Q1503205N1098Trigger")
    this:ActorDestroy("Q1503205gger_save")
    this:ActorDestroy("Q1503205Trigger_PreTP")
end

function Quest15032:OnSubStart1503218(arg1)
    print("OnSubStart1503218")
end

function Quest15032:OnSubFinish1503218(arg1)
    print("OnSubFinish1503218")
end

function Quest15032:OnSubStart1503215(arg1)
    print("OnSubStart1503215")
end

function Quest15032:OnSubFinish1503215(arg1)
    print("OnSubFinish1503215")
end

function Quest15032:OnSubStart1503217(arg1)
    print("OnSubStart1503217")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20254 then
                this:TransmitPlayerByData(arg1, 3, datas.TransmitData1503215, nil, nil, nil)
            end
        end)
    end)
end

function Quest15032:OnSubFinish1503217(arg1)
    print("OnSubFinish1503217")
end

function Quest15032:OnSubStart1503212(arg1)
    print("OnSubStart1503212")
end

function Quest15032:OnSubFinish1503212(arg1)
    print("OnSubFinish1503212")
end

function Quest15032:OnSubStart1503206(arg1)
    print("OnSubStart1503206")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503206, 0, 100, 1.5, npcs.Npc1098.id)
end

function Quest15032:OnSubFinish1503206(arg1)
    print("OnSubFinish1503206")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 20254)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
end

function Quest15032:OnSubFailed1503206(arg1)
    print("OnSubFailed1503206")
    this:DestroyNpcTrigger("Q1503206N1098Trigger")
end

function Quest15032:OnSubStart1503207(arg1)
    print("OnSubStart1503207")
end

function Quest15032:OnSubFinish1503207(arg1)
    print("OnSubFinish1503207")
end

function Quest15032:OnSubStart1503209(arg1)
    print("OnSubStart1503209")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1098.id, 0, 1503209, 20, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:BanCrowdNpc(3517, 4, nil, true, nil)
end

function Quest15032:OnSubFinish1503209(arg1)
    print("OnSubFinish1503209")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
end

function Quest15032:OnSubStart1503210(arg1)
    print("OnSubStart1503210")
    this:CreateQuestNpc(arg1, npcs.Npc6004.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:BanCrowdNpc(3517, 4, nil, true, nil)
end

function Quest15032:OnSubFinish1503210(arg1)
    print("OnSubFinish1503210")
    this:SafeDestroyQuestNpc(npcs.Npc6004.alias, 3)
    this:BanCrowdNpc(3517, 4, nil, false, nil)
    this:LightNotifyTo(npcs.Npc6393.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6391.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6392.alias, 0, true)
end

function Quest15032:OnSubStart1503202(arg1)
    print("OnSubStart1503202")
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
end

function Quest15032:OnSubFinish1503202(arg1)
    print("OnSubFinish1503202")
end

return Quest15032
