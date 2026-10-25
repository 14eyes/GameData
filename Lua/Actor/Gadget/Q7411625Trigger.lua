require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411625Trigger = class("Q7411625Trigger", GadgetActorProxy)
Q7411625Trigger.defaultAlias = "Q7411625Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411625Trigger:OnPostDataPrepare()
    print("Q7411625Trigger - OnPostDataPrepare")
    this = self
end

function Q7411625Trigger:OnPostComponentPrepare()
    print("Q7411625Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411625Trigger:TriggerIn()
    print("Q7411625Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7411625)
    this:DestroySelf()
end

function Q7411625Trigger:PreTriggerIn()
    print("Q7411625Trigger - PreTriggerIn")
end

function Q7411625Trigger:LightUpTriggerIn()
    print("Q7411625Trigger - LightUpTriggerIn")
end

function Q7411625Trigger:TriggerOut()
    print("Q7411625Trigger - TriggerOut")
end

return Q7411625Trigger
