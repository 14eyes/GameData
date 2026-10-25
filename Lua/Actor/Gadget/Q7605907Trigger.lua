require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7605907Trigger = class("Q7605907Trigger", GadgetActorProxy)
Q7605907Trigger.defaultAlias = "Q7605907Trigger"
local Q76059ClientConfig = require("Quest/Client/Q76059ClientConfig")

local this
local subIDs = Q76059ClientConfig.SubIDs
local npcs = Q76059ClientConfig.Npcs
local points = Q76059ClientConfig.Points

function Q7605907Trigger:OnPostDataPrepare()
    print("Q7605907Trigger - OnPostDataPrepare")
    this = self
end

function Q7605907Trigger:OnPostComponentPrepare()
    print("Q7605907Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76059)
end

function Q7605907Trigger:TriggerIn()
    print("Q7605907Trigger - TriggerIn")
    actorMgr:GetActor("76059"):AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:GetActor("76059"):RequestInteractionForceAlias(npcs.Npc15677.alias, "", true)
    end)

    this:DestroySelf()
end

function Q7605907Trigger:PreTriggerIn()
    print("Q7605907Trigger - PreTriggerIn")
end

function Q7605907Trigger:LightUpTriggerIn()
    print("Q7605907Trigger - LightUpTriggerIn")
end

function Q7605907Trigger:TriggerOut()
    print("Q7605907Trigger - TriggerOut")
end

return Q7605907Trigger
