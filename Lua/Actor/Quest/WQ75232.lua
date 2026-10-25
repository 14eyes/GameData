require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75232 = class("Quest75232", QuestActorProxy)
Quest75232.defaultAlias = "Quest75232"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75232:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75232:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7523201"] = self.OnSubStart7523201,
        ["7523202"] = self.OnSubStart7523202,
        ["7523218"] = self.OnSubStart7523218,
        ["7523203"] = self.OnSubStart7523203,
        ["7523204"] = self.OnSubStart7523204,
        ["7523205"] = self.OnSubStart7523205,
        ["7523206"] = self.OnSubStart7523206,
        ["7523207"] = self.OnSubStart7523207,
        ["7523215"] = self.OnSubStart7523215,
        ["7523208"] = self.OnSubStart7523208,
        ["7523211"] = self.OnSubStart7523211,
        ["7523210"] = self.OnSubStart7523210,
        ["7523216"] = self.OnSubStart7523216,
        ["7523217"] = self.OnSubStart7523217
    }
end

function Quest75232:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7523201"] = self.OnSubFinish7523201,
        ["7523202"] = self.OnSubFinish7523202,
        ["7523218"] = self.OnSubFinish7523218,
        ["7523203"] = self.OnSubFinish7523203,
        ["7523204"] = self.OnSubFinish7523204,
        ["7523205"] = self.OnSubFinish7523205,
        ["7523206"] = self.OnSubFinish7523206,
        ["7523207"] = self.OnSubFinish7523207,
        ["7523215"] = self.OnSubFinish7523215,
        ["7523208"] = self.OnSubFinish7523208,
        ["7523211"] = self.OnSubFinish7523211,
        ["7523210"] = self.OnSubFinish7523210,
        ["7523216"] = self.OnSubFinish7523216,
        ["7523217"] = self.OnSubFinish7523217
    }
end

function Quest75232:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75232:Start()
    print("Start")
end

function Quest75232:OnDestroy()
    print("OnDestroy")
end

function Quest75232:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75232:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75232:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75232:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7523203Trigger")
    this:ActorDestroy("Q7523205Trigger")
    this:ActorDestroy("Q7523207Trigger")
end

function Quest75232:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75232:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75232:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75232:OnSubStart7523201(arg1)
    print("OnSubStart7523201")
    this:CreateQuestNpc(arg1, npcs.Npc6511.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6511.alias, 75232):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6511.alias, 75232):DisableInteeHeadCtrl(true)
end

function Quest75232:OnSubFinish7523201(arg1)
    print("OnSubFinish7523201")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest75232:OnSubStart7523202(arg1)
    print("OnSubStart7523202")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523202, 0, 10, 0, npcs.Npc6511.id)
end

function Quest75232:OnSubFinish7523202(arg1)
    print("OnSubFinish7523202")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest75232:OnSubStart7523218(arg1)
    print("OnSubStart7523218")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523218, 0, 13, 1, npcs.Npc6511.id)
end

function Quest75232:OnSubFinish7523218(arg1)
    print("OnSubFinish7523218")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest75232:OnSubStart7523203(arg1)
    print("OnSubStart7523203")
    this:CreateQuestNpc(arg1, npcs.Npc6511.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6511.alias, 75232):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest75232:OnSubFinish7523203(arg1)
    print("OnSubFinish7523203")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest75232:OnSubStart7523204(arg1)
    print("OnSubStart7523204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523204, 0, 10, 0, npcs.Npc6511.id)
end

function Quest75232:OnSubFinish7523204(arg1)
    print("OnSubFinish7523204")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest75232:OnSubStart7523205(arg1)
    print("OnSubStart7523205")
    this:CreateQuestNpc(arg1, npcs.Npc6511.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6511.alias, 75232):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22158.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22159.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22160.id, 0, false, 0)
end

function Quest75232:OnSubFinish7523205(arg1)
    print("OnSubFinish7523205")
    this:SafeDestroyQuestNpc(npcs.Npc22158.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22159.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22160.alias, 3)
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest75232:OnSubStart7523206(arg1)
    print("OnSubStart7523206")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523206, 0, 10, 0, npcs.Npc6511.id)
end

function Quest75232:OnSubFinish7523206(arg1)
    print("OnSubFinish7523206")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest75232:OnSubStart7523207(arg1)
    print("OnSubStart7523207")
    this:CreateQuestNpc(arg1, npcs.Npc6511.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6511.alias, 75232):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest75232:OnSubFinish7523207(arg1)
    print("OnSubFinish7523207")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest75232:OnSubStart7523215(arg1)
    print("OnSubStart7523215")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523215, 0, 10, 1, npcs.Paimon.id)
end

function Quest75232:OnSubFinish7523215(arg1)
    print("OnSubFinish7523215")
    this:NpcDestroyWithBlackscreen(3, npcs.Paimon.alias)
end

function Quest75232:OnSubStart7523208(arg1)
    print("OnSubStart7523208")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523208, 0, 10, 0, npcs.Npc6511.id)
end

function Quest75232:OnSubFinish7523208(arg1)
    print("OnSubFinish7523208")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6511.alias)
end

function Quest75232:OnSubStart7523211(arg1)
    print("OnSubStart7523211")
end

function Quest75232:OnSubFinish7523211(arg1)
    print("OnSubFinish7523211")
end

function Quest75232:OnSubStart7523210(arg1)
    print("OnSubStart7523210")
    this:CreateQuestNpc(arg1, npcs.Npc6511.id, 0, false, 0)
end

function Quest75232:OnSubFinish7523210(arg1)
    print("OnSubFinish7523210")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6511.alias)
end

function Quest75232:OnSubStart7523216(arg1)
    print("OnSubStart7523216")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523216, 0, 5, 2, npcs.Npc21970.id)
end

function Quest75232:OnSubFinish7523216(arg1)
    print("OnSubFinish7523216")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21970.alias)
end

function Quest75232:OnSubStart7523217(arg1)
    print("OnSubStart7523217")
    this:CreateQuestNpc(arg1, npcs.Npc6511.id, 0, false, 0)
end

function Quest75232:OnSubFinish7523217(arg1)
    print("OnSubFinish7523217")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6511.alias)
end

return Quest75232
