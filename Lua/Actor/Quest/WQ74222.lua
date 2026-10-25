require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74222 = class("Quest74222", QuestActorProxy)
Quest74222.defaultAlias = "Quest74222"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74222:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74222:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7422211"] = self.OnSubStart7422211,
        ["7422201"] = self.OnSubStart7422201,
        ["7422202"] = self.OnSubStart7422202,
        ["7422209"] = self.OnSubStart7422209,
        ["7422203"] = self.OnSubStart7422203,
        ["7422204"] = self.OnSubStart7422204,
        ["7422205"] = self.OnSubStart7422205,
        ["7422206"] = self.OnSubStart7422206,
        ["7422207"] = self.OnSubStart7422207,
        ["7422208"] = self.OnSubStart7422208
    }
end

function Quest74222:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7422211"] = self.OnSubFinish7422211,
        ["7422201"] = self.OnSubFinish7422201,
        ["7422202"] = self.OnSubFinish7422202,
        ["7422209"] = self.OnSubFinish7422209,
        ["7422203"] = self.OnSubFinish7422203,
        ["7422204"] = self.OnSubFinish7422204,
        ["7422205"] = self.OnSubFinish7422205,
        ["7422206"] = self.OnSubFinish7422206,
        ["7422207"] = self.OnSubFinish7422207,
        ["7422208"] = self.OnSubFinish7422208
    }
end

function Quest74222:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7422211"] = self.OnSubFailed7422211,
        ["7422201"] = self.OnSubFailed7422201,
        ["7422202"] = self.OnSubFailed7422202,
        ["7422209"] = self.OnSubFailed7422209,
        ["7422203"] = self.OnSubFailed7422203,
        ["7422204"] = self.OnSubFailed7422204,
        ["7422205"] = self.OnSubFailed7422205,
        ["7422206"] = self.OnSubFailed7422206,
        ["7422207"] = self.OnSubFailed7422207,
        ["7422208"] = self.OnSubFailed7422208
    }
end

function Quest74222:Start()
    print("Start")
end

function Quest74222:OnDestroy()
    print("OnDestroy")
end

function Quest74222:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74222:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74222:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74222:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74222:OnSubStart7422211(arg1)
    print("OnSubStart7422211")
    actorMgr:CreateActorWithPos("Q74222Trigger1", "Actor/Gadget/Q74222Trigger1", 70900002, 0, points.TPos_Q74222Trigger1.pos, points.TPos_Q74222Trigger1.rot, true, false, 3)
end

function Quest74222:OnSubFinish7422211(arg1)
    print("OnSubFinish7422211")
end

function Quest74222:OnSubFailed7422211(arg1)
    print("OnSubFailed7422211")
    this:SafeDestroyQuestNpc(npcs.Npc5343Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5337Data.alias, 3)
end

function Quest74222:OnSubStart7422201(arg1)
    print("OnSubStart7422201")
    this:CreateQuestNpc(arg1, npcs.Npc5343Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5343Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:CreateSpeechBubbleTask(npcs.Npc5343Data.id, 742229902, 5, true, 10, 30, true)
end

function Quest74222:OnSubFinish7422201(arg1)
    print("OnSubFinish7422201")
end

function Quest74222:OnSubFailed7422201(arg1)
    print("OnSubFailed7422201")
    this:SafeDestroyQuestNpc(npcs.Npc5343Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5337Data.alias, 3)
end

function Quest74222:OnSubStart7422202(arg1)
    print("OnSubStart7422202")
    this:CreateQuestNpc(arg1, npcs.Npc5337Data.id, 0)
    this:CreateSpeechBubbleTask(npcs.Npc5337Data.id, 742229901, 5, true, 10, 30, true)
end

function Quest74222:OnSubFinish7422202(arg1)
    print("OnSubFinish7422202")
end

function Quest74222:OnSubFailed7422202(arg1)
    print("OnSubFailed7422202")
    this:SafeDestroyQuestNpc(npcs.Npc5343Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5337Data.alias, 3)
end

function Quest74222:OnSubStart7422209(arg1)
    print("OnSubStart7422209")
    this:CreateLocalGadget(70291004, "1", {x = 1179.294, y = 291.778, z = 4392.745}, {x = 7.183, y = 146.0, z = 0.0}, 3, nil, nil, false, 0)
    this:GetQuestNpcActor(npcs.Npc5337Data.alias):SitOnTargetChair(8010, {x = 1179.294, y = 291.778, z = 4392.745}, {x = 7.183, y = 146.0, z = 0.0}, 0, true)
end

function Quest74222:OnSubFinish7422209(arg1)
    print("OnSubFinish7422209")
end

function Quest74222:OnSubFailed7422209(arg1)
    print("OnSubFailed7422209")
    this:SafeDestroyQuestNpc(npcs.Npc5343Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5337Data.alias, 3)
end

function Quest74222:OnSubStart7422203(arg1)
    print("OnSubStart7422203")
end

function Quest74222:OnSubFinish7422203(arg1)
    print("OnSubFinish7422203")
end

function Quest74222:OnSubFailed7422203(arg1)
    print("OnSubFailed7422203")
    this:SafeDestroyQuestNpc(npcs.Npc5343Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5337Data.alias, 3)
end

function Quest74222:OnSubStart7422204(arg1)
    print("OnSubStart7422204")
end

function Quest74222:OnSubFinish7422204(arg1)
    print("OnSubFinish7422204")
end

function Quest74222:OnSubFailed7422204(arg1)
    print("OnSubFailed7422204")
    this:SafeDestroyQuestNpc(npcs.Npc5343Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5337Data.alias, 3)
end

function Quest74222:OnSubStart7422205(arg1)
    print("OnSubStart7422205")
end

function Quest74222:OnSubFinish7422205(arg1)
    print("OnSubFinish7422205")
end

function Quest74222:OnSubFailed7422205(arg1)
    print("OnSubFailed7422205")
    this:SafeDestroyQuestNpc(npcs.Npc5343Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5337Data.alias, 3)
end

function Quest74222:OnSubStart7422206(arg1)
    print("OnSubStart7422206")
end

function Quest74222:OnSubFinish7422206(arg1)
    print("OnSubFinish7422206")
end

function Quest74222:OnSubFailed7422206(arg1)
    print("OnSubFailed7422206")
    this:SafeDestroyQuestNpc(npcs.Npc5343Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5337Data.alias, 3)
end

function Quest74222:OnSubStart7422207(arg1)
    print("OnSubStart7422207")
    this:GetQuestNpcActor(npcs.Npc5343Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
end

function Quest74222:OnSubFinish7422207(arg1)
    print("OnSubFinish7422207")
end

function Quest74222:OnSubFailed7422207(arg1)
    print("OnSubFailed7422207")
    this:SafeDestroyQuestNpc(npcs.Npc5343Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5337Data.alias, 3)
end

function Quest74222:OnSubStart7422208(arg1)
    print("OnSubStart7422208")
    this:GetQuestNpcActor(npcs.Npc5343Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q74222Trigger", "Actor/Gadget/Q74222Trigger", 70900002, 0, {x = 1174.74, y = 292.54, z = 4393.92}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest74222:OnSubFinish7422208(arg1)
    print("OnSubFinish7422208")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5343Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5337Data.alias)
    this:ClearSpeechBubbleTask()
end

function Quest74222:OnSubFailed7422208(arg1)
    print("OnSubFailed7422208")
    this:SafeDestroyQuestNpc(npcs.Npc5343Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5337Data.alias, 3)
end

return Quest74222
