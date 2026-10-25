require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19182 = class("Quest19182", QuestActorProxy)
Quest19182.defaultAlias = "Quest19182"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest19182:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest19182:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1918201"] = self.OnSubStart1918201,
        ["1918204"] = self.OnSubStart1918204,
        ["1918202"] = self.OnSubStart1918202,
        ["1918203"] = self.OnSubStart1918203,
        ["1918205"] = self.OnSubStart1918205,
        ["1918206"] = self.OnSubStart1918206,
        ["1918218"] = self.OnSubStart1918218,
        ["1918219"] = self.OnSubStart1918219,
        ["1918215"] = self.OnSubStart1918215,
        ["1918216"] = self.OnSubStart1918216,
        ["1918217"] = self.OnSubStart1918217,
        ["1918224"] = self.OnSubStart1918224,
        ["1918220"] = self.OnSubStart1918220,
        ["1918221"] = self.OnSubStart1918221,
        ["1918222"] = self.OnSubStart1918222,
        ["1918223"] = self.OnSubStart1918223,
        ["1918214"] = self.OnSubStart1918214,
        ["1918207"] = self.OnSubStart1918207,
        ["1918209"] = self.OnSubStart1918209,
        ["1918210"] = self.OnSubStart1918210,
        ["1918211"] = self.OnSubStart1918211,
        ["1918212"] = self.OnSubStart1918212,
        ["1918213"] = self.OnSubStart1918213
    }
end

function Quest19182:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1918201"] = self.OnSubFinish1918201,
        ["1918204"] = self.OnSubFinish1918204,
        ["1918202"] = self.OnSubFinish1918202,
        ["1918203"] = self.OnSubFinish1918203,
        ["1918205"] = self.OnSubFinish1918205,
        ["1918206"] = self.OnSubFinish1918206,
        ["1918218"] = self.OnSubFinish1918218,
        ["1918219"] = self.OnSubFinish1918219,
        ["1918215"] = self.OnSubFinish1918215,
        ["1918216"] = self.OnSubFinish1918216,
        ["1918217"] = self.OnSubFinish1918217,
        ["1918224"] = self.OnSubFinish1918224,
        ["1918220"] = self.OnSubFinish1918220,
        ["1918221"] = self.OnSubFinish1918221,
        ["1918222"] = self.OnSubFinish1918222,
        ["1918223"] = self.OnSubFinish1918223,
        ["1918214"] = self.OnSubFinish1918214,
        ["1918207"] = self.OnSubFinish1918207,
        ["1918209"] = self.OnSubFinish1918209,
        ["1918210"] = self.OnSubFinish1918210,
        ["1918211"] = self.OnSubFinish1918211,
        ["1918212"] = self.OnSubFinish1918212,
        ["1918213"] = self.OnSubFinish1918213
    }
end

function Quest19182:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1918214"] = self.OnSubFailed1918214}
end

function Quest19182:Start()
    print("Start")
end

function Quest19182:OnDestroy()
    print("OnDestroy")
end

function Quest19182:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19182:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19182:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc5094Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5095Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13932Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13932Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13932Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13933Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13933Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13934Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13934Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13934Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13935Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13936Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13942Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13985Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13986Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13988Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13989Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13980Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13980Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13980Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13979Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13979Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc5091Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5089Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13977Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13978Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13976Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5100Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5094Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5095Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5091Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5089Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5100Data.alias, 0, true)
    this:RemoveLocalGadget(70710776, "4")
    this:RemoveLocalGadget(70710776, "5")
    this:RemoveLocalGadget(70710776, "1")
    this:RemoveLocalGadget(70710776, "2")
    this:RemoveLocalGadget(70710776, "3")
    actorMgr:DestroyEntityActor("Q1918201Trigger", 1084, false)
    actorMgr:DestroyEntityActor("Q1918202Trigger", 1084, false)
    actorMgr:DestroyEntityActor("Q1918203Trigger", 1084, false)
    actorMgr:DestroyEntityActor("Q1918204Trigger", 1084, false)
    actorMgr:DestroyEntityActor("Q1918204Trigger_OUT", 1084, false)
    actorMgr:DestroyEntityActor("Q1918205Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918207Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918210Trigger", 1085, false)
    actorMgr:DestroyEntityActor("Q1918211Trigger", 1085, false)
    actorMgr:DestroyEntityActor("Q1918212Trigger", 1085, false)
    actorMgr:DestroyEntityActor("Q1918213Trigger", 1085, false)
    this:DestroyNpcTrigger("Q1918206Trigger")
