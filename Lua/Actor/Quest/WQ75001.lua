require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75001 = class("Quest75001", QuestActorProxy)
Quest75001.defaultAlias = "Quest75001"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75001:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7500101"] = self.OnSubStart7500101,
        ["7500119"] = self.OnSubStart7500119,
        ["7500107"] = self.OnSubStart7500107,
        ["7500108"] = self.OnSubStart7500108,
        ["7500104"] = self.OnSubStart7500104,
        ["7500105"] = self.OnSubStart7500105,
        ["7500118"] = self.OnSubStart7500118,
        ["7500103"] = self.OnSubStart7500103,
        ["7500136"] = self.OnSubStart7500136,
        ["7500135"] = self.OnSubStart7500135,
        ["7500138"] = self.OnSubStart7500138,
        ["7500122"] = self.OnSubStart7500122,
        ["7500132"] = self.OnSubStart7500132,
        ["7500102"] = self.OnSubStart7500102,
        ["7500112"] = self.OnSubStart7500112,
        ["7500120"] = self.OnSubStart7500120,
        ["7500109"] = self.OnSubStart7500109,
        ["7500137"] = self.OnSubStart7500137,
        ["7500127"] = self.OnSubStart7500127,
        ["7500134"] = self.OnSubStart7500134,
        ["7500128"] = self.OnSubStart7500128,
        ["7500139"] = self.OnSubStart7500139,
        ["7500143"] = self.OnSubStart7500143,
        ["7500129"] = self.OnSubStart7500129,
        ["7500130"] = self.OnSubStart7500130,
        ["7500131"] = self.OnSubStart7500131,
        ["7500124"] = self.OnSubStart7500124,
        ["7500125"] = self.OnSubStart7500125,
        ["7500106"] = self.OnSubStart7500106,
        ["7500140"] = self.OnSubStart7500140,
        ["7500141"] = self.OnSubStart7500141,
        ["7500142"] = self.OnSubStart7500142,
        ["7500123"] = self.OnSubStart7500123,
        ["7500133"] = self.OnSubStart7500133,
        ["7500121"] = self.OnSubStart7500121,
        ["7500110"] = self.OnSubStart7500110,
        ["7500111"] = self.OnSubStart7500111,
        ["7500115"] = self.OnSubStart7500115,
        ["7500116"] = self.OnSubStart7500116,
        ["7500117"] = self.OnSubStart7500117,
        ["7500126"] = self.OnSubStart7500126,
        ["7500113"] = self.OnSubStart7500113,
        ["7500114"] = self.OnSubStart7500114
    }
end

function Quest75001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7500101"] = self.OnSubFinish7500101,
        ["7500119"] = self.OnSubFinish7500119,
        ["7500107"] = self.OnSubFinish7500107,
        ["7500108"] = self.OnSubFinish7500108,
        ["7500104"] = self.OnSubFinish7500104,
        ["7500105"] = self.OnSubFinish7500105,
        ["7500118"] = self.OnSubFinish7500118,
        ["7500103"] = self.OnSubFinish7500103,
        ["7500136"] = self.OnSubFinish7500136,
        ["7500135"] = self.OnSubFinish7500135,
        ["7500138"] = self.OnSubFinish7500138,
        ["7500122"] = self.OnSubFinish7500122,
        ["7500132"] = self.OnSubFinish7500132,
        ["7500102"] = self.OnSubFinish7500102,
        ["7500112"] = self.OnSubFinish7500112,
        ["7500120"] = self.OnSubFinish7500120,
        ["7500109"] = self.OnSubFinish7500109,
        ["7500137"] = self.OnSubFinish7500137,
        ["7500127"] = self.OnSubFinish7500127,
        ["7500134"] = self.OnSubFinish7500134,
        ["7500128"] = self.OnSubFinish7500128,
        ["7500139"] = self.OnSubFinish7500139,
        ["7500143"] = self.OnSubFinish7500143,
        ["7500129"] = self.OnSubFinish7500129,
        ["7500130"] = self.OnSubFinish7500130,
        ["7500131"] = self.OnSubFinish7500131,
        ["7500124"] = self.OnSubFinish7500124,
        ["7500125"] = self.OnSubFinish7500125,
        ["7500106"] = self.OnSubFinish7500106,
        ["7500140"] = self.OnSubFinish7500140,
        ["7500141"] = self.OnSubFinish7500141,
        ["7500142"] = self.OnSubFinish7500142,
        ["7500123"] = self.OnSubFinish7500123,
        ["7500133"] = self.OnSubFinish7500133,
        ["7500121"] = self.OnSubFinish7500121,
        ["7500110"] = self.OnSubFinish7500110,
        ["7500111"] = self.OnSubFinish7500111,
        ["7500115"] = self.OnSubFinish7500115,
        ["7500116"] = self.OnSubFinish7500116,
        ["7500117"] = self.OnSubFinish7500117,
        ["7500126"] = self.OnSubFinish7500126,
        ["7500113"] = self.OnSubFinish7500113,
        ["7500114"] = self.OnSubFinish7500114
    }
