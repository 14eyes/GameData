require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77663 = class("Quest77663", QuestActorProxy)
Quest77663.defaultAlias = "Quest77663"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest77663:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest77663:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7766304"] = self.OnSubStart7766304,
        ["7766305"] = self.OnSubStart7766305,
        ["7766301"] = self.OnSubStart7766301,
        ["7766302"] = self.OnSubStart7766302,
        ["7766307"] = self.OnSubStart7766307,
        ["7766306"] = self.OnSubStart7766306,
        ["7766303"] = self.OnSubStart7766303
    }
end

function Quest77663:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7766304"] = self.OnSubFinish7766304,
        ["7766305"] = self.OnSubFinish7766305,
        ["7766301"] = self.OnSubFinish7766301,
        ["7766302"] = self.OnSubFinish7766302,
        ["7766307"] = self.OnSubFinish7766307,
        ["7766306"] = self.OnSubFinish7766306,
        ["7766303"] = self.OnSubFinish7766303
    }
end

function Quest77663:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7766306"] = self.OnSubFailed7766306}
end

function Quest77663:Start()
    print("Start")
end

function Quest77663:OnDestroy()
    print("OnDestroy")
end

function Quest77663:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77663:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77663:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77663:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77663Trigger", 77663)
end

function Quest77663:ActorDestroy(arg1, arg2)
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

function Quest77663:OnSubStart7766304(arg1)
    print("OnSubStart7766304")
    actorUtils.FinishQuestWithParam({false}, {7766304})
end

function Quest77663:OnSubFinish7766304(arg1)
    print("OnSubFinish7766304")
end

function Quest77663:OnSubStart7766305(arg1)
    print("OnSubStart7766305")
end

function Quest77663:OnSubFinish7766305(arg1)
    print("OnSubFinish7766305")
end

function Quest77663:OnSubStart7766301(arg1)
    print("OnSubStart7766301")
end

function Quest77663:OnSubFinish7766301(arg1)
    print("OnSubFinish7766301")
end

function Quest77663:OnSubStart7766302(arg1)
    print("OnSubStart7766302")
end

function Quest77663:OnSubFinish7766302(arg1)
    print("OnSubFinish7766302")
end

function Quest77663:OnSubStart7766307(arg1)
    print("OnSubStart7766307")
    actorMgr:CreateActorWithPos("Q77663Trigger", "Actor/Gadget/Q77663Trigger", 70900002, 0, points._Q77663TriggerPoint_.pos, points._Q77663TriggerPoint_.rot, true, false, 3, nil, 0, 77663)
end

function Quest77663:OnSubFinish7766307(arg1)
    print("OnSubFinish7766307")
    this:ActorDestroy("Q77663Trigger", 77663)
end

function Quest77663:OnSubStart7766306(arg1)
    print("OnSubStart7766306")
end

function Quest77663:OnSubFinish7766306(arg1)
    print("OnSubFinish7766306")
end

function Quest77663:OnSubFailed7766306(arg1)
    print("OnSubFailed7766306")
    this:RecycleAllRes()
end

function Quest77663:OnSubStart7766303(arg1)
    print("OnSubStart7766303")
end

function Quest77663:OnSubFinish7766303(arg1)
    print("OnSubFinish7766303")
end

return Quest77663
