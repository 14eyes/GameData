require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40100 = class("Quest40100", QuestActorProxy)
Quest40100.defaultAlias = "Quest40100"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40100:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40100:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4010001"] = self.OnSubStart4010001,
        ["4010010"] = self.OnSubStart4010010,
        ["4010002"] = self.OnSubStart4010002,
        ["4010003"] = self.OnSubStart4010003,
        ["4010004"] = self.OnSubStart4010004,
        ["4010006"] = self.OnSubStart4010006,
        ["4010011"] = self.OnSubStart4010011,
        ["4010005"] = self.OnSubStart4010005,
        ["4010007"] = self.OnSubStart4010007,
        ["4010012"] = self.OnSubStart4010012,
        ["4010013"] = self.OnSubStart4010013,
        ["4010020"] = self.OnSubStart4010020,
        ["4010021"] = self.OnSubStart4010021,
        ["4010022"] = self.OnSubStart4010022,
        ["4010023"] = self.OnSubStart4010023,
        ["4010024"] = self.OnSubStart4010024,
        ["4010017"] = self.OnSubStart4010017,
        ["4010018"] = self.OnSubStart4010018,
        ["4010019"] = self.OnSubStart4010019,
        ["4010025"] = self.OnSubStart4010025,
        ["4010008"] = self.OnSubStart4010008,
        ["4010009"] = self.OnSubStart4010009,
        ["4010026"] = self.OnSubStart4010026,
        ["4010027"] = self.OnSubStart4010027,
        ["4010014"] = self.OnSubStart4010014,
        ["4010015"] = self.OnSubStart4010015,
        ["4010016"] = self.OnSubStart4010016
    }
end

function Quest40100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4010001"] = self.OnSubFinish4010001,
        ["4010010"] = self.OnSubFinish4010010,
        ["4010002"] = self.OnSubFinish4010002,
        ["4010003"] = self.OnSubFinish4010003,
        ["4010004"] = self.OnSubFinish4010004,
        ["4010006"] = self.OnSubFinish4010006,
        ["4010011"] = self.OnSubFinish4010011,
        ["4010005"] = self.OnSubFinish4010005,
        ["4010007"] = self.OnSubFinish4010007,
        ["4010012"] = self.OnSubFinish4010012,
        ["4010013"] = self.OnSubFinish4010013,
        ["4010020"] = self.OnSubFinish4010020,
        ["4010021"] = self.OnSubFinish4010021,
        ["4010022"] = self.OnSubFinish4010022,
        ["4010023"] = self.OnSubFinish4010023,
        ["4010024"] = self.OnSubFinish4010024,
        ["4010017"] = self.OnSubFinish4010017,
        ["4010018"] = self.OnSubFinish4010018,
        ["4010019"] = self.OnSubFinish4010019,
        ["4010025"] = self.OnSubFinish4010025,
        ["4010008"] = self.OnSubFinish4010008,
        ["4010009"] = self.OnSubFinish4010009,
        ["4010026"] = self.OnSubFinish4010026,
        ["4010027"] = self.OnSubFinish4010027,
        ["4010014"] = self.OnSubFinish4010014,
        ["4010015"] = self.OnSubFinish4010015,
        ["4010016"] = self.OnSubFinish4010016
    }
end

function Quest40100:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40100:Start()
    print("Start")
end

function Quest40100:OnDestroy()
    print("OnDestroy")
end

function Quest40100:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40100:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40100:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13152Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13153Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1065Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13151Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13199Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13200Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13285Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13286Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13287Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13288Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13289Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13290Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13291Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13292Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13203Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13204Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13205Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13206Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13207Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4068Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4067Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4054Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4068Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4067Data.alias, 0, true)
    this:RemoveLocalGadget(70710787, "1")
    actorMgr:DestroyEntityActor("Q4010002_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010003_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010012_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010013_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010020_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010021_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010022_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010024_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010025_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010026_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010027_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010019_TriggerIn", 3, false)
    this:CancelStoryByQuest(4010021)
    this:CancelStoryByQuest(4010024)
    this:RemoveLocalGadget(70711020, "1")
    actorUtils.RemoveQuestAvatarNpcMark(1058, 40100)
    actorUtils.RemoveQuestAvatarNpcMark(1050, 40100)
    actorUtils.RemoveQuestAvatarNpcMark(1067, 40100)
    actorUtils.RemoveQuestAvatarNpcMark(1063, 40100)
    actorUtils.RemoveQuestAvatarNpcMark(1065, 40100)
    actorUtils.RemoveQuestAvatarNpcMark(1064, 40100)
