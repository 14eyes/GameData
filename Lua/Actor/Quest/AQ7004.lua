require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7004 = class("Quest7004", QuestActorProxy)
Quest7004.defaultAlias = "Quest7004"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest7004:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest7004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["700401"] = self.OnSubStart700401,
        ["700402"] = self.OnSubStart700402,
        ["700403"] = self.OnSubStart700403
    }
end

function Quest7004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["700401"] = self.OnSubFinish700401,
        ["700402"] = self.OnSubFinish700402,
        ["700403"] = self.OnSubFinish700403
    }
end

function Quest7004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest7004:Start()
    print("Start")
end

function Quest7004:OnDestroy()
    print("OnDestroy")
end

function Quest7004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7004:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q700402Trigger", 7004)
end

function Quest7004:ActorDestroy(arg1, arg2)
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

function Quest7004:OnSubStart700401(arg1)
    print("OnSubStart700401")
    actorUtils.FinishQuestWithParam({false}, {700401})
end

function Quest7004:OnSubFinish700401(arg1)
    print("OnSubFinish700401")
    local avatarPos = actorUtils.GetAvatarPos()
    if 40 < M.Dist({x = 7030.955, y = 201.3472, z = 8677.688}, avatarPos) then
        this:TransmitPlayerByData(arg1, 1, datas.TransmitBlackData, nil, nil, nil)
    end
end

function Quest7004:OnSubStart700402(arg1)
    print("OnSubStart700402")
    actorMgr:CreateActorWithPos("Q700402Trigger", "Actor/Gadget/Q700402Trigger", 70900002, 0, points._Q700402TriggerPoint_.pos, points._Q700402TriggerPoint_.rot, true, false, 3, nil, 0, 7004)
end

function Quest7004:OnSubFinish700402(arg1)
    print("OnSubFinish700402")
end

function Quest7004:OnSubStart700403(arg1)
    print("OnSubStart700403")
end

function Quest7004:OnSubFinish700403(arg1)
    print("OnSubFinish700403")
end

return Quest7004