end

function Quest75001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7500101"] = self.OnSubFailed7500101}
end

function Quest75001:Start()
    print("Start")
end

function Quest75001:OnDestroy()
    print("OnDestroy")
end

function Quest75001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75001:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest75001:OnSubStart7500101(arg1)
    print("OnSubStart7500101")
    this:CreateQuestNpc(arg1, npcs.Npc6131.id, 0, false, 0)
    this:DeployStoryByQuest(147500101)
end

function Quest75001:OnSubFinish7500101(arg1)
    print("OnSubFinish7500101")
    this:CancelStoryByQuest(147500101)
    this:SafeDestroyQuestNpc(npcs.Npc6131.alias, 3)
end

function Quest75001:OnSubFailed7500101(arg1)
    print("OnSubFailed7500101")
    this:CancelStoryByQuest(147500101)
end

function Quest75001:OnSubStart7500119(arg1)
    print("OnSubStart7500119")
    this:CreateQuestNpc(arg1, npcs.Npc21459.id, 0, false, 0)
end

function Quest75001:OnSubFinish7500119(arg1)
    print("OnSubFinish7500119")
end

function Quest75001:OnSubStart7500107(arg1)
    print("OnSubStart7500107")
end

function Quest75001:OnSubFinish7500107(arg1)
    print("OnSubFinish7500107")
end

function Quest75001:OnSubStart7500108(arg1)
    print("OnSubStart7500108")
    this:CreateQuestNpcWithTriggerBlackEx("Q7500107Trigger", 7500108, 6131, 1, 80, 0.5, 1, 0.5, 2)
end

function Quest75001:OnSubFinish7500108(arg1)
    print("OnSubFinish7500108")
    this:SafeDestroyQuestNpc(npcs.Npc6131.alias, 3)
end

function Quest75001:OnSubStart7500104(arg1)
    print("OnSubStart7500104")
end

function Quest75001:OnSubFinish7500104(arg1)
    print("OnSubFinish7500104")
end

function Quest75001:OnSubStart7500105(arg1)
    print("OnSubStart7500105")
    this:CreateQuestNpcWithTriggerBlackEx("Q7500105Trigger", 7500105, 6131, 1, 80, 0.5, 1, 0.5, 2)
end

function Quest75001:OnSubFinish7500105(arg1)
    print("OnSubFinish7500105")
    this:SafeDestroyQuestNpc(npcs.Npc6131.alias, 3)
end

function Quest75001:OnSubStart7500118(arg1)
    print("OnSubStart7500118")
end

function Quest75001:OnSubFinish7500118(arg1)
    print("OnSubFinish7500118")
    self:SetNavigationByMainId(75001, true)
end

function Quest75001:OnSubStart7500103(arg1)
    print("OnSubStart7500103")
    actorMgr:CreateActorWithPos("Q7500103Trigger", "Actor/Gadget/Q7500103Trigger", 70900002, 0, {x = -1309.297, y = 70.677, z = 8352.471}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75001:OnSubFinish7500103(arg1)
    print("OnSubFinish7500103")
end

function Quest75001:OnSubStart7500136(arg1)
    print("OnSubStart7500136")
end

function Quest75001:OnSubFinish7500136(arg1)
    print("OnSubFinish7500136")
end

function Quest75001:OnSubStart7500135(arg1)
    print("OnSubStart7500135")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6131.id, 7500135, 0, 60, 1, false)
end

function Quest75001:OnSubFinish7500135(arg1)
    print("OnSubFinish7500135")
end

function Quest75001:OnSubStart7500138(arg1)
    print("OnSubStart7500138")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6131.id, 7500138, 0, 60, 1, false)
end

function Quest75001:OnSubFinish7500138(arg1)
    print("OnSubFinish7500138")
