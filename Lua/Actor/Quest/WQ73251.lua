require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73251 = class("Quest73251", QuestActorProxy)
Quest73251.defaultAlias = "Quest73251"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73251:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73251:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7325101"] = self.OnSubStart7325101,
        ["7325144"] = self.OnSubStart7325144,
        ["7325145"] = self.OnSubStart7325145,
        ["7325151"] = self.OnSubStart7325151,
        ["7325103"] = self.OnSubStart7325103,
        ["7325150"] = self.OnSubStart7325150,
        ["7325111"] = self.OnSubStart7325111,
        ["7325147"] = self.OnSubStart7325147,
        ["7325148"] = self.OnSubStart7325148,
        ["7325105"] = self.OnSubStart7325105,
        ["7325112"] = self.OnSubStart7325112,
        ["7325113"] = self.OnSubStart7325113,
        ["7325114"] = self.OnSubStart7325114,
        ["7325142"] = self.OnSubStart7325142,
        ["7325143"] = self.OnSubStart7325143,
        ["7325136"] = self.OnSubStart7325136,
        ["7325115"] = self.OnSubStart7325115,
        ["7325116"] = self.OnSubStart7325116,
        ["7325117"] = self.OnSubStart7325117,
        ["7325118"] = self.OnSubStart7325118,
        ["7325119"] = self.OnSubStart7325119,
        ["7325120"] = self.OnSubStart7325120,
        ["7325121"] = self.OnSubStart7325121,
        ["7325137"] = self.OnSubStart7325137,
        ["7325122"] = self.OnSubStart7325122,
        ["7325140"] = self.OnSubStart7325140,
        ["7325141"] = self.OnSubStart7325141,
        ["7325123"] = self.OnSubStart7325123,
        ["7325124"] = self.OnSubStart7325124,
        ["7325125"] = self.OnSubStart7325125,
        ["7325126"] = self.OnSubStart7325126,
        ["7325130"] = self.OnSubStart7325130,
        ["7325129"] = self.OnSubStart7325129,
        ["7325127"] = self.OnSubStart7325127,
        ["7325128"] = self.OnSubStart7325128,
        ["7325149"] = self.OnSubStart7325149,
        ["7325131"] = self.OnSubStart7325131,
        ["7325132"] = self.OnSubStart7325132,
        ["7325133"] = self.OnSubStart7325133,
        ["7325134"] = self.OnSubStart7325134,
        ["7325135"] = self.OnSubStart7325135,
        ["7325146"] = self.OnSubStart7325146,
        ["7325104"] = self.OnSubStart7325104,
        ["7325109"] = self.OnSubStart7325109,
        ["7325138"] = self.OnSubStart7325138,
        ["7325139"] = self.OnSubStart7325139
    }
end

function Quest73251:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7325101"] = self.OnSubFinish7325101,
        ["7325144"] = self.OnSubFinish7325144,
        ["7325145"] = self.OnSubFinish7325145,
        ["7325151"] = self.OnSubFinish7325151,
        ["7325103"] = self.OnSubFinish7325103,
        ["7325150"] = self.OnSubFinish7325150,
        ["7325111"] = self.OnSubFinish7325111,
        ["7325147"] = self.OnSubFinish7325147,
        ["7325148"] = self.OnSubFinish7325148,
        ["7325105"] = self.OnSubFinish7325105,
        ["7325112"] = self.OnSubFinish7325112,
        ["7325113"] = self.OnSubFinish7325113,
        ["7325114"] = self.OnSubFinish7325114,
        ["7325142"] = self.OnSubFinish7325142,
        ["7325143"] = self.OnSubFinish7325143,
        ["7325136"] = self.OnSubFinish7325136,
        ["7325115"] = self.OnSubFinish7325115,
        ["7325116"] = self.OnSubFinish7325116,
        ["7325117"] = self.OnSubFinish7325117,
        ["7325118"] = self.OnSubFinish7325118,
        ["7325119"] = self.OnSubFinish7325119,
        ["7325120"] = self.OnSubFinish7325120,
        ["7325121"] = self.OnSubFinish7325121,
        ["7325137"] = self.OnSubFinish7325137,
        ["7325122"] = self.OnSubFinish7325122,
        ["7325140"] = self.OnSubFinish7325140,
        ["7325141"] = self.OnSubFinish7325141,
        ["7325123"] = self.OnSubFinish7325123,
        ["7325124"] = self.OnSubFinish7325124,
        ["7325125"] = self.OnSubFinish7325125,
        ["7325126"] = self.OnSubFinish7325126,
        ["7325130"] = self.OnSubFinish7325130,
        ["7325129"] = self.OnSubFinish7325129,
        ["7325127"] = self.OnSubFinish7325127,
        ["7325128"] = self.OnSubFinish7325128,
        ["7325149"] = self.OnSubFinish7325149,
        ["7325131"] = self.OnSubFinish7325131,
        ["7325132"] = self.OnSubFinish7325132,
        ["7325133"] = self.OnSubFinish7325133,
        ["7325134"] = self.OnSubFinish7325134,
        ["7325135"] = self.OnSubFinish7325135,
        ["7325146"] = self.OnSubFinish7325146,
        ["7325104"] = self.OnSubFinish7325104,
        ["7325109"] = self.OnSubFinish7325109,
        ["7325138"] = self.OnSubFinish7325138,
        ["7325139"] = self.OnSubFinish7325139
    }
