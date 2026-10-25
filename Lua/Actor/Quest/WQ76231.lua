require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76231 = class("Quest76231", QuestActorProxy)
Quest76231.defaultAlias = "Quest76231"
local clientData
local this
local mainID
local actorAlias

function Quest76231:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76231:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7623101"] = self.OnSubStart7623101, ["7623102"] = self.OnSubStart7623102}
end

function Quest76231:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7623101"] = self.OnSubFinish7623101, ["7623102"] = self.OnSubFinish7623102}
end

function Quest76231:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7623102"] = self.OnSubFailed7623102}
end

function Quest76231:Start()
    print("Start")
end

function Quest76231:OnDestroy()
    print("OnDestroy")
end

function Quest76231:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76231:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76231:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76231:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7623101Trigger", 76231)
end

function Quest76231:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76231:OnSubStart7623101(arg1)
    print("OnSubStart7623101")
end

function Quest76231:OnSubFinish7623101(arg1)
    print("OnSubFinish7623101")
end

function Quest76231:OnSubStart7623102(arg1)
    print("OnSubStart7623102")
    actorUtils.BanUIByQuest(1, true, 7623102)
end

function Quest76231:OnSubFinish7623102(arg1)
    print("OnSubFinish7623102")
    actorUtils.BanUIByQuest(1, false, 7623102)
end

function Quest76231:OnSubFailed7623102(arg1)
    print("OnSubFailed7623102")
    this:RecycleAllRes()
    actorUtils.BanUIByQuest(1, false, 7623102)
end

return Quest76231
