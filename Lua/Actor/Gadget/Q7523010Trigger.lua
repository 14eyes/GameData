require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523010Trigger = class("Q7523010Trigger", GadgetActorProxy)
Q7523010Trigger.defaultAlias = "Q7523010Trigger"
local Q75230ClientConfig = require("Quest/Client/Q75230ClientConfig")

local this
local subIDs = Q75230ClientConfig.SubIDs
local datas = Q75230ClientConfig.Datas
local npcs = Q75230ClientConfig.Npcs
local points = Q75230ClientConfig.Points

function Q7523010Trigger:OnPostDataPrepare()
    print("Q7523010Trigger - OnPostDataPrepare")
    this = self
end

function Q7523010Trigger:OnPostComponentPrepare()
    print("Q7523010Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75230)
end

function Q7523010Trigger:TriggerIn()
    print("Q7523010Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523010)
    this:DestroySelf()
end

function Q7523010Trigger:PreTriggerIn()
    print("Q7523010Trigger - PreTriggerIn")
end

function Q7523010Trigger:LightUpTriggerIn()
    print("Q7523010Trigger - LightUpTriggerIn")
end

function Q7523010Trigger:TriggerOut()
    print("Q7523010Trigger - TriggerOut")
end

return Q7523010Trigger