end

function Quest40100:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40100:NormalCheck()
    print("NormalCheck")
    this:CheckDistance()
end

function Quest40100:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4010008 then
        this:SetLocalGadgetState(70711020, "1", 202)
        actorUtils.FinishQuestID(false, 4010008)
    elseif arg1 == 4010009 then
        actorUtils.FinishQuestID(false, 4010009)
    end
end

function Quest40100:CheckDistance()
    print("CheckDistance")
    if self:GetSubQuestState(4010024) == 2 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1063Data.alias)
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = questNpcActor:GetPos()
        local dist = M.Dist(pos, avatarPos)
        if 40 < dist then
            actorUtils.FinishQuestID(false, 4010024)
        end

        print("currLen = ", dist)
        self:CallDelay(1, self.NormalCheck)
    end
end

function Quest40100:OnSubStart4010001(arg1)
    print("OnSubStart4010001")
    actorUtils.FinishQuestID(false, 4010001)
end

function Quest40100:OnSubFinish4010001(arg1)
    print("OnSubFinish4010001")
end

function Quest40100:OnSubStart4010010(arg1)
    print("OnSubStart4010010")
end

function Quest40100:OnSubFinish4010010(arg1)
    print("OnSubFinish4010010")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q4010001_NarratorWithId)
    end)
end

function Quest40100:OnSubStart4010002(arg1)
    print("OnSubStart4010002")
    this:CreateQuestNpc(arg1, npcs.Npc13152Data.id, 1)
    actorMgr:CreateActorWithPos("Q4010002_TriggerIn", "Actor/Gadget/Q4010002_TriggerIn", 70900002, 0, points.TPos_Q4010002_TriggerIn.pos, points.TPos_Q4010002_TriggerIn.rot, true, false, 3)
end

function Quest40100:OnSubFinish4010002(arg1)
    print("OnSubFinish4010002")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40100:OnSubStart4010003(arg1)
    print("OnSubStart4010003")
    this:CreateQuestNpc(arg1, npcs.Npc13153Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13285Data.id, 14)
    this:CreateQuestNpc(arg1, npcs.Npc13286Data.id, 15)
    this:CreateQuestNpc(arg1, npcs.Npc13287Data.id, 16)
    this:CreateQuestNpc(arg1, npcs.Npc13288Data.id, 17)
    this:CreateQuestNpc(arg1, npcs.Npc13289Data.id, 18)
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(5010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13290Data.id, 19)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(5010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13291Data.id, 20)
    this:CreateQuestNpc(arg1, npcs.Npc13292Data.id, 21)
    this:DailyNpcSafeHideSelf(npcs.Npc4068Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4067Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4010003_TriggerIn", "Actor/Gadget/Q4010003_TriggerIn", 70900002, 0, points.TPos_Q4010003_TriggerIn.pos, points.TPos_Q4010003_TriggerIn.rot, true, false, 3)
end

function Quest40100:OnSubFinish4010003(arg1)
    print("OnSubFinish4010003")
    this:SafeDestroyQuestNpc(npcs.Npc13152Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13153Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13285Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13286Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13287Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13288Data.alias, 3)
end

function Quest40100:OnSubStart4010004(arg1)
    print("OnSubStart4010004")
    this:CreateQuestNpc(arg1, npcs.Npc13289Data.id, 12)
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13290Data.id, 13)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13291Data.id, 14)
    this:CreateQuestNpc(arg1, npcs.Npc13292Data.id, 15)
    this:DailyNpcSafeHideSelf(npcs.Npc4068Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4067Data.alias, 1, true)
end

function Quest40100:OnSubFinish4010004(arg1)
    print("OnSubFinish4010004")
end

