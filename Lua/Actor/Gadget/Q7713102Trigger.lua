require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713102Trigger = class("Q7713102Trigger", GadgetActorProxy)
Q7713102Trigger.defaultAlias = "Q7713102Trigger"
local Q77131ClientConfig = require("Quest/Client/Q77131ClientConfig")

local this
local subIDs = Q77131ClientConfig.SubIDs
local datas = Q77131ClientConfig.Datas
local npcs = Q77131ClientConfig.Npcs
local points = Q77131ClientConfig.Points

function Q7713102Trigger:ActorDestroy(arg1, arg2)
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

function Q7713102Trigger:OnPostDataPrepare()
    print("Q7713102Trigger - OnPostDataPrepare")
    this = self
end

function Q7713102Trigger:OnPostComponentPrepare()
    print("Q7713102Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(14, 7, 11, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77131)
end

function Q7713102Trigger:TriggerIn()
    print("Q7713102Trigger - TriggerIn")
    actorMgr:GetActor("77131"):RequestInteraction(npcs.Npc7654.alias, "", true)
    this:ActorDestroy("Q7713102Trigger", 77131)
end

function Q7713102Trigger:PreTriggerIn()
    print("Q7713102Trigger - PreTriggerIn")
end

function Q7713102Trigger:LightUpTriggerIn()
    print("Q7713102Trigger - LightUpTriggerIn")
end

function Q7713102Trigger:TriggerOut()
    print("Q7713102Trigger - TriggerOut")
end

return Q7713102Trigger
