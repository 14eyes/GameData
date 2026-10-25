require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40101 = class("Quest40101", QuestActorProxy)
Quest40101.defaultAlias = "Quest40101"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40101:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40101:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4010101"] = self.OnSubStart4010101,
        ["4010103"] = self.OnSubStart4010103,
        ["4010104"] = self.OnSubStart4010104,
        ["4010105"] = self.OnSubStart4010105,
        ["4010106"] = self.OnSubStart4010106,
        ["4010107"] = self.OnSubStart4010107,
        ["4010108"] = self.OnSubStart4010108,
        ["4010109"] = self.OnSubStart4010109,
        ["4010110"] = self.OnSubStart4010110,
        ["4010111"] = self.OnSubStart4010111,
        ["4010112"] = self.OnSubStart4010112,
        ["4010102"] = self.OnSubStart4010102,
        ["4010114"] = self.OnSubStart4010114,
        ["4010115"] = self.OnSubStart4010115,
        ["4010113"] = self.OnSubStart4010113
    }
end

function Quest40101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4010101"] = self.OnSubFinish4010101,
        ["4010103"] = self.OnSubFinish4010103,
        ["4010104"] = self.OnSubFinish4010104,
        ["4010105"] = self.OnSubFinish4010105,
        ["4010106"] = self.OnSubFinish4010106,
        ["4010107"] = self.OnSubFinish4010107,
        ["4010108"] = self.OnSubFinish4010108,
        ["4010109"] = self.OnSubFinish4010109,
        ["4010110"] = self.OnSubFinish4010110,
        ["4010111"] = self.OnSubFinish4010111,
        ["4010112"] = self.OnSubFinish4010112,
        ["4010102"] = self.OnSubFinish4010102,
        ["4010114"] = self.OnSubFinish4010114,
        ["4010115"] = self.OnSubFinish4010115,
        ["4010113"] = self.OnSubFinish4010113
    }
end

function Quest40101:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4010110"] = self.OnSubFailed4010110}
end

function Quest40101:Start()
    print("Start")
end

function Quest40101:OnDestroy()
    print("OnDestroy")
end

function Quest40101:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40101:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40101:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1065Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13198Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13255Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13256Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13257Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13197Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4010103_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010104_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010105_TriggerIn", 0, false)
    actorMgr:DestroyEntityActor("Q4010108_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010109_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010110_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010111_TriggerIn_2", 3, false)
    actorMgr:DestroyEntityActor("Q4010112_TriggerIn", 0, false)
    actorMgr:DestroyEntityActor("Q4010107_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010111_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010113_TriggerIn", 3, false)
    this:CancelStoryByQuest(4010110)
    actorUtils.RemoveQuestAvatarNpcMark(1058, 40101)
    actorUtils.RemoveQuestAvatarNpcMark(1050, 40101)
    actorUtils.RemoveQuestAvatarNpcMark(1067, 40101)
    actorUtils.RemoveQuestAvatarNpcMark(1063, 40101)
    actorUtils.RemoveQuestAvatarNpcMark(1065, 40101)
    actorUtils.RemoveQuestAvatarNpcMark(1064, 40101)
    actorUtils.RemoveQuestAvatarNpcMark(13257, 40101)
    this:RemoveLocalGadget(70710787, "2")
    this:RemoveLocalGadget(70711009, "1")
end

function Quest40101:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40101:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4010111 then
        actorUtils.FinishQuestID(false, 4010114)
    elseif arg1 == 4010112 then
        actorUtils.FinishQuestID(false, 4010115)
    end
end

function Quest40101:OnSubStart4010101(arg1)
    print("OnSubStart4010101")
end

function Quest40101:OnSubFinish4010101(arg1)
    print("OnSubFinish4010101")
end

