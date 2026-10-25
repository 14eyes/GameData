require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1016 = class("Quest1016", QuestActorProxy)
Quest1016.defaultAlias = "Quest1016"
local clientData
local shareData
local zhongliData
local ganyuData
local paimonData
local tiantiezuiData
local subIDs
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1016:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
    subIDs = clientData.SubIDs
    zhongliData = clientData.ZhongliData
    ganyuData = clientData.GanyuData
    paimonData = clientData.PaimonData
    tiantiezuiData = clientData.TiantiezuiData
end

function Quest1016:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["101601"] = self.OnSubStart101601
    self.subStartHandlers["101602"] = self.OnSubStart101602
    self.subStartHandlers["101603"] = self.OnSubStart101603
    self.subStartHandlers["101604"] = self.OnSubStart101604
    self.subStartHandlers["101605"] = self.OnSubStart101605
    self.subStartHandlers["101606"] = self.OnSubStart101606
    self.subStartHandlers["101607"] = self.OnSubStart101607
    self.subStartHandlers["101608"] = self.OnSubStart101608
    self.subStartHandlers["101609"] = self.OnSubStart101609
    self.subStartHandlers["101610"] = self.OnSubStart101610
end

function Quest1016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["101601"] = self.OnSubFinish101601
    self.subFinishHandlers["101602"] = self.OnSubFinish101602
    self.subFinishHandlers["101603"] = self.OnSubFinish101603
    self.subFinishHandlers["101604"] = self.OnSubFinish101604
    self.subFinishHandlers["101605"] = self.OnSubFinish101605
    self.subFinishHandlers["101606"] = self.OnSubFinish101606
    self.subFinishHandlers["101607"] = self.OnSubFinish101607
    self.subFinishHandlers["101608"] = self.OnSubFinish101608
    self.subFinishHandlers["101609"] = self.OnSubFinish101609
    self.subFinishHandlers["101610"] = self.OnSubFinish101610
end

function Quest1016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["101601"] = self.OnSubFailed101601
    self.subFailedHandlers["101602"] = self.OnSubFailed101602
    self.subFailedHandlers["101603"] = self.OnSubFailed101603
    self.subFailedHandlers["101604"] = self.OnSubFailed101604
    self.subFailedHandlers["101605"] = self.OnSubFailed101605
    self.subFailedHandlers["101606"] = self.OnSubFailed101606
    self.subFailedHandlers["101607"] = self.OnSubFailed101607
    self.subFailedHandlers["101608"] = self.OnSubFailed101608
    self.subFailedHandlers["101609"] = self.OnSubFailed101609
    self.subFailedHandlers["101610"] = self.OnSubFailed101610
end

function Quest1016:InvokeOnInteraction(arg1)
    print("1016 Invoke : ")
    if arg1 == 1 then
        self:FinishQuestID(false, 101606)
        self:NotifyTo("Npc2148", DailyNPCManager.NpcEventType.HIDESELF, true)
    end
end

function Quest1016:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1016:RepeatCheckSit()
    print("CheckSitPos")
    Quest1016:CallOnAvatarSit(Quest1016.CheckSitPos)
end

function Quest1016:CheckSitPos()
    local pos = sceneData:GetDummyPoint(3, "Q1016Sit").pos
    local avatarPos = actorUtils.GetAvatarPos()
    print(pos.x - avatarPos.x)
    print(pos.z - avatarPos.z)
    if math.abs(pos.x - avatarPos.x) < 1 then
        if math.abs(pos.z - avatarPos.z) < 1 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 101608)
            end
        end
    else
        Quest1016:CallOnAvatarStand(Quest1016.RepeatCheckSit)
    end
end

function Quest1016:OnSubStart101605(arg1)
    actorMgr:CreateActorWithPos("Q101605Trigger", "Actor/Gadget/Q101605Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q101601AvatarSpawn").pos, sceneData:GetDummyPoint(3, "Q101601AvatarSpawn").rot, true, false)
    self.CallDelay(self, 2, function()
        local actor = actorMgr:GetActor("Q101605Trigger")
        if actor ~= nil then
            actor:DestroySelf()
        end

        self:FinishQuestID(true, 101605)
    end)