end

function Quest73251:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73251:Start()
    print("Start")
end

function Quest73251:OnDestroy()
    print("OnDestroy")
end

function Quest73251:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73251:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73251:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73251:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73251:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73251:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest73251:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73251:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73251:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest73251:OnSubStart7325101(arg1)
    print("OnSubStart7325101")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4284Data.id, 1)
end

function Quest73251:OnSubFinish7325101(arg1)
    print("OnSubFinish7325101")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4284Data.alias)
end

function Quest73251:OnSubStart7325144(arg1)
    print("OnSubStart7325144")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7325144, function(arg1)
            actorUtils.FinishQuestID(false, 7325144)
        end, nil, nil, false)
    end)
end

function Quest73251:OnSubFinish7325144(arg1)
    print("OnSubFinish7325144")
end

function Quest73251:OnSubStart7325145(arg1)
    print("OnSubStart7325145")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4284Data.id, 1)
end

function Quest73251:OnSubFinish7325145(arg1)
    print("OnSubFinish7325145")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4284Data.alias)
end

function Quest73251:OnSubStart7325151(arg1)
    print("OnSubStart7325151")
end

function Quest73251:OnSubFinish7325151(arg1)
    print("OnSubFinish7325151")
end

function Quest73251:OnSubStart7325103(arg1)
    print("OnSubStart7325103")
    actorMgr:CreateActorWithPos("Q7325104_N1005Trigger", "Actor/Gadget/Q7325104_N1005Trigger", 70900002, 0, points.TPos_Q7325104_N1005Trigger.pos, points.TPos_Q7325104_N1005Trigger.rot, true, false, 3)
end

function Quest73251:OnSubFinish7325103(arg1)
    print("OnSubFinish7325103")
end

function Quest73251:OnSubStart7325150(arg1)
    print("OnSubStart7325150")
    this:PlayCutsceneIndex(7325103, function(arg1)
        actorUtils.FinishQuestID(false, 7325150)
    end, nil, nil, false)
end

function Quest73251:OnSubFinish7325150(arg1)
    print("OnSubFinish7325150")
end

function Quest73251:OnSubStart7325111(arg1)
    print("OnSubStart7325111")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20883Data.id, 1)
end

function Quest73251:OnSubFinish7325111(arg1)
    print("OnSubFinish7325111")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20883Data.alias)
end

function Quest73251:OnSubStart7325147(arg1)
    print("OnSubStart7325147")
end

function Quest73251:OnSubFinish7325147(arg1)
    print("OnSubFinish7325147")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, false)
end

function Quest73251:OnSubStart7325148(arg1)
    print("OnSubStart7325148")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20883Data.id, 1)
    this:RequestInteraction(npcs.Npc20883Data.alias)
end

function Quest73251:OnSubFinish7325148(arg1)
    print("OnSubFinish7325148")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20883Data.alias)
end

function Quest73251:OnSubStart7325105(arg1)
    print("OnSubStart7325105")
    this:CreateQuestNpc(arg1, npcs.Npc4283Data.id, 1)
end

function Quest73251:OnSubFinish7325105(arg1)
    print("OnSubFinish7325105")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73251:OnSubStart7325112(arg1)
    print("OnSubStart7325112")
end

function Quest73251:OnSubFinish7325112(arg1)
    print("OnSubFinish7325112")
end

function Quest73251:OnSubStart7325113(arg1)
    print("OnSubStart7325113")
end

function Quest73251:OnSubFinish7325113(arg1)
    print("OnSubFinish7325113")
end

function Quest73251:OnSubStart7325114(arg1)
    print("OnSubStart7325114")
end

function Quest73251:OnSubFinish7325114(arg1)
    print("OnSubFinish7325114")
end

function Quest73251:OnSubStart7325142(arg1)
    print("OnSubStart7325142")
end

function Quest73251:OnSubFinish7325142(arg1)
    print("OnSubFinish7325142")
end