end

function Quest19182:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19182:OnSubStart1918201(arg1)
    print("OnSubStart1918201")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918201)
    this:DailyNpcSafeHideSelf(npcs.Npc5091Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5089Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1918201Trigger", "Actor/Gadget/Q1918201Trigger", 70900002, 0, points.TPos_Q1918201Trigger.pos, points.TPos_Q1918201Trigger.rot, true, false, 1084)
end

function Quest19182:OnSubFinish1918201(arg1)
    print("OnSubFinish1918201")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 1084)
end

function Quest19182:OnSubStart1918204(arg1)
    print("OnSubStart1918204")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918204)
    this:DailyNpcSafeHideSelf(npcs.Npc5094Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5095Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5091Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5089Data.alias, 1, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13932Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13933Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13934Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13935Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13936Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1073Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13980Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13979Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13977Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13978Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13976Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13932Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13934Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13980Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13979Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13977Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13978Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13933Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13935Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13936Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13976Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13932Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13933Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13935Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1440, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13980Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13979Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13977Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13978Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13976Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13934Data.alias, 19182):SitOnChair(0, true)
    end)

    actorMgr:CreateActorWithPos("Q1918204Trigger", "Actor/Gadget/Q1918204Trigger", 70900002, 0, points.TPos_Q1918204Trigger.pos, points.TPos_Q1918204Trigger.rot, true, false, 1084)
end

function Quest19182:OnSubFinish1918204(arg1)
    print("OnSubFinish1918204")
    this:SafeDestroyQuestNpc(npcs.Npc13932Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13934Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13980Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13979Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13977Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13978Data.alias, 1084)
end