function Quest40101:OnSubStart4010103(arg1)
    print("OnSubStart4010103")
    this:CreateQuestNpc(arg1, npcs.Npc13161Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 8)
    this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 9)
    actorMgr:CreateActorWithPos("Q4010103_TriggerIn", "Actor/Gadget/Q4010103_TriggerIn", 70900002, 0, points.TPos_Q4010103_TriggerIn.pos, points.TPos_Q4010103_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnTargetChair(8010, {x = -1928.336, y = 295.818, z = 4145.525}, {x = 0.0, y = 320.97, z = 0.0}, 0)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnTargetChair(8010, {x = -1929.128, y = 295.818, z = 4144.908}, {x = 0.0, y = 320.97, z = 0.0}, 0)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40101:OnSubFinish4010103(arg1)
    print("OnSubFinish4010103")
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
end

function Quest40101:OnSubStart4010104(arg1)
    print("OnSubStart4010104")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 1)
        this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
        this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 3)
        this:CreateQuestNpc(arg1, npcs.Npc1067Data.id, 4)
        this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 5)
        this:CreateQuestNpc(arg1, npcs.Npc1065Data.id, 6)
        this:CreateQuestNpc(arg1, npcs.Npc13198Data.id, 7)
        actorUtils.AddQuestAvatarNpcMark(1050, 40101, true, "UI_AvatarIcon_Side_Tighnari")
        actorUtils.AddQuestAvatarNpcMark(1058, 40101, false, "UI_AvatarIcon_Side_Cyno")
        actorUtils.AddQuestAvatarNpcMark(1063, 40101, false, "UI_AvatarIcon_Side_Layla")
        actorUtils.AddQuestAvatarNpcMark(1067, 40101, false, "UI_AvatarIcon_Side_Faruzan")
        actorUtils.AddQuestAvatarNpcMark(1064, 40101, false, "UI_AvatarIcon_Side_Kaveh")
        actorUtils.AddQuestAvatarNpcMark(1065, 40101, false, "UI_AvatarIcon_Side_Wanderer")
        this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1065Data.alias):DisableInteeHeadCtrl(true)
    end)

    actorMgr:CreateActorWithPos("Q4010104_TriggerIn", "Actor/Gadget/Q4010104_TriggerIn", 70900002, 0, points.TPos_Q4010104_TriggerIn.pos, points.TPos_Q4010104_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnChair(8010)
end

function Quest40101:OnSubFinish4010104(arg1)
    print("OnSubFinish4010104")
    actorUtils.RemoveQuestAvatarNpcMark(1050, 40101)
    actorUtils.RemoveQuestAvatarNpcMark(1058, 40101)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
end

function Quest40101:OnSubStart4010105(arg1)
    print("OnSubStart4010105")
    this:CreateQuestNpc(arg1, npcs.Npc13161Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc1065Data.id, 5)
    actorMgr:CreateActorWithPos("Q4010105_TriggerIn", "Actor/Gadget/Q4010105_TriggerIn", 70900002, 0, points.TPos_Q4010105_TriggerIn.pos, points.TPos_Q4010105_TriggerIn.rot, true, false, 3)
    actorUtils.AddQuestAvatarNpcMark(1063, 40101, false, "UI_AvatarIcon_Side_Layla")
    actorUtils.AddQuestAvatarNpcMark(1067, 40101, false, "UI_AvatarIcon_Side_Faruzan")
    actorUtils.AddQuestAvatarNpcMark(1064, 40101, false, "UI_AvatarIcon_Side_Kaveh")
    actorUtils.AddQuestAvatarNpcMark(1065, 40101, false, "UI_AvatarIcon_Side_Wanderer")
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1054Data.alias)
    questNpcActor:SitOnChair(8010)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40101:OnSubFinish4010105(arg1)
    print("OnSubFinish4010105")
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
end

function Quest40101:OnSubStart4010106(arg1)
    print("OnSubStart4010106")
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc1067Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc1065Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 7)
    this:CreateQuestNpc(arg1, npcs.Npc13198Data.id, 8)
    this:CreateQuestNpc(arg1, npcs.Npc13255Data.id, 9)
    actorUtils.AddQuestAvatarNpcMark(1058, 40101, false, "UI_AvatarIcon_Side_Cyno")
    actorUtils.AddQuestAvatarNpcMark(1063, 40101, false, "UI_AvatarIcon_Side_Layla")
    actorUtils.AddQuestAvatarNpcMark(1067, 40101, true, "UI_AvatarIcon_Side_Faruzan")
    actorUtils.AddQuestAvatarNpcMark(1064, 40101, false, "UI_AvatarIcon_Side_Kaveh")
    actorUtils.AddQuestAvatarNpcMark(1065, 40101, false, "UI_AvatarIcon_Side_Wanderer")
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40101:OnSubFinish4010106(arg1)
    print("OnSubFinish4010106")