function Quest73251:OnSubStart7325143(arg1)
    print("OnSubStart7325143")
    actorMgr:CreateActorWithPos("Q7325143Trigger", "Actor/Gadget/Q7325143Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7325143_guide").pos, sceneData:GetDummyPoint(3, "Q7325143_guide").rot, true, false, 3)
end

function Quest73251:OnSubFinish7325143(arg1)
    print("OnSubFinish7325143")
end

function Quest73251:OnSubStart7325136(arg1)
    print("OnSubStart7325136")
    actorMgr:CreateActorWithPos("Q7325136Trigger", "Actor/Gadget/Q7325136Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7325136_guide").pos, sceneData:GetDummyPoint(3, "Q7325136_guide").rot, true, false, 3)
end

function Quest73251:OnSubFinish7325136(arg1)
    print("OnSubFinish7325136")
end

function Quest73251:OnSubStart7325115(arg1)
    print("OnSubStart7325115")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc4283Data.id, 7325115, 1, 5, 1)
end

function Quest73251:OnSubFinish7325115(arg1)
    print("OnSubFinish7325115")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73251:OnSubStart7325116(arg1)
    print("OnSubStart7325116")
    actorMgr:CreateActorWithPos("Q7325116Trigger", "Actor/Gadget/Q7325116Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7325116_guide").pos, sceneData:GetDummyPoint(3, "Q7325116_guide").rot, true, false, 3)
end

function Quest73251:OnSubFinish7325116(arg1)
    print("OnSubFinish7325116")
end

function Quest73251:OnSubStart7325117(arg1)
    print("OnSubStart7325117")
    actorMgr:CreateActorWithPos("Q7325117Trigger", "Actor/Gadget/Q7325117Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7325117_guide").pos, sceneData:GetDummyPoint(3, "Q7325117_guide").rot, true, false, 3)
end

function Quest73251:OnSubFinish7325117(arg1)
    print("OnSubFinish7325117")
end

function Quest73251:OnSubStart7325118(arg1)
    print("OnSubStart7325118")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc4283Data.id, 7325118, 1, 5, 1)
end

function Quest73251:OnSubFinish7325118(arg1)
    print("OnSubFinish7325118")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73251:OnSubStart7325119(arg1)
    print("OnSubStart7325119")
end

function Quest73251:OnSubFinish7325119(arg1)
    print("OnSubFinish7325119")
end

function Quest73251:OnSubStart7325120(arg1)
    print("OnSubStart7325120")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4283Data.id, 1)
    this:RequestInteraction(npcs.Npc4283Data.alias)
end

function Quest73251:OnSubFinish7325120(arg1)
    print("OnSubFinish7325120")
end

function Quest73251:OnSubStart7325121(arg1)
    print("OnSubStart7325121")
    this:CreateQuestNpc(arg1, npcs.Npc4283Data.id, 1)
end

function Quest73251:OnSubFinish7325121(arg1)
    print("OnSubFinish7325121")
    this:NarratorOnlyTaskByData(datas.Narrator_7325103)
end

function Quest73251:OnSubStart7325137(arg1)
    print("OnSubStart7325137")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc4283Data.id, 7325137, 1, 20, 1)
end

function Quest73251:OnSubFinish7325137(arg1)
    print("OnSubFinish7325137")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73251:OnSubStart7325122(arg1)
    print("OnSubStart7325122")
end

function Quest73251:OnSubFinish7325122(arg1)
    print("OnSubFinish7325122")
end

function Quest73251:OnSubStart7325140(arg1)
    print("OnSubStart7325140")
    actorMgr:CreateActorWithPos("Q7325140Trigger", "Actor/Gadget/Q7325140Trigger", 70900002, 0, {x = 362.114, y = 128.156, z = 6285.072}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73251:OnSubFinish7325140(arg1)
    print("OnSubFinish7325140")
end

function Quest73251:OnSubStart7325141(arg1)
    print("OnSubStart7325141")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc4283Data.id, 7325141, 1, 5, 1)
end

function Quest73251:OnSubFinish7325141(arg1)
    print("OnSubFinish7325141")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73251:OnSubStart7325123(arg1)
    print("OnSubStart7325123")
end

function Quest73251:OnSubFinish7325123(arg1)
    print("OnSubFinish7325123")
end

function Quest73251:OnSubStart7325124(arg1)
    print("OnSubStart7325124")
end

function Quest73251:OnSubFinish7325124(arg1)
    print("OnSubFinish7325124")
    this:NarratorOnlyTaskByData(datas.Narrator_7325105)
end

function Quest73251:OnSubStart7325125(arg1)
    print("OnSubStart7325125")
    actorMgr:CreateActorWithPos("Q7325125Trigger", "Actor/Gadget/Q7325125Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7325125_guide").pos, sceneData:GetDummyPoint(3, "Q7325125_guide").rot, true, false, 3)