function Quest40100:OnSubStart4010006(arg1)
    print("OnSubStart4010006")
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4068Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4067Data.alias, 1, true)
end

function Quest40100:OnSubFinish4010006(arg1)
    print("OnSubFinish4010006")
end

function Quest40100:OnSubStart4010011(arg1)
    print("OnSubStart4010011")
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4068Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4067Data.alias, 1, true)
end

function Quest40100:OnSubFinish4010011(arg1)
    print("OnSubFinish4010011")
end

function Quest40100:OnSubStart4010005(arg1)
    print("OnSubStart4010005")
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4068Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4067Data.alias, 1, true)
end

function Quest40100:OnSubFinish4010005(arg1)
    print("OnSubFinish4010005")
end

function Quest40100:OnSubStart4010007(arg1)
    print("OnSubStart4010007")
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc1067Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc1065Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc13199Data.id, 12)
    this:CreateQuestNpc(arg1, npcs.Npc13200Data.id, 13)
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4068Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4067Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40100:OnSubFinish4010007(arg1)
    print("OnSubFinish4010007")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q4010012_NarratorWithId)
    end)
end

function Quest40100:OnSubStart4010012(arg1)
    print("OnSubStart4010012")
    this:CreateQuestNpc(arg1, npcs.Npc13153Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4068Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4067Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4010012_TriggerIn", "Actor/Gadget/Q4010012_TriggerIn", 70900002, 0, points.TPos_Q4010012_TriggerIn.pos, points.TPos_Q4010012_TriggerIn.rot, true, false, 3)
    this:CreateLocalGadget(70710787, "1", {x = -385.47, y = 241.902, z = 2644.366}, {x = 0.0, y = -89.945, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40100:OnSubFinish4010012(arg1)
    print("OnSubFinish4010012")
    this:RemoveLocalGadget(70710787, "1")
    this:SafeDestroyQuestNpc(npcs.Npc13153Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1065Data.alias, 3)
end

function Quest40100:OnSubStart4010013(arg1)
    print("OnSubStart4010013")
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 10)
    this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 11)
    this:CreateQuestNpc(arg1, npcs.Npc13289Data.id, 13)
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(5010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13290Data.id, 14)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(5010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13291Data.id, 15)
    this:CreateQuestNpc(arg1, npcs.Npc13292Data.id, 16)
    this:DailyNpcSafeHideSelf(npcs.Npc4068Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4067Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4010013_TriggerIn", "Actor/Gadget/Q4010013_TriggerIn", 70900002, 0, points.TPos_Q4010013_TriggerIn.pos, points.TPos_Q4010013_TriggerIn.rot, true, false, 3)
end

function Quest40100:OnSubFinish4010013(arg1)
    print("OnSubFinish4010013")
    this:LightNotifyTo(npcs.Npc4068Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4067Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13199Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13200Data.alias, 3)
end

function Quest40100:OnSubStart4010020(arg1)
    print("OnSubStart4010020")
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(5010, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(5010, true, nil, true, true, false, false)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13153Data.id, 1)
        this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 2)
        this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 3)
        this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 4)
        this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 5)
        this:CreateQuestNpc(arg1, npcs.Npc1067Data.id, 6)
        this:CreateQuestNpc(arg1, npcs.Npc1065Data.id, 7)
        this:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 8)
        this:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 9)
        this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 10)
        actorUtils.AddQuestAvatarNpcMark(1058, 40100, true, "UI_AvatarIcon_Side_Cyno")
        actorUtils.AddQuestAvatarNpcMark(1050, 40100, false, "UI_AvatarIcon_Side_Tighnari")
        actorUtils.AddQuestAvatarNpcMark(1067, 40100, false, "UI_AvatarIcon_Side_Faruzan")
        actorUtils.AddQuestAvatarNpcMark(1063, 40100, false, "UI_AvatarIcon_Side_Layla")
        actorUtils.AddQuestAvatarNpcMark(1065, 40100, false, "UI_AvatarIcon_Side_Wanderer")
        actorUtils.AddQuestAvatarNpcMark(1064, 40100, false, "UI_AvatarIcon_Side_Kaveh")
    end)

    actorMgr:CreateActorWithPos("Q4010020_TriggerIn", "Actor/Gadget/Q4010020_TriggerIn", 70900002, 0, points.TPos_Q4010020_TriggerIn.pos, points.TPos_Q4010020_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40100:OnSubFinish4010020(arg1)
    print("OnSubFinish4010020")
    this:SafeDestroyQuestNpc(npcs.Npc13153Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
end

function Quest40100:OnSubStart4010021(arg1)
    print("OnSubStart4010021")
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc1067Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc13289Data.id, 6)
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13290Data.id, 7)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13291Data.id, 8)
    this:CreateQuestNpc(arg1, npcs.Npc13292Data.id, 9)
    this:CreateQuestNpc(arg1, npcs.Npc13203Data.id, 10)
    this:CreateQuestNpc(arg1, npcs.Npc13204Data.id, 11)
    this:CreateQuestNpc(arg1, npcs.Npc13205Data.id, 12)
    this:CreateQuestNpc(arg1, npcs.Npc13206Data.id, 13)
    this:CreateQuestNpc(arg1, npcs.Npc13207Data.id, 14)
    actorUtils.AddQuestAvatarNpcMark(1058, 40100, false, "UI_AvatarIcon_Side_Cyno")
    actorUtils.AddQuestAvatarNpcMark(1050, 40100, false, "UI_AvatarIcon_Side_Tighnari")
    actorUtils.AddQuestAvatarNpcMark(1067, 40100, true, "UI_AvatarIcon_Side_Faruzan")
    actorUtils.AddQuestAvatarNpcMark(1063, 40100, false, "UI_AvatarIcon_Side_Layla")
    actorUtils.AddQuestAvatarNpcMark(1065, 40100, false, "UI_AvatarIcon_Side_Wanderer")
    actorUtils.AddQuestAvatarNpcMark(1064, 40100, true, "UI_AvatarIcon_Side_Kaveh")
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnChair(8010)
    this:DeployStoryByQuest(4010021)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13203Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13204Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13205Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13206Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13207Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40100:OnSubFinish4010021(arg1)
    print("OnSubFinish4010021")
