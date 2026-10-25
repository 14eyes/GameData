require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71157 = class("Quest71157", QuestActorProxy)
Quest71157.defaultAlias = "Quest71157"
local clientData
local this
local mainID
local actorAlias

function Quest71157:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71157:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7115701"] = self.OnSubStart7115701, ["7115702"] = self.OnSubStart7115702}
end

function Quest71157:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7115701"] = self.OnSubFinish7115701, ["7115702"] = self.OnSubFinish7115702}
end

function Quest71157:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71157:Start()
    print("Start")
end

function Quest71157:OnDestroy()
    print("OnDestroy")
end

function Quest71157:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71157:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71157:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71157:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71157:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest71157:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest71157:OnSubStart7115701(arg1)
    print("OnSubStart7115701")
end

function Quest71157:OnSubFinish7115701(arg1)
    print("OnSubFinish7115701")
end

function Quest71157:OnSubStart7115702(arg1)
    print("OnSubStart7115702")
end

function Quest71157:OnSubFinish7115702(arg1)
    print("OnSubFinish7115702")
    this:NpcDestroyWithDither(3, "2353")
end

return Quest71157
