require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13000 = class("Quest13000", QuestActorProxy)
Quest13000.defaultAlias = "Quest13000"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1300001"] = self.OnSubStart1300001,
        ["1300002"] = self.OnSubStart1300002,
        ["1300004"] = self.OnSubStart1300004,
        ["1300005"] = self.OnSubStart1300005,
        ["1300006"] = self.OnSubStart1300006,
        ["1300007"] = self.OnSubStart1300007,
        ["1300008"] = self.OnSubStart1300008,
        ["1300009"] = self.OnSubStart1300009,
        ["1300010"] = self.OnSubStart1300010,
        ["1300011"] = self.OnSubStart1300011,
        ["1300003"] = self.OnSubStart1300003,
        ["1300017"] = self.OnSubStart1300017,
        ["1300012"] = self.OnSubStart1300012,
        ["1300013"] = self.OnSubStart1300013,
        ["1300014"] = self.OnSubStart1300014,
        ["1300015"] = self.OnSubStart1300015,
        ["1300016"] = self.OnSubStart1300016
    }
end

function Quest13000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1300001"] = self.OnSubFinish1300001,
        ["1300002"] = self.OnSubFinish1300002,
        ["1300004"] = self.OnSubFinish1300004,
        ["1300005"] = self.OnSubFinish1300005,
        ["1300006"] = self.OnSubFinish1300006,
        ["1300007"] = self.OnSubFinish1300007,
        ["1300008"] = self.OnSubFinish1300008,
        ["1300009"] = self.OnSubFinish1300009,
        ["1300010"] = self.OnSubFinish1300010,
        ["1300011"] = self.OnSubFinish1300011,
        ["1300003"] = self.OnSubFinish1300003,
        ["1300017"] = self.OnSubFinish1300017,
        ["1300012"] = self.OnSubFinish1300012,
        ["1300013"] = self.OnSubFinish1300013,
        ["1300014"] = self.OnSubFinish1300014,
        ["1300015"] = self.OnSubFinish1300015,
        ["1300016"] = self.OnSubFinish1300016
    }
end

function Quest13000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13000:Start()
    print("Start")
end

function Quest13000:OnDestroy()
    print("OnDestroy")
end

function Quest13000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13000:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13000:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 114 then
        self:ActionSafeCall(function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12597Data.alias)
            questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
            questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
            questNpcActor:DisableInteeHeadCtrl(true)
        end)
    end
end

function Quest13000:OnSubStart1300001(arg1)
    print("OnSubStart1300001")
    self:CreateQuestNpc(arg1, npcs.Npc4019Data.id, 2)
end

function Quest13000:OnSubFinish1300001(arg1)
    print("OnSubFinish1300001")
    self:SafeDestroyQuestNpc(npcs.Npc4019Data.alias, 3)
end

function Quest13000:OnSubStart1300002(arg1)
    print("OnSubStart1300002")
    self:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12597Data.id, 2)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    self:CreateQuestNpc(arg1, npcs.Npc12598Data.id, 3)
    local v = self:GetQuestNpcActor(npcs.Npc12598Data.alias)
    v:DoFreeStyle(1160, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q1300002Trigger", "Actor/Gadget/Q1300002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300002_guide").pos, sceneData:GetDummyPoint(3, "Q1300002_guide").rot, true, false, 3)
end

function Quest13000:OnSubFinish1300002(arg1)
    print("OnSubFinish1300002")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12598Data.alias, 3)
end

function Quest13000:OnSubStart1300004(arg1)
    print("OnSubStart1300004")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:CreateQuestNpc(arg1, npcs.Npc12599Data.id, 2)
    local v = self:GetQuestNpcActor(npcs.Npc12599Data.alias)
    v:DoFreeStyle(1160, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
    self:CreateQuestNpc(arg1, npcs.Npc12600Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12600Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12601Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12601Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12602Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12640Data.id, 6)
    self:NotifyTo(npcs.Npc4313Data.alias, 1, true)
end

function Quest13000:OnSubFinish1300004(arg1)
    print("OnSubFinish1300004")
end

function Quest13000:OnSubStart1300005(arg1)
    print("OnSubStart1300005")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12600Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12601Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest13000:OnSubFinish1300005(arg1)
    print("OnSubFinish1300005")
end

function Quest13000:OnSubStart1300006(arg1)
    print("OnSubStart1300006")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12600Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12601Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest13000:OnSubFinish1300006(arg1)
    print("OnSubFinish1300006")
end

function Quest13000:OnSubStart1300007(arg1)
    print("OnSubStart1300007")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12600Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12601Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest13000:OnSubFinish1300007(arg1)
    print("OnSubFinish1300007")
end

function Quest13000:OnSubStart1300008(arg1)
    print("OnSubStart1300008")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12599Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12600Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12601Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:NotifyTo(npcs.Npc4313Data.alias, 1, true)
end

function Quest13000:OnSubFinish1300008(arg1)
    print("OnSubFinish1300008")
end

function Quest13000:OnSubStart1300009(arg1)
    print("OnSubStart1300009")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12599Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12600Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12601Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:NotifyTo(npcs.Npc4313Data.alias, 1, true)
end

function Quest13000:OnSubFinish1300009(arg1)
    print("OnSubFinish1300009")
    self:SafeDestroyQuestNpc(npcs.Npc12640Data.alias, 3)
end

function Quest13000:OnSubStart1300010(arg1)
    print("OnSubStart1300010")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12600Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12601Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1300010Trigger", "Actor/Gadget/Q1300010Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300010_guide").pos, sceneData:GetDummyPoint(3, "Q1300010_guide").rot, true, false, 3)
    self:NotifyTo(npcs.Npc4313Data.alias, 1, true)
end

function Quest13000:OnSubFinish1300010(arg1)
    print("OnSubFinish1300010")
    self:ActorDestroy("Q1300010Trigger")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4313Data.alias, 0, true)
