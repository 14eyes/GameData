require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614731Trigger = class("Q7614731Trigger", GadgetActorProxy)
Q7614731Trigger.defaultAlias = "Q7614731Trigger"
local Q76147ClientConfig = require("Quest/Client/Q76147ClientConfig")

local this
local subIDs = Q76147ClientConfig.SubIDs
local datas = Q76147ClientConfig.Datas
local npcs = Q76147ClientConfig.Npcs
local points = Q76147ClientConfig.Points

function Q7614731Trigger:OnPostDataPrepare()
    print("Q7614731Trigger - OnPostDataPrepare")
    this = self
end

function Q7614731Trigger:OnPostComponentPrepare()
    print("Q7614731Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76147)
end

function Q7614731Trigger:TriggerIn()
    print("Q7614731Trigger - TriggerIn")
    actorMgr:GetActor("76147"):RequestInteraction(npcs.Npc22309.alias, "", true)
    this:DestroySelf()
end

function Q7614731Trigger:PreTriggerIn()
    print("Q7614731Trigger - PreTriggerIn")
end

function Q7614731Trigger:LightUpTriggerIn()
    print("Q7614731Trigger - LightUpTriggerIn")
end

function Q7614731Trigger:TriggerOut()
    print("Q7614731Trigger - TriggerOut")
end

return Q7614731Trigger
