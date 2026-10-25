require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71132 = class("Quest71132", QuestActorProxy)
Quest71132.defaultAlias = "Quest71132"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71132:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71132:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7113201"] = self.OnSubStart7113201, ["7113202"] = self.OnSubStart7113202}
end

function Quest71132:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7113201"] = self.OnSubFinish7113201, ["7113202"] = self.OnSubFinish7113202}
end

function Quest71132:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71132:Start()
    print("Start")
end

function Quest71132:OnDestroy()
    print("OnDestroy")
end

function Quest71132:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71132:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71132:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71132:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest71132:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest71132:OnSubStart7113201(arg1)
    print("OnSubStart7113201")
    actorMgr:CreateActorWithPos("Q71132Trigger", "Actor/Gadget/Q71132Trigger", 70900002, 0, {x = -0.245, y = 0.0, z = -2.798}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1081)
end

function Quest71132:OnSubFinish7113201(arg1)
    print("OnSubFinish7113201")
end

function Quest71132:OnSubStart7113202(arg1)
    print("OnSubStart7113202")
    this:NpcCreateWithNpcTrigger(npcs.Npc2511Data.id, 7113202, 0, 20)
end

function Quest71132:OnSubFinish7113202(arg1)
    print("OnSubFinish7113202")
    this:NpcDestroyWithDither(npcs.Npc2511Data.alias, 3)
end

return Quest71132