end

function Quest40101:OnSubStart4010107(arg1)
    print("OnSubStart4010107")
    this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13198Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc13255Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc13256Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc13197Data.id, 7)
    actorUtils.AddQuestAvatarNpcMark(1058, 40101, false, "UI_AvatarIcon_Side_Cyno")
    actorUtils.AddQuestAvatarNpcMark(1063, 40101, false, "UI_AvatarIcon_Side_Layla")
    actorUtils.AddQuestAvatarNpcMark(1067, 40101, false, "UI_AvatarIcon_Side_Faruzan")
    actorUtils.AddQuestAvatarNpcMark(1064, 40101, true, "UI_AvatarIcon_Side_Kaveh")
    actorUtils.AddQuestAvatarNpcMark(1065, 40101, false, "UI_AvatarIcon_Side_Wanderer")
    actorMgr:CreateActorWithPos("Q4010107_TriggerIn", "Actor/Gadget/Q4010107_TriggerIn", 70900002, 0, points.TPos_Q4010107_TriggerIn.pos, points.TPos_Q4010107_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40101:OnSubFinish4010107(arg1)
    print("OnSubFinish4010107")
    actorUtils.RemoveQuestAvatarNpcMark(1058, 40101)
    actorUtils.RemoveQuestAvatarNpcMark(1065, 40101)
end

function Quest40101:OnSubStart4010108(arg1)
    print("OnSubStart4010108")
    this:CreateQuestNpc(arg1, npcs.Npc13161Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc1065Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 7)
    this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 8)
    this:CreateQuestNpc(arg1, npcs.Npc13198Data.id, 9)
    this:CreateQuestNpc(arg1, npcs.Npc13255Data.id, 10)
    this:CreateQuestNpc(arg1, npcs.Npc13256Data.id, 11)
    this:CreateQuestNpc(arg1, npcs.Npc13197Data.id, 12)
    actorMgr:CreateActorWithPos("Q4010108_TriggerIn", "Actor/Gadget/Q4010108_TriggerIn", 70900002, 0, points.TPos_Q4010108_TriggerIn.pos, points.TPos_Q4010108_TriggerIn.rot, true, false, 3)
    actorUtils.AddQuestAvatarNpcMark(1063, 40101, false, "UI_AvatarIcon_Side_Layla")
    actorUtils.AddQuestAvatarNpcMark(1067, 40101, false, "UI_AvatarIcon_Side_Faruzan")
    actorUtils.AddQuestAvatarNpcMark(1064, 40101, false, "UI_AvatarIcon_Side_Kaveh")
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40101:OnSubFinish4010108(arg1)
    print("OnSubFinish4010108")
    actorUtils.RemoveQuestAvatarNpcMark(1067, 40101)
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067Data.alias, 3)
end

function Quest40101:OnSubStart4010109(arg1)
    print("OnSubStart4010109")
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc13257Data.id, 7)
    actorMgr:CreateActorWithPos("Q4010109_TriggerIn", "Actor/Gadget/Q4010109_TriggerIn", 70900002, 0, points.TPos_Q4010109_TriggerIn.pos, points.TPos_Q4010109_TriggerIn.rot, true, false, 3)
    actorUtils.AddQuestAvatarNpcMark(1063, 40101, true, "UI_AvatarIcon_Side_Layla")
    actorUtils.AddQuestAvatarNpcMark(13257, 40101, false, "UI_AvatarIcon_Side_Faruzan")
    actorUtils.AddQuestAvatarNpcMark(1064, 40101, false, "UI_AvatarIcon_Side_Kaveh")
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40101:OnSubFinish4010109(arg1)
    print("OnSubFinish4010109")
    this:ActorDestroy("Q4010109_TriggerIn")
end