end

function Quest40100:OnSubStart4010022(arg1)
    print("OnSubStart4010022")
    this:ActionSafeCall(function(arg1_2)
        local avatarPos = actorUtils.GetAvatarPos()
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1064Data.alias)
        local pos = questNpcActor:GetPos()
        local v = this:GetQuestNpcActor(npcs.Npc1067Data.alias)
        local pos2 = v:GetPos()
        local dist = M.Dist(pos, avatarPos)
        local dist2 = M.Dist(pos2, avatarPos)
        if sceneData.currSceneID == 3 then
            if 40 < dist then
                this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 1)
                questNpcActor:Standby()
            end

            if 40 < dist2 then
                this:CreateQuestNpc(arg1, npcs.Npc1067Data.id, 2)
                v:Standby()
            end
        else
            this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 1)
            questNpcActor:Standby()
            this:CreateQuestNpc(arg1, npcs.Npc1067Data.id, 2)
            v:Standby()
        end
    end)

    this:CreateQuestNpc(arg1, npcs.Npc1065Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 5)
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CancelStoryByQuest(4010021)
    actorMgr:DestroyEntityActor(datas.Q4010021_TriggerIn.alias, 3, false)
    actorUtils.AddQuestAvatarNpcMark(1058, 40100, false, "UI_AvatarIcon_Side_Cyno")
    actorUtils.AddQuestAvatarNpcMark(1050, 40100, true, "UI_AvatarIcon_Side_Tighnari")
    actorUtils.AddQuestAvatarNpcMark(1067, 40100, false, "UI_AvatarIcon_Side_Faruzan")
    actorUtils.AddQuestAvatarNpcMark(1063, 40100, false, "UI_AvatarIcon_Side_Layla")
    actorUtils.AddQuestAvatarNpcMark(1065, 40100, false, "UI_AvatarIcon_Side_Wanderer")
    actorUtils.AddQuestAvatarNpcMark(1064, 40100, false, "UI_AvatarIcon_Side_Kaveh")
    actorMgr:CreateActorWithPos("Q4010022_TriggerIn", "Actor/Gadget/Q4010022_TriggerIn", 70900002, 0, points.TPos_Q4010022_TriggerIn.pos, points.TPos_Q4010022_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13203Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13204Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13205Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13206Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13207Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40100:OnSubFinish4010022(arg1)
    print("OnSubFinish4010022")
end

function Quest40100:OnSubStart4010023(arg1)
    print("OnSubStart4010023")
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1067Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4054Data.alias, 1, true)
    actorUtils.AddQuestAvatarNpcMark(1058, 40100, false, "UI_AvatarIcon_Side_Cyno")
    actorUtils.AddQuestAvatarNpcMark(1050, 40100, false, "UI_AvatarIcon_Side_Tighnari")
    actorUtils.AddQuestAvatarNpcMark(1067, 40100, false, "UI_AvatarIcon_Side_Faruzan")
    actorUtils.AddQuestAvatarNpcMark(1063, 40100, true, "UI_AvatarIcon_Side_Layla")
    actorUtils.AddQuestAvatarNpcMark(1065, 40100, false, "UI_AvatarIcon_Side_Wanderer")
    actorUtils.AddQuestAvatarNpcMark(1064, 40100, false, "UI_AvatarIcon_Side_Kaveh")
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13203Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13204Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13205Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13206Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13207Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40100:OnSubFinish4010023(arg1)
    print("OnSubFinish4010023")
    actorUtils.RemoveQuestAvatarNpcMark(1050, 40100)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13203Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13204Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13205Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13206Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13207Data.alias, 3)
