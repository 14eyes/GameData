require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76152 = class("Quest76152", QuestActorProxy)
Quest76152.defaultAlias = "Quest76152"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76152:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76152:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7615201"] = self.OnSubStart7615201,
        ["7615202"] = self.OnSubStart7615202,
        ["7615203"] = self.OnSubStart7615203,
        ["7615204"] = self.OnSubStart7615204,
        ["7615209"] = self.OnSubStart7615209,
        ["7615205"] = self.OnSubStart7615205,
        ["7615206"] = self.OnSubStart7615206,
        ["7615207"] = self.OnSubStart7615207,
        ["7615210"] = self.OnSubStart7615210,
        ["7615208"] = self.OnSubStart7615208
    }
end

function Quest76152:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7615201"] = self.OnSubFinish7615201,
        ["7615202"] = self.OnSubFinish7615202,
        ["7615203"] = self.OnSubFinish7615203,
        ["7615204"] = self.OnSubFinish7615204,
        ["7615209"] = self.OnSubFinish7615209,
        ["7615205"] = self.OnSubFinish7615205,
        ["7615206"] = self.OnSubFinish7615206,
        ["7615207"] = self.OnSubFinish7615207,
        ["7615210"] = self.OnSubFinish7615210,
        ["7615208"] = self.OnSubFinish7615208
    }
end

function Quest76152:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7615204"] = self.OnSubFailed7615204,
        ["7615209"] = self.OnSubFailed7615209,
        ["7615206"] = self.OnSubFailed7615206,
        ["7615207"] = self.OnSubFailed7615207,
        ["7615210"] = self.OnSubFailed7615210
    }
end

function Quest76152:Start()
    print("Start")
end

function Quest76152:OnDestroy()
    print("OnDestroy")
end

function Quest76152:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76152:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76152:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76152:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7615201Trigger", nil)
    this:ActorDestroy("Q7615203Trigger", nil)
end

function Quest76152:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest76152:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76152:ActorDestroy(arg1, arg2)
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

function Quest76152:ActorDestroy(arg1, arg2)
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

function Quest76152:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest76152:OnSubStart7615201(arg1)
    print("OnSubStart7615201")
    this:CreateQuestNpc(arg1, npcs.Npc22272.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22306.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7615201Trigger", "Actor/Gadget/Q7615201Trigger", 70900002, 0, points._Q7615201TriggerPoint_.pos, points._Q7615201TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    this:GetQuestNpcActor(npcs.Npc22272.alias, 76152):ForceAvatarWalkByDist(3, 3)
end

function Quest76152:OnSubFinish7615201(arg1)
    print("OnSubFinish7615201")
    this:CallDelayByQuest("delaydelete", 0.5, function(arg1)
        this:NpcDestroyWithDither(103, npcs.Npc22272.alias)
        this:SafeDestroyQuestNpc(npcs.Npc22306.alias, 103)
        this:GetQuestNpcActor(npcs.Npc22272.alias, 76152):ResetForceAvatarWalk()
    end)
end

function Quest76152:OnSubStart7615202(arg1)
    print("OnSubStart7615202")
    this:PlayCutsceneIndex(7609507, function(arg1)
        actorUtils.FinishQuestID(false, 7615202)
    end, nil, nil, false)
end

function Quest76152:OnSubFinish7615202(arg1)
    print("OnSubFinish7615202")
end

function Quest76152:OnSubStart7615203(arg1)
    print("OnSubStart7615203")
    this:TransmitPlayerByQuestId(7615203, 1, nil, nil, nil)
    actorMgr:CreateActorWithPos("Q7615203Trigger", "Actor/Gadget/Q7615203Trigger", 70900002, 0, points._Q7615203TriggerPoint_.pos, points._Q7615203TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76152:OnSubFinish7615203(arg1)
    print("OnSubFinish7615203")
    this:SetNavigationByMainId(76152, true)
end

function Quest76152:OnSubStart7615204(arg1)
    print("OnSubStart7615204")
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlayBeach")
    actorMgr:CreateActorWithPos("Q7615204Trigger", "Actor/Gadget/Q7615204Trigger", 70900002, 0, points._Q7615204TriggerPoint_.pos, points._Q7615204TriggerPoint_.rot, true, false, 103, nil, 0, 76152)
end

function Quest76152:OnSubFinish7615204(arg1)
    print("OnSubFinish7615204")
end

function Quest76152:OnSubFailed7615204(arg1)
    print("OnSubFailed7615204")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayBeach")
end

function Quest76152:OnSubStart7615209(arg1)
    print("OnSubStart7615209")
    actorMgr:CreateActorWithPos("Q7615209Trigger_RollBack_Beach", "Actor/Gadget/Q7615209Trigger_RollBack_Beach", 70900002, 0, points._Q7615209Trigger_RollBack_BeachPoint_.pos, points._Q7615209Trigger_RollBack_BeachPoint_.rot, true, false, 103, nil, 0, 76152)
    actorMgr:CreateActorWithPos("Q7615209Trigger_disableESC_Beach", "Actor/Gadget/Q7615209Trigger_disableESC_Beach", 70900002, 0, points._Q7615209Trigger_disableESC_BeachPoint_.pos, points._Q7615209Trigger_disableESC_BeachPoint_.rot, true, false, 103, nil, 0, 76152)
end

function Quest76152:OnSubFinish7615209(arg1)
    print("OnSubFinish7615209")
    this:ActorDestroy("Q7615209Trigger_RollBack_Beach", nil)
end

function Quest76152:OnSubFailed7615209(arg1)
    print("OnSubFailed7615209")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayBeach")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayMindSpace")
end

function Quest76152:OnSubStart7615205(arg1)
    print("OnSubStart7615205")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 103 then
                this:TransmitPlayerByData(arg1, 1, datas.TransmitData7614802, function(arg1)
                    actorUtils.FinishQuestID(false, 7615205)
                end, nil, nil)
            end
        end)
    end)