function Quest19182:OnSubStart1918202(arg1)
    print("OnSubStart1918202")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918202)
    this:DailyNpcSafeHideSelf(npcs.Npc5094Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5095Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13933Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13936Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5091Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5089Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1918202Trigger", "Actor/Gadget/Q1918202Trigger", 70900002, 0, points.TPos_Q1918202Trigger.pos, points.TPos_Q1918202Trigger.rot, true, false, 1084)
    this:GetQuestNpcActor(npcs.Npc13933Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13935Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13936Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13976Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13933Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13935Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13976Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest19182:OnSubFinish1918202(arg1)
    print("OnSubFinish1918202")
    this:TransmitPlayerByData(arg1, 1, nil)
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13935Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13976Data.alias, 1084)
end

function Quest19182:OnSubStart1918203(arg1)
    print("OnSubStart1918203")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918203)
    this:DailyNpcSafeHideSelf(npcs.Npc5094Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5095Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5091Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5089Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1918203Trigger", "Actor/Gadget/Q1918203Trigger", 70900002, 0, points.TPos_Q1918203Trigger.pos, points.TPos_Q1918203Trigger.rot, true, false, 1084)
    this:GetQuestNpcActor(npcs.Npc13933Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13936Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19182:OnSubFinish1918203(arg1)
    print("OnSubFinish1918203")
    this:SafeDestroyQuestNpc(npcs.Npc13933Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13936Data.alias, 1084)
    this:LightNotifyTo(npcs.Npc5091Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5089Data.alias, 0, true)
end

function Quest19182:OnSubStart1918205(arg1)
    print("OnSubStart1918205")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918205)
    this:DailyNpcSafeHideSelf(npcs.Npc5094Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5095Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13934Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918205Trigger", "Actor/Gadget/Q1918205Trigger", 70900002, 0, points.TPos_Q1918205Trigger.pos, points.TPos_Q1918205Trigger.rot, true, false, 3)
end

function Quest19182:OnSubFinish1918205(arg1)
    print("OnSubFinish1918205")
    this:SafeDestroyQuestNpc(npcs.Npc13934Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5094Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5095Data.alias, 0, true)
end

function Quest19182:OnSubStart1918206(arg1)
    print("OnSubStart1918206")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918206)
    this:CreateQuestNpcWithTriggerBlackEx("Q1918206Trigger", 1918206, npcs.Npc13932Data.id, 0, 5, 0.5, 1.5, 0, 2)
    this:RemoveLocalGadget(70710776, "1")
    this:RemoveLocalGadget(70710776, "2")
    this:RemoveLocalGadget(70710776, "3")
    this:RemoveLocalGadget(70710776, "4")
    this:RemoveLocalGadget(70710776, "5")
end

function Quest19182:OnSubFinish1918206(arg1)
    print("OnSubFinish1918206")
end

function Quest19182:OnSubStart1918218(arg1)
    print("OnSubStart1918218")
    this:CreateLocalGadget(70710776, "4", {x = 3482.023, y = 284.225, z = 4552.167}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, false, 0)
end

function Quest19182:OnSubFinish1918218(arg1)
    print("OnSubFinish1918218")
    this:RemoveLocalGadget(70710776, "4")
end

function Quest19182:OnSubStart1918219(arg1)
    print("OnSubStart1918219")
    this:CreateLocalGadget(70710776, "5", {x = 3483.048, y = 284.292, z = 4553.366}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, false, 0)
end

function Quest19182:OnSubFinish1918219(arg1)
    print("OnSubFinish1918219")
    this:RemoveLocalGadget(70710776, "5")
end

function Quest19182:OnSubStart1918215(arg1)
    print("OnSubStart1918215")
    this:CreateLocalGadget(70710776, "1", {x = 3482.61, y = 284.305, z = 4552.411}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, false, 0)
end

function Quest19182:OnSubFinish1918215(arg1)
    print("OnSubFinish1918215")
    this:RemoveLocalGadget(70710776, "1")
end

function Quest19182:OnSubStart1918216(arg1)
    print("OnSubStart1918216")
    this:CreateLocalGadget(70710776, "2", {x = 3482.695, y = 284.576, z = 4553.536}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, false, 0)
end

function Quest19182:OnSubFinish1918216(arg1)
    print("OnSubFinish1918216")
    this:RemoveLocalGadget(70710776, "2")
end

function Quest19182:OnSubStart1918217(arg1)
    print("OnSubStart1918217")
    this:CreateLocalGadget(70710776, "3", {x = 3481.814, y = 284.54, z = 4551.777}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, false, 0)
end

function Quest19182:OnSubFinish1918217(arg1)
    print("OnSubFinish1918217")
    this:RemoveLocalGadget(70710776, "3")
end

function Quest19182:OnSubStart1918224(arg1)
    print("OnSubStart1918224")
end

function Quest19182:OnSubFinish1918224(arg1)
    print("OnSubFinish1918224")
end

function Quest19182:OnSubStart1918220(arg1)
    print("OnSubStart1918220")
end

function Quest19182:OnSubFinish1918220(arg1)
    print("OnSubFinish1918220")
end

function Quest19182:OnSubStart1918221(arg1)
    print("OnSubStart1918221")
end

function Quest19182:OnSubFinish1918221(arg1)
    print("OnSubFinish1918221")
end

function Quest19182:OnSubStart1918222(arg1)
    print("OnSubStart1918222")
end

function Quest19182:OnSubFinish1918222(arg1)
    print("OnSubFinish1918222")
end

function Quest19182:OnSubStart1918223(arg1)
    print("OnSubStart1918223")
end

function Quest19182:OnSubFinish1918223(arg1)
    print("OnSubFinish1918223")
end

function Quest19182:OnSubStart1918214(arg1)
    print("OnSubStart1918214")
    this:CreateQuestNpc(arg1, npcs.Npc13932Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13985Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13986Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13987Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13988Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13989Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13980Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13980Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13932Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13980Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
end

function Quest19182:OnSubFinish1918214(arg1)
    print("OnSubFinish1918214")
    this:SafeDestroyQuestNpc(npcs.Npc13985Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13986Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13988Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13989Data.alias, 3)
end

function Quest19182:OnSubFailed1918214(arg1)
    print("OnSubFailed1918214")
    this:SafeDestroyQuestNpc(npcs.Npc13980Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13932Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13985Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13986Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13988Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13989Data.alias, 3)
end

function Quest19182:OnSubStart1918207(arg1)
    print("OnSubStart1918207")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918207)
    actorMgr:CreateActorWithPos("Q1918207Trigger", "Actor/Gadget/Q1918207Trigger", 70900002, 0, points.TPos_Q1918207Trigger.pos, points.TPos_Q1918207Trigger.rot, true, false, 3)
end

function Quest19182:OnSubFinish1918207(arg1)
    print("OnSubFinish1918207")
    this:SafeDestroyQuestNpc(npcs.Npc13980Data.alias, 3)
end

function Quest19182:OnSubStart1918209(arg1)
    print("OnSubStart1918209")
    this:CreateQuestNpc(arg1, npcs.Npc13932Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13985Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13986Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13987Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13988Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13989Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13932Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest19182:OnSubFinish1918209(arg1)
    print("OnSubFinish1918209")
    this:SafeDestroyQuestNpc(npcs.Npc13932Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13985Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13986Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13988Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13989Data.alias, 3)
end

function Quest19182:OnSubStart1918210(arg1)
    print("OnSubStart1918210")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918210)
    this:CreateQuestNpc(arg1, npcs.Npc13980Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1918210Trigger", "Actor/Gadget/Q1918210Trigger", 70900002, 0, points.TPos_Q1918210Trigger.pos, points.TPos_Q1918210Trigger.rot, true, false, 1085)
end

function Quest19182:OnSubFinish1918210(arg1)
    print("OnSubFinish1918210")
    this:TransmitPlayerByQuestId(1918210, 1)
end

function Quest19182:OnSubStart1918211(arg1)
    print("OnSubStart1918211")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918211)
    this:CreateQuestNpc(arg1, npcs.Npc13980Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13979Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1918211Trigger", "Actor/Gadget/Q1918211Trigger", 70900002, 0, points.TPos_Q1918211Trigger.pos, points.TPos_Q1918211Trigger.rot, true, false, 1085)
end

function Quest19182:OnSubFinish1918211(arg1)
    print("OnSubFinish1918211")
end

function Quest19182:OnSubStart1918212(arg1)
    print("OnSubStart1918212")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918212)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13933Data.id, 0)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc13980Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13979Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1918212Trigger", "Actor/Gadget/Q1918212Trigger", 70900002, 0, points.TPos_Q1918212Trigger.pos, points.TPos_Q1918212Trigger.rot, true, false, 1085)
end

function Quest19182:OnSubFinish1918212(arg1)
    print("OnSubFinish1918212")
end

function Quest19182:OnSubStart1918213(arg1)
    print("OnSubStart1918213")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918213)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc518Data.id, 0)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc13932Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13933Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13934Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13980Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13979Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1918213Trigger", "Actor/Gadget/Q1918213Trigger", 70900002, 0, points.TPos_Q1918213Trigger.pos, points.TPos_Q1918213Trigger.rot, true, false, 1085)
    this:GetQuestNpcActor(npcs.Npc13932Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13934Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13979Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13980Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13932Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13933Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13934Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13980Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13979Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
end

function Quest19182:OnSubFinish1918213(arg1)
    print("OnSubFinish1918213")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13932Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13933Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13934Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13980Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13979Data.alias, 1085)
    this:LightNotifyTo(npcs.Npc5100Data.alias, 0, true)
end

return Quest19182