end

function Quest40100:OnSubStart4010024(arg1)
    print("OnSubStart4010024")
    this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 6)
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4054Data.alias, 1, true)
    actorUtils.AddQuestAvatarNpcMark(1058, 40100, false, "UI_AvatarIcon_Side_Cyno")
    actorUtils.AddQuestAvatarNpcMark(1067, 40100, false, "UI_AvatarIcon_Side_Faruzan")
    actorUtils.AddQuestAvatarNpcMark(1063, 40100, true, "UI_AvatarIcon_Side_Layla")
    actorUtils.AddQuestAvatarNpcMark(1065, 40100, false, "UI_AvatarIcon_Side_Wanderer")
    actorUtils.AddQuestAvatarNpcMark(1064, 40100, false, "UI_AvatarIcon_Side_Kaveh")
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):SitOnChair(8010)
    this:DeployStoryByQuest(4010024)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
    this:CheckDistance()
end

function Quest40100:OnSubFinish4010024(arg1)
    print("OnSubFinish4010024")
    actorUtils.RemoveQuestAvatarNpcMark(1067, 40100)
    actorUtils.RemoveQuestAvatarNpcMark(1064, 40100)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067Data.alias, 3)
end

function Quest40100:OnSubStart4010017(arg1)
    print("OnSubStart4010017")
end

function Quest40100:OnSubFinish4010017(arg1)
    print("OnSubFinish4010017")
end

function Quest40100:OnSubStart4010018(arg1)
    print("OnSubStart4010018")
end

function Quest40100:OnSubFinish4010018(arg1)
    print("OnSubFinish4010018")
    actorUtils.RemoveQuestAvatarNpcMark(1067, 40100)
    actorUtils.RemoveQuestAvatarNpcMark(1064, 40100)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067Data.alias, 3)
end

function Quest40100:OnSubStart4010019(arg1)
    print("OnSubStart4010019")
end

function Quest40100:OnSubFinish4010019(arg1)
    print("OnSubFinish4010019")
end

