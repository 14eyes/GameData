require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602421Trigger = class("Q7602421Trigger", GadgetActorProxy)
Q7602421Trigger.defaultAlias = "Q7602421Trigger"
local Q76024ClientConfig = require("Quest/Client/Q76024ClientConfig")

local this
local subIDs = Q76024ClientConfig.SubIDs
local datas = Q76024ClientConfig.Datas
local npcs = Q76024ClientConfig.Npcs
local points = Q76024ClientConfig.Points

function Q7602421Trigger:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Q7602421Trigger:OnPostDataPrepare()
    print("Q7602421Trigger - OnPostDataPrepare")
    this = self
end

function Q7602421Trigger:OnPostComponentPrepare()
    print("Q7602421Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(75, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76024)
end

function Q7602421Trigger:TriggerIn()
    print("Q7602421Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602414)
    this:DestroySelf()
    this:ActorDestroy("Q2407Trigger")
end

function Q7602421Trigger:PreTriggerIn()
    print("Q7602421Trigger - PreTriggerIn")
end

function Q7602421Trigger:LightUpTriggerIn()
    print("Q7602421Trigger - LightUpTriggerIn")
end

function Q7602421Trigger:TriggerOut()
    print("Q7602421Trigger - TriggerOut")
end

return Q7602421Trigger
