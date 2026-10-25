require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13028 = class("Quest13028", QuestActorProxy)
Quest13028.defaultAlias = "Quest13028"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13028:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13028:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1302801"] = self.OnSubStart1302801, ["1302802"] = self.OnSubStart1302802}
end

function Quest13028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1302801"] = self.OnSubFinish1302801, ["1302802"] = self.OnSubFinish1302802}
end

function Quest13028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13028:Start()
    print("Start")
end

function Quest13028:OnDestroy()
    print("OnDestroy")
end

function Quest13028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13028:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13028:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest13028:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest13028:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8, 1)
end

function Quest13028:OnSubStart1302801(arg1)
    print("OnSubStart1302801")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13163Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13164Data.id, 3)
end

function Quest13028:OnSubFinish1302801(arg1)
    print("OnSubFinish1302801")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
    this:NpcDestroy(npcs.Npc13163Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13164Data.alias)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 2)
    end)
end

function Quest13028:OnSubStart1302802(arg1)
    print("OnSubStart1302802")
    this:NpcCreateWithTriggerBlack(npcs.Npc1056Data.id, 1302802, 1)
end

function Quest13028:OnSubFinish1302802(arg1)
    print("OnSubFinish1302802")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
end

return Quest13028
