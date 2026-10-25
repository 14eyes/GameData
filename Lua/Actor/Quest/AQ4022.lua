require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4022 = class("Quest4022", QuestActorProxy)
Quest4022.defaultAlias = "Quest4022"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local points
local datas

function Quest4022:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["402201"] = self.OnSubStart402201,
        ["402209"] = self.OnSubStart402209,
        ["402202"] = self.OnSubStart402202,
        ["402203"] = self.OnSubStart402203,
        ["402204"] = self.OnSubStart402204,
        ["402205"] = self.OnSubStart402205,
        ["402206"] = self.OnSubStart402206,
        ["402207"] = self.OnSubStart402207,
        ["402210"] = self.OnSubStart402210,
        ["402208"] = self.OnSubStart402208
    }
end

function Quest4022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["402201"] = self.OnSubFinish402201,
        ["402209"] = self.OnSubFinish402209,
        ["402202"] = self.OnSubFinish402202,
        ["402203"] = self.OnSubFinish402203,
        ["402204"] = self.OnSubFinish402204,
        ["402205"] = self.OnSubFinish402205,
        ["402206"] = self.OnSubFinish402206,
        ["402207"] = self.OnSubFinish402207,
        ["402210"] = self.OnSubFinish402210,
        ["402208"] = self.OnSubFinish402208
    }
end

function Quest4022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4022:Start()
    print("Start")
end

function Quest4022:OnDestroy()
    print("OnDestroy")
end

function Quest4022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4022:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4022:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest4022:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest4022:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest4022:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest4022:OnSubStart402201(arg1)
    print("OnSubStart402201")
    this:NpcCreateWithNpcTrigger(npcs.Npc13316Data.id, 402201, 0, 20)
    this:DailyNpcSafeHideSelf(npcs.Npc5068Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4022Trigger", "Actor/Gadget/Q4022Trigger", 70900002, 0, points.TPos_Q4022Trigger.pos, points.TPos_Q4022Trigger.rot, true, false, 3)
    this:CreateLocalGadget(70711309, "402209", datas.NewVector3, {x = 0.0, y = 0.0, z = 0.0}, 1085, nil, nil, false)
    this:CreateLocalGadget(71700329, "402210", datas.NewVector3_01, {x = 180.0, y = 0.0, z = 90.0}, 1085, nil, nil, false)
end

function Quest4022:OnSubFinish402201(arg1)
    print("OnSubFinish402201")
    this:NPCDestroyImmediately(npcs.Npc13316Data.alias, 3)
end

function Quest4022:OnSubStart402209(arg1)
    print("OnSubStart402209")
    this:LightNotifyTo(npcs.Npc5068Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4022Trigger1", "Actor/Gadget/Q4022Trigger1", 70900002, 0, points.TPos_Q4022Trigger1.pos, points.TPos_Q4022Trigger1.rot, true, false, 1085)
    this:CreateLocalGadget(70711309, "402209", datas.NewVector3, {x = 0.0, y = 0.0, z = 0.0}, 1085, nil, nil, false)
    this:ActorDestroy("Q4022Trigger")
    actorMgr:CreateActorWithPos("Q402209_TransmitTrigger", "Actor/Gadget/Q402209_TransmitTrigger", 70900002, 0, points.TPos_Q402209_TransmitTrigger.pos, points.TPos_Q402209_TransmitTrigger.rot, true, false, 3)
    this:CreateLocalGadget(71700329, "402210", datas.NewVector3_01, {x = 180.0, y = 0.0, z = 90.0}, 1085, nil, nil, false)
end

function Quest4022:OnSubFinish402209(arg1)
    print("OnSubFinish402209")
    this:TransmitPlayerByQuestId(402209, 1)
    this:ActorDestroy("Q402209_TransmitTrigger")
end

function Quest4022:OnSubStart402202(arg1)
    print("OnSubStart402202")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13316Data.id, 402202, 0, 50, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4022:OnSubFinish402202(arg1)
    print("OnSubFinish402202")
    this:RemoveLocalGadget(70711309, "402209")
    this:RemoveLocalGadget(71700329, "402210")
end

function Quest4022:OnSubStart402203(arg1)
    print("OnSubStart402203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13316Data.id, 402203, 0, 50, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4022:OnSubFinish402203(arg1)
    print("OnSubFinish402203")
end

function Quest4022:OnSubStart402204(arg1)
    print("OnSubStart402204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13316Data.id, 402204, 0, 50, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4022:OnSubFinish402204(arg1)
    print("OnSubFinish402204")
end

function Quest4022:OnSubStart402205(arg1)
    print("OnSubStart402205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13316Data.id, 402205, 0, 50, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4022:OnSubFinish402205(arg1)
    print("OnSubFinish402205")
end

function Quest4022:OnSubStart402206(arg1)
    print("OnSubStart402206")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13316Data.id, 402206, 0, 50, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4022:OnSubFinish402206(arg1)
    print("OnSubFinish402206")
end

function Quest4022:OnSubStart402207(arg1)
    print("OnSubStart402207")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13316Data.id, 402207, 0, 50, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4022:OnSubFinish402207(arg1)
    print("OnSubFinish402207")
end

function Quest4022:OnSubStart402210(arg1)
    print("OnSubStart402210")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13316Data.id, 402210, 0, 50, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    this:ShowBlackScreenWithDialogText(0, 2.5, 0, nil, nil, nil, 0, false, true)
end

function Quest4022:OnSubFinish402210(arg1)
    print("OnSubFinish402210")
end

function Quest4022:OnSubStart402208(arg1)
    print("OnSubStart402208")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13316Data.id, 402208, 0, 50, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4022:OnSubFinish402208(arg1)
    print("OnSubFinish402208")
    this:SafeDestroyQuestNpc(npcs.Npc13316Data.alias, 1085)
    this:LightNotifyTo(npcs.Npc5100Data.alias, 0, true)
end

return Quest4022