end

function Quest73251:OnSubFinish7325125(arg1)
    print("OnSubFinish7325125")
end

function Quest73251:OnSubStart7325126(arg1)
    print("OnSubStart7325126")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc4283Data.id, 7325126, 1, 5, 1)
end

function Quest73251:OnSubFinish7325126(arg1)
    print("OnSubFinish7325126")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73251:OnSubStart7325130(arg1)
    print("OnSubStart7325130")
end

function Quest73251:OnSubFinish7325130(arg1)
    print("OnSubFinish7325130")
end

function Quest73251:OnSubStart7325129(arg1)
    print("OnSubStart7325129")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4283Data.id, 1)
    this:RequestInteraction(npcs.Npc4283Data.alias)
end

function Quest73251:OnSubFinish7325129(arg1)
    print("OnSubFinish7325129")
end

function Quest73251:OnSubStart7325127(arg1)
    print("OnSubStart7325127")
    this:CreateQuestNpc(arg1, npcs.Npc4283Data.id, 1)
end

function Quest73251:OnSubFinish7325127(arg1)
    print("OnSubFinish7325127")
    this:SafeDestroyQuestNpc(npcs.Npc4283Data.alias, 3)
end

function Quest73251:OnSubStart7325128(arg1)
    print("OnSubStart7325128")
    this:CallDelay(2, function(arg1)
        this:PlayCutsceneIndex(7325128, function(arg1)
            actorUtils.FinishQuestID(false, 7325128)
        end, nil, nil, false)
    end)
end

function Quest73251:OnSubFinish7325128(arg1)
    print("OnSubFinish7325128")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:TransmitPlayerWithDialogTextByQuestId(7325128, 1, datas.TextmapId, 1)
    end)
end

function Quest73251:OnSubStart7325149(arg1)
    print("OnSubStart7325149")
    this:NpcCreateWithNpcTrigger(npcs.Npc4283Data.id, 7325149, 1, 6)
end

function Quest73251:OnSubFinish7325149(arg1)
    print("OnSubFinish7325149")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73251:OnSubStart7325131(arg1)
    print("OnSubStart7325131")
end

function Quest73251:OnSubFinish7325131(arg1)
    print("OnSubFinish7325131")
end

function Quest73251:OnSubStart7325132(arg1)
    print("OnSubStart7325132")
end

function Quest73251:OnSubFinish7325132(arg1)
    print("OnSubFinish7325132")
end

function Quest73251:OnSubStart7325133(arg1)
    print("OnSubStart7325133")
end

function Quest73251:OnSubFinish7325133(arg1)
    print("OnSubFinish7325133")
end

function Quest73251:OnSubStart7325134(arg1)
    print("OnSubStart7325134")
    this:NpcCreateWithNpcTrigger(npcs.Npc20883Data.id, 7325134, 1, 15)
end

function Quest73251:OnSubFinish7325134(arg1)
    print("OnSubFinish7325134")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20883Data.alias)
end

function Quest73251:OnSubStart7325135(arg1)
    print("OnSubStart7325135")
end

function Quest73251:OnSubFinish7325135(arg1)
    print("OnSubFinish7325135")
end

function Quest73251:OnSubStart7325146(arg1)
    print("OnSubStart7325146")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20883Data.id, 7325146, 1, 5, 1)
end

function Quest73251:OnSubFinish7325146(arg1)
    print("OnSubFinish7325146")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20883Data.alias)
end

function Quest73251:OnSubStart7325104(arg1)
    print("OnSubStart7325104")
end

function Quest73251:OnSubFinish7325104(arg1)
    print("OnSubFinish7325104")
end

function Quest73251:OnSubStart7325109(arg1)
    print("OnSubStart7325109")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20883Data.id, 1, npcs.Npc20883Data.alias)
end

function Quest73251:OnSubFinish7325109(arg1)
    print("OnSubFinish7325109")
    this:CreateQuestNpc(arg1, npcs.Npc4283Data.id, 2)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7325101)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc20883Data.alias)
end

function Quest73251:OnSubStart7325138(arg1)
    print("OnSubStart7325138")
    this:PlayCutsceneIndex(7323213, function(arg1)
        actorUtils.FinishQuestID(false, 7325138)
    end, nil, nil, false)
end

function Quest73251:OnSubFinish7325138(arg1)
    print("OnSubFinish7325138")
end

function Quest73251:OnSubStart7325139(arg1)
    print("OnSubStart7325139")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4283Data.id, 1, npcs.Npc4283Data.alias)
end

function Quest73251:OnSubFinish7325139(arg1)
    print("OnSubFinish7325139")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

return Quest73251
