require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73069 = class("Quest73069", QuestActorProxy)
Quest73069.defaultAlias = "Quest73069"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73069:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73069:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7306901"] = self.OnSubStart7306901,
        ["7306918"] = self.OnSubStart7306918,
        ["7306903"] = self.OnSubStart7306903,
        ["7306904"] = self.OnSubStart7306904,
        ["7306905"] = self.OnSubStart7306905,
        ["7306906"] = self.OnSubStart7306906,
        ["7306907"] = self.OnSubStart7306907,
        ["7306908"] = self.OnSubStart7306908,
        ["7306909"] = self.OnSubStart7306909,
        ["7306910"] = self.OnSubStart7306910,
        ["7306911"] = self.OnSubStart7306911,
        ["7306912"] = self.OnSubStart7306912,
        ["7306916"] = self.OnSubStart7306916,
        ["7306917"] = self.OnSubStart7306917,
        ["7306913"] = self.OnSubStart7306913,
        ["7306914"] = self.OnSubStart7306914,
        ["7306915"] = self.OnSubStart7306915
    }
end

function Quest73069:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7306901"] = self.OnSubFinish7306901,
        ["7306918"] = self.OnSubFinish7306918,
        ["7306903"] = self.OnSubFinish7306903,
        ["7306904"] = self.OnSubFinish7306904,
        ["7306905"] = self.OnSubFinish7306905,
        ["7306906"] = self.OnSubFinish7306906,
        ["7306907"] = self.OnSubFinish7306907,
        ["7306908"] = self.OnSubFinish7306908,
        ["7306909"] = self.OnSubFinish7306909,
        ["7306910"] = self.OnSubFinish7306910,
        ["7306911"] = self.OnSubFinish7306911,
        ["7306912"] = self.OnSubFinish7306912,
        ["7306916"] = self.OnSubFinish7306916,
        ["7306917"] = self.OnSubFinish7306917,
        ["7306913"] = self.OnSubFinish7306913,
        ["7306914"] = self.OnSubFinish7306914,
        ["7306915"] = self.OnSubFinish7306915
    }
end

function Quest73069:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73069:Start()
    print("Start")
end

function Quest73069:OnDestroy()
    print("OnDestroy")
end

function Quest73069:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73069:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73069:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73069:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest73069:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73069:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73069:OnSubStart7306901(arg1)
    print("OnSubStart7306901")
end

function Quest73069:OnSubFinish7306901(arg1)
    print("OnSubFinish7306901")
end

function Quest73069:OnSubStart7306918(arg1)
    print("OnSubStart7306918")
    self:CreateQuestNpc(arg1, npcs.Npc20665Data.id, 1)
    actorMgr:CreateActorWithPos("Q7306901Trigger", "Actor/Gadget/Q7306901Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306901_N20665").pos, sceneData:GetDummyPoint(3, "Q7306901_N20665").rot, true, false, 3)
end

function Quest73069:OnSubFinish7306918(arg1)
    print("OnSubFinish7306918")
end

function Quest73069:OnSubStart7306903(arg1)
    print("OnSubStart7306903")
    self:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 2)
end

function Quest73069:OnSubFinish7306903(arg1)
    print("OnSubFinish7306903")
end

function Quest73069:OnSubStart7306904(arg1)
    print("OnSubStart7306904")
end

function Quest73069:OnSubFinish7306904(arg1)
    print("OnSubFinish7306904")
    self:NarratorOnlyTask(datas.Q7306905NarratorTable, nil, "")
end

function Quest73069:OnSubStart7306905(arg1)
    print("OnSubStart7306905")
end

function Quest73069:OnSubFinish7306905(arg1)
    print("OnSubFinish7306905")
end

function Quest73069:OnSubStart7306906(arg1)
    print("OnSubStart7306906")
    self:NpcCreateWithTriggerBlack(npcs.Npc20665Data.id, 7306906, 1)
    self:NpcCreateWithTriggerBlack(npcs.Npc20646Data.id, 7306906, 2)
end

function Quest73069:OnSubFinish7306906(arg1)
    print("OnSubFinish7306906")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20665Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73069:OnSubStart7306907(arg1)
    print("OnSubStart7306907")
    actorMgr:CreateActorWithPos("Q7306907Trigger", "Actor/Gadget/Q7306907Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306906_guide").pos, sceneData:GetDummyPoint(3, "Q7306906_guide").rot, true, false, 3)
end

function Quest73069:OnSubFinish7306907(arg1)
    print("OnSubFinish7306907")
end

function Quest73069:OnSubStart7306908(arg1)
    print("OnSubStart7306908")
end

function Quest73069:OnSubFinish7306908(arg1)
    print("OnSubFinish7306908")
end

function Quest73069:OnSubStart7306909(arg1)
    print("OnSubStart7306909")
    actorMgr:CreateActorWithPos("Q7306909Trigger", "Actor/Gadget/Q7306909Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306910_guide").pos, sceneData:GetDummyPoint(3, "Q7306910_guide").rot, true, false, 3)
end

function Quest73069:OnSubFinish7306909(arg1)
    print("OnSubFinish7306909")
end

function Quest73069:OnSubStart7306910(arg1)
    print("OnSubStart7306910")
end

function Quest73069:OnSubFinish7306910(arg1)
    print("OnSubFinish7306910")
end

function Quest73069:OnSubStart7306911(arg1)
    print("OnSubStart7306911")
end

function Quest73069:OnSubFinish7306911(arg1)
    print("OnSubFinish7306911")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73069:OnSubStart7306912(arg1)
    print("OnSubStart7306912")
end

function Quest73069:OnSubFinish7306912(arg1)
    print("OnSubFinish7306912")
end

function Quest73069:OnSubStart7306916(arg1)
    print("OnSubStart7306916")
end

function Quest73069:OnSubFinish7306916(arg1)
    print("OnSubFinish7306916")
end

function Quest73069:OnSubStart7306917(arg1)
    print("OnSubStart7306917")
    self:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeon(658, 1151, true, datas.TextmapId, 3)
    end)
end

function Quest73069:OnSubFinish7306917(arg1)
    print("OnSubFinish7306917")
end

function Quest73069:OnSubStart7306913(arg1)
    print("OnSubStart7306913")
end

function Quest73069:OnSubFinish7306913(arg1)
    print("OnSubFinish7306913")
end

function Quest73069:OnSubStart7306914(arg1)
    print("OnSubStart7306914")
end

function Quest73069:OnSubFinish7306914(arg1)
    print("OnSubFinish7306914")
end

function Quest73069:OnSubStart7306915(arg1)
    print("OnSubStart7306915")
    self:RequestInteraction(npcs.Npc20646Data.alias)
end

function Quest73069:OnSubFinish7306915(arg1)
    print("OnSubFinish7306915")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

return Quest73069
