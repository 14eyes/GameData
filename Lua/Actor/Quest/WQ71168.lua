require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71168 = class("Quest71168", QuestActorProxy)
Quest71168.defaultAlias = "Quest71168"
local clientData
local this
local mainID
local actorAlias

function Quest71168:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71168:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7116801"] = self.OnSubStart7116801}
end

function Quest71168:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7116801"] = self.OnSubFinish7116801}
end

function Quest71168:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71168:Start()
    print("Start")
end

function Quest71168:OnDestroy()
    print("OnDestroy")
end

function Quest71168:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71168:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71168:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7116802Trigger", nil)
end

function Quest71168:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7116802Trigger", nil)
end

function Quest71168:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(questId)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest71168:OnSubStart7116801(arg1)
    print("OnSubStart7116801")
end

function Quest71168:OnSubFinish7116801(arg1)
    print("OnSubFinish7116801")
    this:ShowTutorialDialog(2528, nil)
end

return Quest71168