end

function Quest75001:OnSubStart7500122(arg1)
    print("OnSubStart7500122")
    this:CreateQuestNpc(arg1, npcs.Npc6131.id, 0, false, 0)
end

function Quest75001:OnSubFinish7500122(arg1)
    print("OnSubFinish7500122")
end

function Quest75001:OnSubStart7500132(arg1)
    print("OnSubStart7500132")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6131.id, 7500132, 0, 60, 1, false)
end

function Quest75001:OnSubFinish7500132(arg1)
    print("OnSubFinish7500132")
    this:SafeDestroyQuestNpc(npcs.Npc6131.alias, 3)
end

function Quest75001:OnSubStart7500102(arg1)
    print("OnSubStart7500102")
end

function Quest75001:OnSubFinish7500102(arg1)
    print("OnSubFinish7500102")
end

function Quest75001:OnSubStart7500112(arg1)
    print("OnSubStart7500112")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6131.id, 7500112, 0, 60, 1, false)
end

function Quest75001:OnSubFinish7500112(arg1)
    print("OnSubFinish7500112")
    this:SafeDestroyQuestNpc(npcs.Npc6131.alias, 3)
end

function Quest75001:OnSubStart7500120(arg1)
    print("OnSubStart7500120")
end

function Quest75001:OnSubFinish7500120(arg1)
    print("OnSubFinish7500120")
end

function Quest75001:OnSubStart7500109(arg1)
    print("OnSubStart7500109")
    actorMgr:CreateActorWithPos("Q7500109Trigger", "Actor/Gadget/Q7500109Trigger", 70900002, 0, {x = -1455.365, y = 25.929, z = 8718.949}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75001:OnSubFinish7500109(arg1)
    print("OnSubFinish7500109")
end

function Quest75001:OnSubStart7500137(arg1)
    print("OnSubStart7500137")
end

function Quest75001:OnSubFinish7500137(arg1)
    print("OnSubFinish7500137")
end

function Quest75001:OnSubStart7500127(arg1)
    print("OnSubStart7500127")
end

function Quest75001:OnSubFinish7500127(arg1)
    print("OnSubFinish7500127")
end

function Quest75001:OnSubStart7500134(arg1)
    print("OnSubStart7500134")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21459.id, 7500134, 0, 60, 1, false)
end

function Quest75001:OnSubFinish7500134(arg1)
    print("OnSubFinish7500134")
    this:SafeDestroyQuestNpc(npcs.Npc21459.alias, 3)
end

function Quest75001:OnSubStart7500128(arg1)
    print("OnSubStart7500128")
end

function Quest75001:OnSubFinish7500128(arg1)
    print("OnSubFinish7500128")
end

function Quest75001:OnSubStart7500139(arg1)
    print("OnSubStart7500139")
end

function Quest75001:OnSubFinish7500139(arg1)
    print("OnSubFinish7500139")
end

function Quest75001:OnSubStart7500143(arg1)
    print("OnSubStart7500143")
end

function Quest75001:OnSubFinish7500143(arg1)
    print("OnSubFinish7500143")
end

function Quest75001:OnSubStart7500129(arg1)
    print("OnSubStart7500129")
end

function Quest75001:OnSubFinish7500129(arg1)
    print("OnSubFinish7500129")
end

function Quest75001:OnSubStart7500130(arg1)
    print("OnSubStart7500130")
end

function Quest75001:OnSubFinish7500130(arg1)
    print("OnSubFinish7500130")
end

function Quest75001:OnSubStart7500131(arg1)
    print("OnSubStart7500131")
end

function Quest75001:OnSubFinish7500131(arg1)
    print("OnSubFinish7500131")
end

function Quest75001:OnSubStart7500124(arg1)
    print("OnSubStart7500124")
end

function Quest75001:OnSubFinish7500124(arg1)
    print("OnSubFinish7500124")
end

function Quest75001:OnSubStart7500125(arg1)
    print("OnSubStart7500125")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6131.id, 7500125, 0, 60, 1, false)
end

function Quest75001:OnSubFinish7500125(arg1)
    print("OnSubFinish7500125")
    this:SafeDestroyQuestNpc(npcs.Npc6131.alias, 3)
end