end

function Quest76152:OnSubFinish7615205(arg1)
    print("OnSubFinish7615205")
    this:ActorDestroy("Q7615209Trigger_disableESC_Beach", nil)
end

function Quest76152:OnSubStart7615206(arg1)
    print("OnSubStart7615206")
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlayBeach")
end

function Quest76152:OnSubFinish7615206(arg1)
    print("OnSubFinish7615206")
end

function Quest76152:OnSubFailed7615206(arg1)
    print("OnSubFailed7615206")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayBeach")
end

function Quest76152:OnSubStart7615207(arg1)
    print("OnSubStart7615207")
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlayMindSpace")
    actorMgr:CreateActorWithPos("Q7615207Trigger", "Actor/Gadget/Q7615207Trigger", 70900002, 0, points._Q7615207TriggerPoint_.pos, points._Q7615207TriggerPoint_.rot, true, false, 103, nil, 0, 76152)
    if actorUtils.IsMalePlayer() then
        this:CreateQuestNpc(arg1, npcs.Npc1025.id, 0, true, 0.5)
        this:GetQuestNpcActor(npcs.Npc1025.alias, 76152):SetPlayerNpcEnergyType(2)
        this:GetQuestNpcActor(npcs.Npc1025.alias, 76152):DisableInteeHeadCtrl(true)
    else
        this:CreateQuestNpc(arg1, npcs.Npc1026.id, 0, true, 0.5)
        this:GetQuestNpcActor(npcs.Npc1026.alias, 76152):SetPlayerNpcEnergyType(2)
        this:GetQuestNpcActor(npcs.Npc1026.alias, 76152):DisableInteeHeadCtrl(true)
    end
end

function Quest76152:OnSubFinish7615207(arg1)
    print("OnSubFinish7615207")
end

function Quest76152:OnSubFailed7615207(arg1)
    print("OnSubFailed7615207")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayMindSpace")
end

function Quest76152:OnSubStart7615210(arg1)
    print("OnSubStart7615210")
    actorMgr:CreateActorWithPos("Q7615209Trigger_RollBack_MindSpace", "Actor/Gadget/Q7615209Trigger_RollBack_MindSpace", 70900002, 0, points._Q7615209Trigger_RollBack_MindSpacePoint_.pos, points._Q7615209Trigger_RollBack_MindSpacePoint_.rot, true, false, 103, nil, 0, 76152)
    actorMgr:CreateActorWithPos("Q7615209Trigger_disableESC_MindSpace", "Actor/Gadget/Q7615209Trigger_disableESC_MindSpace", 70900002, 0, points._Q7615209Trigger_disableESC_MindSpacePoint_.pos, points._Q7615209Trigger_disableESC_MindSpacePoint_.rot, true, false, 103, nil, 0, 76152)
end

function Quest76152:OnSubFinish7615210(arg1)
    print("OnSubFinish7615210")
    this:ActorDestroy("Q7615209Trigger_RollBack_MindSpace", nil)
end

function Quest76152:OnSubFailed7615210(arg1)
    print("OnSubFailed7615210")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayBeach")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayMindSpace")
end

function Quest76152:OnSubStart7615208(arg1)
    print("OnSubStart7615208")
    actorMgr:CreateActorWithPos("Q7615208Tigger", "Actor/Gadget/Q7615208Tigger", 70900002, 0, points._Q7615208TiggerPoint_.pos, points._Q7615208TiggerPoint_.rot, true, false, 103, nil, 0, 0)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 103 then
                this:TransmitPlayerByData(arg1, 1, datas.TransmitData7614805, function(arg1)
                    actorUtils.FinishQuestID(false, 7615208)
                end, nil, nil)
            end
        end)
    end)
end

function Quest76152:OnSubFinish7615208(arg1)
    print("OnSubFinish7615208")
    this:RemoveAllQuestTrigger()
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayBeach")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayMindSpace")
end

return Quest76152
