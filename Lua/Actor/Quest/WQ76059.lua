require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76059 = class("Quest76059", QuestActorProxy)
Quest76059.defaultAlias = "Quest76059"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76059:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76059:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7605901"] = self.OnSubStart7605901,
        ["7605904"] = self.OnSubStart7605904,
        ["7605906"] = self.OnSubStart7605906,
        ["7605905"] = self.OnSubStart7605905,
        ["7605907"] = self.OnSubStart7605907
    }
end

function Quest76059:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7605901"] = self.OnSubFinish7605901,
        ["7605904"] = self.OnSubFinish7605904,
        ["7605906"] = self.OnSubFinish7605906,
        ["7605905"] = self.OnSubFinish7605905,
        ["7605907"] = self.OnSubFinish7605907
    }
end

function Quest76059:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76059:Start()
    print("Start")
end

function Quest76059:OnDestroy()
    print("OnDestroy")
end

function Quest76059:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76059:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76059:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76059:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7605907Trigger")
end

function Quest76059:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76059:OnSubStart7605901(arg1)
    print("OnSubStart7605901")
end

function Quest76059:OnSubFinish7605901(arg1)
    print("OnSubFinish7605901")
end

function Quest76059:OnSubStart7605904(arg1)
    print("OnSubStart7605904")
end

function Quest76059:OnSubFinish7605904(arg1)
    print("OnSubFinish7605904")
end

function Quest76059:OnSubStart7605906(arg1)
    print("OnSubStart7605906")
end

function Quest76059:OnSubFinish7605906(arg1)
    print("OnSubFinish7605906")
end

function Quest76059:OnSubStart7605905(arg1)
    print("OnSubStart7605905")
end

function Quest76059:OnSubFinish7605905(arg1)
    print("OnSubFinish7605905")
end

function Quest76059:OnSubStart7605907(arg1)
    print("OnSubStart7605907")
    actorMgr:CreateActorWithPos("Q7605907Trigger", "Actor/Gadget/Q7605907Trigger", 70900002, 0, points._Q7605907TriggerPoint_.pos, points._Q7605907TriggerPoint_.rot, true, false, 3)
end

function Quest76059:OnSubFinish7605907(arg1)
    print("OnSubFinish7605907")
end

return Quest76059