function Quest75001:OnSubStart7500106(arg1)
    print("OnSubStart7500106")
    actorMgr:CreateActorWithPos("Q7500106Trigger", "Actor/Gadget/Q7500106Trigger", 70900002, 0, {x = -1309.297, y = 70.677, z = 8352.471}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75001:OnSubFinish7500106(arg1)
    print("OnSubFinish7500106")
end

function Quest75001:OnSubStart7500140(arg1)
    print("OnSubStart7500140")
end

function Quest75001:OnSubFinish7500140(arg1)
    print("OnSubFinish7500140")
end

function Quest75001:OnSubStart7500141(arg1)
    print("OnSubStart7500141")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6131.id, 7500141, 0, 60, 1, false)
end

function Quest75001:OnSubFinish7500141(arg1)
    print("OnSubFinish7500141")
end

function Quest75001:OnSubStart7500142(arg1)
    print("OnSubStart7500142")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6131.id, 7500142, 0, 60, 1, false)
end

function Quest75001:OnSubFinish7500142(arg1)
    print("OnSubFinish7500142")
end

function Quest75001:OnSubStart7500123(arg1)
    print("OnSubStart7500123")
end

function Quest75001:OnSubFinish7500123(arg1)
    print("OnSubFinish7500123")
end

function Quest75001:OnSubStart7500133(arg1)
    print("OnSubStart7500133")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6131.id, 7500133, 0, 60, 1, false)
end

function Quest75001:OnSubFinish7500133(arg1)
    print("OnSubFinish7500133")
end

function Quest75001:OnSubStart7500121(arg1)
    print("OnSubStart7500121")
end

function Quest75001:OnSubFinish7500121(arg1)
    print("OnSubFinish7500121")
end

function Quest75001:OnSubStart7500110(arg1)
    print("OnSubStart7500110")
    actorMgr:CreateActorWithPos("Q7500110Trigger", "Actor/Gadget/Q7500110Trigger", 70900002, 0, {x = -1587.407, y = 74.025, z = 8430.522}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75001:OnSubFinish7500110(arg1)
    print("OnSubFinish7500110")
end

function Quest75001:OnSubStart7500111(arg1)
    print("OnSubStart7500111")
    this:CreateQuestNpcWithTriggerBlackEx("Q7500110Trigger", 7500111, 21459, 0, 80, 0.5, 1, 0.5, 2)
end

function Quest75001:OnSubFinish7500111(arg1)
    print("OnSubFinish7500111")
    this:SafeDestroyQuestNpc(npcs.Npc21459.alias, 3)
end

function Quest75001:OnSubStart7500115(arg1)
    print("OnSubStart7500115")
    actorMgr:CreateActorWithPos("Q7500115Trigger", "Actor/Gadget/Q7500115Trigger", 70900002, 0, {x = -1498.514, y = 68.742, z = 8542.19}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75001:OnSubFinish7500115(arg1)
    print("OnSubFinish7500115")
end

function Quest75001:OnSubStart7500116(arg1)
    print("OnSubStart7500116")
end

function Quest75001:OnSubFinish7500116(arg1)
    print("OnSubFinish7500116")
end

function Quest75001:OnSubStart7500117(arg1)
    print("OnSubStart7500117")
    this:PlayCutsceneIndex(7500117, function(arg1)
        actorUtils.FinishQuestID(false, 7500117)
    end, nil, nil, false)
end

function Quest75001:OnSubFinish7500117(arg1)
    print("OnSubFinish7500117")
end

function Quest75001:OnSubStart7500126(arg1)
    print("OnSubStart7500126")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6131.id, 7500126, 0, 60, 1, false)
end

function Quest75001:OnSubFinish7500126(arg1)
    print("OnSubFinish7500126")
    this:SetNavigationByMainId(75004, true)
    this:SafeDestroyQuestNpc(npcs.Npc6131.alias, 3)
end

function Quest75001:OnSubStart7500113(arg1)
    print("OnSubStart7500113")
    this:CreateQuestNpc(arg1, npcs.Npc6131.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7500113Trigger", "Actor/Gadget/Q7500113Trigger", 70900002, 0, {x = -1500.958, y = 72.401, z = 8371.309}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75001:OnSubFinish7500113(arg1)
    print("OnSubFinish7500113")
end

function Quest75001:OnSubStart7500114(arg1)
    print("OnSubStart7500114")
end

function Quest75001:OnSubFinish7500114(arg1)
    print("OnSubFinish7500114")
    this:SafeDestroyQuestNpc(npcs.Npc6131.alias, 3)
end

return Quest75001
