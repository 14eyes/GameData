require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71128 = class("Quest71128", QuestActorProxy)
Quest71128.defaultAlias = "Quest71128"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71128:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71128:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7112801"] = self.OnSubStart7112801, ["7112802"] = self.OnSubStart7112802}
end

function Quest71128:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7112801"] = self.OnSubFinish7112801, ["7112802"] = self.OnSubFinish7112802}
end

function Quest71128:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71128:Start()
    print("Start")
end

function Quest71128:OnDestroy()
    print("OnDestroy")
end

function Quest71128:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71128:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71128:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71128:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest71128:OnSubStart7112801(arg1)
    print("OnSubStart7112801")
end

function Quest71128:OnSubFinish7112801(arg1)
    print("OnSubFinish7112801")
end

function Quest71128:OnSubStart7112802(arg1)
    print("OnSubStart7112802")
    this:NpcCreateWithNpcTrigger(npcs.Npc21414Data.id, 7112802, 0, 20)
end

function Quest71128:OnSubFinish7112802(arg1)
    print("OnSubFinish7112802")
    this:SafeDestroyQuestNpc(npcs.Npc21414Data.alias, 3)
end

return Quest71128