end

function Quest1016:OnSubFinish101605(arg1)
    print("101605 finish:...")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({zhongliData.Alias})
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, zhongliData.ID, 1)
        arg1_2:GetQuestNpcActor(zhongliData.Alias):SitOnChair(8010)
    end, nil, questNpcCreateTask)
end

function Quest1016:OnSubFailed101605(arg1)
    self:CreateQuestNpc(arg1, zhongliData.ID, 1)
    self:GetQuestNpcActor(zhongliData.Alias):SitOnChair(8010)
    print("101605 fail:...")
end

function Quest1016:OnSubStart101601(arg1)
    print("101601 start:...")
    self:GetQuestNpcActor(zhongliData.Alias):SitOnChair(8010)
    actorMgr:CreateActorWithPos("Q101608Trigger", "Actor/Gadget/Q101608Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q101601AvatarSpawn").pos, sceneData:GetDummyPoint(3, "Q101601AvatarSpawn").rot, true, false)
end

function Quest1016:OnSubFailed101601(arg1)
    print("101601 fail:...")
    actorMgr:CreateActorWithPos("Q101601Trigger", "Actor/Gadget/Q101601Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q101601AvatarSpawn").pos, sceneData:GetDummyPoint(3, "Q101601AvatarSpawn").rot, true, false)
    self.CallDelay(self, 2, function()
        local actor = actorMgr:GetActor("Q101601Trigger")
        if actor ~= nil then
            actor:DestroySelf()
        end

        self:DestroyQuestNpcActor(zhongliData.Alias, 3)
        self:DestroyQuestNpcActor(tiantiezuiData.Alias, 3)
        self:NotifyTo("Npc2148", DailyNPCManager.NpcEventType.STARTDAILY, true)
    end)
end

function Quest1016:OnSubFinish101601(arg1)
    print("OnFinished 101601")
end

function Quest1016:OnSubStart101608(arg1)
    print("OnFinished 101608")
    self:RepeatCheckSit()
end

function Quest1016:OnSubFailed101608(arg1)
    print("101608 fail:...")
    actorMgr:CreateActorWithPos("Q101601Trigger", "Actor/Gadget/Q101601Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q101601AvatarSpawn").pos, sceneData:GetDummyPoint(3, "Q101601AvatarSpawn").rot, true, false)
    self.CallDelay(self, 2, function()
        local actor = actorMgr:GetActor("Q101601Trigger")
        if actor ~= nil then
            actor:DestroySelf()
        end

        self:DestroyQuestNpcActor(zhongliData.Alias, 3)
        self:DestroyQuestNpcActor(tiantiezuiData.Alias, 3)
        self:NotifyTo("Npc2148", DailyNPCManager.NpcEventType.STARTDAILY, true)
    end)
end

function Quest1016:OnSubStart101609(arg1)
    print("101609 start:...")
    self:GetQuestNpcActor(zhongliData.Alias):SitOnChair(8010)
    self:NotifyTo("Npc2148", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest1016:OnSubFinish101609(arg1)
    print("OnFinished 101609")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(ganyuData.Alias, 3)
    end)
end

function Quest1016:OnSubStart101610(arg1)
    print("101610 start:...")
    self:CreateQuestNpc(arg1, zhongliData.ID)
    self:GetQuestNpcActor(zhongliData.Alias):SitOnChair(8010)
    self:NotifyTo("Npc2148", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest1016:OnSubFinish101610(arg1)
    print("OnFinished 101610")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(tiantiezuiData.Alias, 3)
        arg1:NotifyTo("Npc2148", DailyNPCManager.NpcEventType.STARTDAILY, true)
    end)
end

function Quest1016:Start() end
function Quest1016:OnDestroy() end
return Quest1016