end

function Quest13000:OnSubStart1300011(arg1)
    print("OnSubStart1300011")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:CreateQuestNpc(arg1, npcs.Npc12640Data.id, 7)
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 13000)
    end)

    local v = self:GetQuestNpcActor(npcs.Npc12640Data.alias, 13000)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.RoutePointsData, 7, 3, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        actorMgr:GetActor(npcs.Npc12640Data.alias):FinishQuestID(false, 1300011)
    end, nil, nil, nil, nil, nil, true)
end

function Quest13000:OnSubFinish1300011(arg1)
    print("OnSubFinish1300011")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 13000)
end

function Quest13000:OnSubStart1300003(arg1)
    print("OnSubStart1300003")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12640Data.alias):DoFreeStyle(1040, true, nil, true, true, false)
end

function Quest13000:OnSubFinish1300003(arg1)
    print("OnSubFinish1300003")
end

function Quest13000:OnSubStart1300017(arg1)
    print("OnSubStart1300017")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12640Data.alias):DoFreeStyle(1030, true, nil, true, true, false)
    self:CallDelay(5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc12640Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
        arg1:CallDelay(3, function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12640Data.alias, 13000)
            arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1, 12, 5, -1, function(arg1)
                arg1:SyncPos(2)
                if arg1.BeFollowState == BeFollowState.FAILED then
                    return
                end

                arg1:CallDelay(2, function(arg1)
                    actorMgr:GetActor(npcs.Npc12640Data.alias):FinishQuestID(false, 1300017)
                end)
            end, nil, nil, nil, nil, nil, false)

            arg1:NarratorOnlyTaskByData(datas.NarratorWithId2, nil, 13000)
        end)
    end)
end

function Quest13000:OnSubFinish1300017(arg1)
    print("OnSubFinish1300017")
end

function Quest13000:OnSubStart1300012(arg1)
    print("OnSubStart1300012")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:CreateQuestNpc(arg1, npcs.Npc12600Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12601Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12602Data.id, 4)
    self:CreateQuestNpcWithTriggerBlack(npcs.Npc1050Data.alias, 1300012, npcs.Npc1050Data.id, 1, 8, 1)
end

function Quest13000:OnSubFinish1300012(arg1)
    print("OnSubFinish1300012")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12603Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12640Data.alias, 3)
end

function Quest13000:OnSubStart1300013(arg1)
    print("OnSubStart1300013")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest13000:OnSubFinish1300013(arg1)
    print("OnSubFinish1300013")
    self:TransmitPlayerByQuestId(1300013, 1)
end

function Quest13000:OnSubStart1300014(arg1)
    print("OnSubStart1300014")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12603Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1300014Trigger", "Actor/Gadget/Q1300014Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300014_N12603").pos, sceneData:GetDummyPoint(3, "Q1300014_N12603").rot, true, false, 3)
end

function Quest13000:OnSubFinish1300014(arg1)
    print("OnSubFinish1300014")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest13000:OnSubStart1300015(arg1)
    print("OnSubStart1300015")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:CreateQuestNpc(arg1, npcs.Npc12599Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12600Data.id, 3)
    local v = self:GetQuestNpcActor(npcs.Npc12600Data.alias)
    v:DoFreeStyle(1120, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12601Data.id, 4)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12601Data.alias)
    questNpcActor2:DoFreeStyle(1230, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12602Data.id, 5)
    local questNpcActor3 = self:GetQuestNpcActor(npcs.Npc12602Data.alias)
    questNpcActor3:DoFreeStyle(1190, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
    questNpcActor2:DisableInteeHeadCtrl(true)
    questNpcActor3:DisableInteeHeadCtrl(true)
    self:NotifyTo(npcs.Npc4313Data.alias, 1, true)
end

function Quest13000:OnSubFinish1300015(arg1)
    print("OnSubFinish1300015")
end

function Quest13000:OnSubStart1300016(arg1)
    print("OnSubStart1300016")
    self:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12597Data.id, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:CreateQuestNpc(arg1, npcs.Npc12598Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12598Data.alias):DoFreeStyle(1250, true, nil, true, true, false, false)
    local v = self:GetQuestNpcActor(npcs.Npc12600Data.alias)
    v:DoFreeStyle(1120, true, nil, true, true, false, false)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12601Data.alias)
    questNpcActor2:DoFreeStyle(1230, true, nil, true, true, false, false)
    local questNpcActor3 = self:GetQuestNpcActor(npcs.Npc12602Data.alias)
    questNpcActor3:DoFreeStyle(1190, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12640Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12640Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12598Data.id, 4)
    v:DisableInteeHeadCtrl(true)
    questNpcActor2:DisableInteeHeadCtrl(true)
    questNpcActor3:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q1300016Trigger", "Actor/Gadget/Q1300016Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "N1051_T1300016").pos, sceneData:GetDummyPoint(3, "N1051_T1300016").rot, true, false, 3)
    self:NotifyTo(npcs.Npc4313Data.alias, 1, true)
end

function Quest13000:OnSubFinish1300016(arg1)
    print("OnSubFinish1300016")
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12597Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12598Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12599Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12600Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12602Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12603Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12640Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4313Data.alias, 0, true)
end

return Quest13000