function Quest40101:OnSubStart4010110(arg1)
    print("OnSubStart4010110")
    this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 3)
    actorMgr:CreateActorWithPos("Q4010110_TriggerIn", "Actor/Gadget/Q4010110_TriggerIn", 70900002, 0, points.TPos_Q4010110_TriggerIn.pos, points.TPos_Q4010110_TriggerIn.rot, true, false, 3)
    actorUtils.AddQuestAvatarNpcMark(1063, 40101, true, "UI_AvatarIcon_Side_Layla")
    actorUtils.AddQuestAvatarNpcMark(13257, 40101, false, "UI_AvatarIcon_Side_Faruzan")
    actorUtils.AddQuestAvatarNpcMark(1064, 40101, false, "UI_AvatarIcon_Side_Kaveh")
    this:DeployStoryByQuest(4010110)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40101:OnSubFinish4010110(arg1)
    print("OnSubFinish4010110")
    this:ActorDestroy("Q4010110_TriggerIn")
    this:CancelStoryByQuest(4010110)
end

function Quest40101:OnSubFailed4010110(arg1)
    print("OnSubFailed4010110")
    this:CancelStoryByQuest(4010110)
end

function Quest40101:OnSubStart4010111(arg1)
    print("OnSubStart4010111")
    this:CreateQuestNpcWithTrigger("Q4010111_TriggerIn", 4010111, 13161, 1, 5)
    actorMgr:CreateActorWithPos("Q4010111_TriggerIn_2", "Actor/Gadget/Q4010111_TriggerIn_2", 70900002, 0, points.TPos_Q4010111_TriggerIn_2.pos, points.TPos_Q4010111_TriggerIn_2.rot, true, false, 3)
    actorUtils.AddQuestAvatarNpcMark(1063, 40101, true, "UI_AvatarIcon_Side_Layla")
    actorUtils.AddQuestAvatarNpcMark(13257, 40101, false, "UI_AvatarIcon_Side_Faruzan")
    actorUtils.AddQuestAvatarNpcMark(1064, 40101, false, "UI_AvatarIcon_Side_Kaveh")
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40101:OnSubFinish4010111(arg1)
    print("OnSubFinish4010111")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q4010112_NarratorWithId)
    end)

    this:ActorDestroy("Q4010111_TriggerIn")
    actorUtils.RemoveQuestAvatarNpcMark(13257, 40101)
    actorUtils.RemoveQuestAvatarNpcMark(1063, 40101)
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13198Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13255Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13256Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13257Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13197Data.alias, 3)
end

function Quest40101:OnSubStart4010112(arg1)
    print("OnSubStart4010112")
    this:CreateQuestNpc(arg1, npcs.Npc1067Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 3)
    actorMgr:CreateActorWithPos("Q4010112_TriggerIn", "Actor/Gadget/Q4010112_TriggerIn", 70900002, 0, points.TPos_Q4010112_TriggerIn.pos, points.TPos_Q4010112_TriggerIn.rot, true, false)
    actorUtils.AddQuestAvatarNpcMark(1067, 40101, true, "UI_AvatarIcon_Side_Faruzan")
    actorUtils.AddQuestAvatarNpcMark(1064, 40101, true, "UI_AvatarIcon_Side_Kaveh")
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1065Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40101:OnSubFinish4010112(arg1)
    print("OnSubFinish4010112")
    actorUtils.RemoveQuestAvatarNpcMark(1067, 40101)
    actorUtils.RemoveQuestAvatarNpcMark(1064, 40101)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1065Data.alias, 3)
end

function Quest40101:OnSubStart4010102(arg1)
    print("OnSubStart4010102")
end

function Quest40101:OnSubFinish4010102(arg1)
    print("OnSubFinish4010102")
end

function Quest40101:OnSubStart4010114(arg1)
    print("OnSubStart4010114")
end

function Quest40101:OnSubFinish4010114(arg1)
    print("OnSubFinish4010114")
end

function Quest40101:OnSubStart4010115(arg1)
    print("OnSubStart4010115")
end

function Quest40101:OnSubFinish4010115(arg1)
    print("OnSubFinish4010115")
end

function Quest40101:OnSubStart4010113(arg1)
    print("OnSubStart4010113")
    this:CreateQuestNpcWithTrigger("Q4010113_TriggerIn", 4010113, 13161, 1, 12)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40101:OnSubFinish4010113(arg1)
    print("OnSubFinish4010113")
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
end

return Quest40101
