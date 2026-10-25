require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16801 = class("Quest16801", QuestActorProxy)
Quest16801.defaultAlias = "Quest16801"
local clientData
local this
local mainID
local actorAlias

function Quest16801:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest16801:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1680102"] = self.OnSubStart1680102,
        ["1680103"] = self.OnSubStart1680103,
        ["1680105"] = self.OnSubStart1680105,
        ["1680106"] = self.OnSubStart1680106,
        ["1680107"] = self.OnSubStart1680107
    }
end

function Quest16801:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1680102"] = self.OnSubFinish1680102,
        ["1680103"] = self.OnSubFinish1680103,
        ["1680105"] = self.OnSubFinish1680105,
        ["1680106"] = self.OnSubFinish1680106,
        ["1680107"] = self.OnSubFinish1680107
    }
end

function Quest16801:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1680102"] = self.OnSubFailed1680102,
        ["1680103"] = self.OnSubFailed1680103,
        ["1680105"] = self.OnSubFailed1680105,
        ["1680106"] = self.OnSubFailed1680106
    }
end

function Quest16801:Start()
    print("Start")
end

function Quest16801:OnDestroy()
    print("OnDestroy")
end

function Quest16801:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16801:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16801:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest16801:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16801:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 168011112 then
        print("\233\135\141\231\189\174\230\138\128\232\131\189")
        this:SetQuestVarByMainId(1, 0)
    elseif arg1 == 168011115 then
        print("\233\128\137\230\139\169\229\140\187\230\156\175")
        this:SetQuestVarByMainId(1, 1)
    elseif arg1 == 168011113 then
        print("\233\128\137\230\139\169\229\142\168\232\137\186")
        this:SetQuestVarByMainId(1, 2)
    elseif arg1 == 168011903 then
        print("\233\128\137\230\139\169\230\150\185\230\179\149\228\184\128")
        this:SetQuestVarByMainId(2, 1)
    elseif arg1 == 168011905 then
        print("\233\128\137\230\139\169\230\150\185\230\179\149\228\186\140")
        this:SetQuestVarByMainId(2, 2)
    end
end

function Quest16801:OnSubStart1680102(arg1)
    print("OnSubStart1680102")
end

function Quest16801:OnSubFinish1680102(arg1)
    print("OnSubFinish1680102")
end

function Quest16801:OnSubFailed1680102(arg1)
    print("OnSubFailed1680102")
    this:RecycleAllRes()
end

function Quest16801:OnSubStart1680103(arg1)
    print("OnSubStart1680103")
end

function Quest16801:OnSubFinish1680103(arg1)
    print("OnSubFinish1680103")
end

function Quest16801:OnSubFailed1680103(arg1)
    print("OnSubFailed1680103")
    this:RecycleAllRes()
end

function Quest16801:OnSubStart1680105(arg1)
    print("OnSubStart1680105")
end

function Quest16801:OnSubFinish1680105(arg1)
    print("OnSubFinish1680105")
end

function Quest16801:OnSubFailed1680105(arg1)
    print("OnSubFailed1680105")
    this:RecycleAllRes()
end

function Quest16801:OnSubStart1680106(arg1)
    print("OnSubStart1680106")
end

function Quest16801:OnSubFinish1680106(arg1)
    print("OnSubFinish1680106")
end

function Quest16801:OnSubFailed1680106(arg1)
    print("OnSubFailed1680106")
    this:RecycleAllRes()
end

function Quest16801:OnSubStart1680107(arg1)
    print("OnSubStart1680107")
end

function Quest16801:OnSubFinish1680107(arg1)
    print("OnSubFinish1680107")
end

return Quest16801