function Quest40100:OnSubStart4010025(arg1)
    print("OnSubStart4010025")
    this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):Standby()
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4054Data.alias, 1, true)
    this:CancelStoryByQuest(4010024)
    actorMgr:DestroyEntityActor(datas.Q4010024_TriggerIn.alias, 3, false)
    actorUtils.AddQuestAvatarNpcMark(1058, 40100, false, "UI_AvatarIcon_Side_Cyno")
    actorUtils.AddQuestAvatarNpcMark(1063, 40100, true, "UI_AvatarIcon_Side_Layla")
    actorUtils.AddQuestAvatarNpcMark(1065, 40100, false, "UI_AvatarIcon_Side_Wanderer")
    actorMgr:CreateActorWithPos("Q4010025_TriggerIn", "Actor/Gadget/Q4010025_TriggerIn", 70900002, 0, points.TPos_Q4010025_TriggerIn.pos, points.TPos_Q4010025_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):SitOnChair(8010)
    this:CreateNpcAttachLocalGadget(1052, 40100, 70711020, "1", "CineHead", {x = -0.098, y = 0.049, z = -0.107}, {x = 18.726, y = 0.123, z = 89.841}, nil, nil, false)
    this:SetLocalGadgetState(70711020, "1", 202)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40100:OnSubFinish4010025(arg1)
    print("OnSubFinish4010025")
    actorUtils.RemoveQuestAvatarNpcMark(1058, 40100)
    actorUtils.RemoveQuestAvatarNpcMark(1063, 40100)
    actorUtils.RemoveQuestAvatarNpcMark(1065, 40100)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):UnSpawnAttachEx("Dehya_SumeruHairpin")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1065Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest40100:OnSubStart4010008(arg1)
    print("OnSubStart4010008")
end

function Quest40100:OnSubFinish4010008(arg1)
    print("OnSubFinish4010008")
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):SpawnAttach("Dehya_SumeruHairpin")
end

function Quest40100:OnSubStart4010009(arg1)
    print("OnSubStart4010009")
end

function Quest40100:OnSubFinish4010009(arg1)
    print("OnSubFinish4010009")
    this:RemoveLocalGadget(70711020, "1")
end

function Quest40100:OnSubStart4010026(arg1)
    print("OnSubStart4010026")
    this:CreateQuestNpc(arg1, npcs.Npc13289Data.id, 9)
    this:GetQuestNpcActor(npcs.Npc13289Data.alias):DoFreeStyle(5010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13290Data.id, 10)
    this:GetQuestNpcActor(npcs.Npc13290Data.alias):DoFreeStyle(5010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13291Data.id, 11)
    this:CreateQuestNpc(arg1, npcs.Npc13292Data.id, 12)
    this:DailyNpcSafeHideSelf(npcs.Npc4054Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4010026_TriggerIn", "Actor/Gadget/Q4010026_TriggerIn", 70900002, 0, points.TPos_Q4010026_TriggerIn.pos, points.TPos_Q4010026_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):StandFromChairEx(0)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):StandFromChairEx(0)
end

function Quest40100:OnSubFinish4010026(arg1)
    print("OnSubFinish4010026")
    this:LightNotifyTo(npcs.Npc4054Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13289Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13290Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13291Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13292Data.alias, 3)
end

function Quest40100:OnSubStart4010027(arg1)
    print("OnSubStart4010027")
    this:CreateQuestNpc(arg1, npcs.Npc1055Data.id, 1)
    actorMgr:CreateActorWithPos("Q4010027_TriggerIn", "Actor/Gadget/Q4010027_TriggerIn", 70900002, 0, points.TPos_Q4010027_TriggerIn.pos, points.TPos_Q4010027_TriggerIn.rot, true, false, 3)
end

function Quest40100:OnSubFinish4010027(arg1)
    print("OnSubFinish4010027")
    self.AfterMainPageActiveSafeCall(self, function()
        self:CallDelay(0.1, function()
            self:ActionSafeCall(function()
                actorUtils.ShowContext("AkaFesMainPage")
            end)
        end)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
end

function Quest40100:OnSubStart4010014(arg1)
    print("OnSubStart4010014")
end

function Quest40100:OnSubFinish4010014(arg1)
    print("OnSubFinish4010014")
end

function Quest40100:OnSubStart4010015(arg1)
    print("OnSubStart4010015")
end

function Quest40100:OnSubFinish4010015(arg1)
    print("OnSubFinish4010015")
end

function Quest40100:OnSubStart4010016(arg1)
    print("OnSubStart4010016")
end

function Quest40100:OnSubFinish4010016(arg1)
    print("OnSubFinish4010016")
end

return Quest40100
