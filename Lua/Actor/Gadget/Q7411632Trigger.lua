require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411632Trigger = class("Q7411632Trigger", GadgetActorProxy)
Q7411632Trigger.defaultAlias = "Q7411632Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411632Trigger:OnPostDataPrepare()
    print("Q7411632Trigger - OnPostDataPrepare")
    this = self
end

function Q7411632Trigger:OnPostComponentPrepare()
    print("Q7411632Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411632Trigger:TriggerIn()
    print("Q7411632Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7411632)
    this:DestroySelf()
end

function Q7411632Trigger:PreTriggerIn()
    print("Q7411632Trigger - PreTriggerIn")
end

function Q7411632Trigger:LightUpTriggerIn()
    print("Q7411632Trigger - LightUpTriggerIn")
end

function Q7411632Trigger:TriggerOut()
    print("Q7411632Trigger - TriggerOut")
end

return Q7411632Trigger
