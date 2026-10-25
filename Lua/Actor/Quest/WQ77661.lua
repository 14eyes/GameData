require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77661 = class("Quest77661", QuestActorProxy)
Quest77661.defaultAlias = "Quest77661"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest77661:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest77661:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7766104"] = self.OnSubStart7766104,
        ["7766105"] = self.OnSubStart7766105,
        ["7766101"] = self.OnSubStart7766101,
        ["7766102"] = self.OnSubStart7766102,
        ["7766107"] = self.OnSubStart7766107,
        ["7766106"] = self.OnSubStart7766106,
        ["7766103"] = self.OnSubStart7766103
    }
end

function Quest77661:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7766104"] = self.OnSubFinish7766104,
        ["7766105"] = self.OnSubFinish7766105,
        ["7766101"] = self.OnSubFinish7766101,
        ["7766102"] = self.OnSubFinish7766102,
        ["7766107"] = self.OnSubFinish7766107,
        ["7766106"] = self.OnSubFinish7766106,
        ["7766103"] = self.OnSubFinish7766103
    }
end

function Quest77661:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7766106"] = self.OnSubFailed7766106}
end

function Quest77661:Start()
    print("Start")
end

function Quest77661:OnDestroy()
    print("OnDestroy")
end

function Quest77661:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77661:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77661:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77661:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77661Trigger", 77661)
end

function Quest77661:ActorDestroy(arg1, arg2)
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

function Quest77661:OnSubStart7766104(arg1)
    print("OnSubStart7766104")
    actorUtils.FinishQuestWithParam({false}, {7766104})
end

function Quest77661:OnSubFinish7766104(arg1)
    print("OnSubFinish7766104")
end

function Quest77661:OnSubStart7766105(arg1)
    print("OnSubStart7766105")
end

function Quest77661:OnSubFinish7766105(arg1)
    print("OnSubFinish7766105")
end

function Quest77661:OnSubStart7766101(arg1)
    print("OnSubStart7766101")
end

function Quest77661:OnSubFinish7766101(arg1)
    print("OnSubFinish7766101")
end

function Quest77661:OnSubStart7766102(arg1)
    print("OnSubStart7766102")
end

function Quest77661:OnSubFinish7766102(arg1)
    print("OnSubFinish7766102")
end

function Quest77661:OnSubStart7766107(arg1)
    print("OnSubStart7766107")
    actorMgr:CreateActorWithPos("Q77661Trigger", "Actor/Gadget/Q77661Trigger", 70900002, 0, points._Q77661TriggerPoint_.pos, points._Q77661TriggerPoint_.rot, true, false, 3, nil, 0, 77661)
end

function Quest77661:OnSubFinish7766107(arg1)
    print("OnSubFinish7766107")
    this:ActorDestroy("Q77661Trigger", 77661)
end

function Quest77661:OnSubStart7766106(arg1)
    print("OnSubStart7766106")
end

function Quest77661:OnSubFinish7766106(arg1)
    print("OnSubFinish7766106")
end

function Quest77661:OnSubFailed7766106(arg1)
    print("OnSubFailed7766106")
    this:RecycleAllRes()
end

function Quest77661:OnSubStart7766103(arg1)
    print("OnSubStart7766103")
end

function Quest77661:OnSubFinish7766103(arg1)
    print("OnSubFinish7766103")
end

return Quest77661
