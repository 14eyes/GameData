require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7721501Trigger = class("Q7721501Trigger", GadgetActorProxy)
Q7721501Trigger.defaultAlias = "Q7721501Trigger"
local Q77215ClientConfig = require("Quest/Client/Q77215ClientConfig")

local this
local subIDs = Q77215ClientConfig.SubIDs
local npcs = Q77215ClientConfig.Npcs
local points = Q77215ClientConfig.Points

function Q7721501Trigger:ActorDestroy(arg1, arg2)
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

function Q7721501Trigger:OnPostDataPrepare()
    print("Q7721501Trigger - OnPostDataPrepare")
    this = self
end

function Q7721501Trigger:OnPostComponentPrepare()
    print("Q7721501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77215)
end

function Q7721501Trigger:TriggerIn()
    print("Q7721501Trigger - TriggerIn")
    actorMgr:GetActor("77215"):RequestInteraction(npcs.Npc7842.alias, "", true)
    this:ActorDestroy("Q7721501Trigger", 77215)
end

function Q7721501Trigger:PreTriggerIn()
    print("Q7721501Trigger - PreTriggerIn")
end

function Q7721501Trigger:LightUpTriggerIn()
    print("Q7721501Trigger - LightUpTriggerIn")
end

function Q7721501Trigger:TriggerOut()
    print("Q7721501Trigger - TriggerOut")
end

return Q7721501Trigger
