require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77658 = class("Quest77658", QuestActorProxy)
Quest77658.defaultAlias = "Quest77658"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest77658:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest77658:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7765801"] = self.OnSubStart7765801,
        ["7765802"] = self.OnSubStart7765802,
        ["7765805"] = self.OnSubStart7765805,
        ["7765804"] = self.OnSubStart7765804,
        ["7765803"] = self.OnSubStart7765803
    }
end

function Quest77658:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7765801"] = self.OnSubFinish7765801,
        ["7765802"] = self.OnSubFinish7765802,
        ["7765805"] = self.OnSubFinish7765805,
        ["7765804"] = self.OnSubFinish7765804,
        ["7765803"] = self.OnSubFinish7765803
    }
end

function Quest77658:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7765804"] = self.OnSubFailed7765804}
end

function Quest77658:Start()
    print("Start")
end

function Quest77658:OnDestroy()
    print("OnDestroy")
end

function Quest77658:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77658:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77658:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77658:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77658Trigger", 77658)
end

function Quest77658:ActorDestroy(arg1, arg2)
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

function Quest77658:OnSubStart7765801(arg1)
    print("OnSubStart7765801")
end

function Quest77658:OnSubFinish7765801(arg1)
    print("OnSubFinish7765801")
end

function Quest77658:OnSubStart7765802(arg1)
    print("OnSubStart7765802")
end

function Quest77658:OnSubFinish7765802(arg1)
    print("OnSubFinish7765802")
end

function Quest77658:OnSubStart7765805(arg1)
    print("OnSubStart7765805")
    actorMgr:CreateActorWithPos("Q77658Trigger", "Actor/Gadget/Q77658Trigger", 70900002, 0, points._Q77658TriggerPoint_.pos, points._Q77658TriggerPoint_.rot, true, false, 3, nil, 0, 77658)
end

function Quest77658:OnSubFinish7765805(arg1)
    print("OnSubFinish7765805")
    this:ActorDestroy("Q77658Trigger", 77658)
end

function Quest77658:OnSubStart7765804(arg1)
    print("OnSubStart7765804")
end

function Quest77658:OnSubFinish7765804(arg1)
    print("OnSubFinish7765804")
end

function Quest77658:OnSubFailed7765804(arg1)
    print("OnSubFailed7765804")
    this:RecycleAllRes()
end

function Quest77658:OnSubStart7765803(arg1)
    print("OnSubStart7765803")
end

function Quest77658:OnSubFinish7765803(arg1)
    print("OnSubFinish7765803")
end

return Quest77658
