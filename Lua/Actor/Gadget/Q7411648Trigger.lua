require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411648Trigger = class("Q7411648Trigger", GadgetActorProxy)
Q7411648Trigger.defaultAlias = "Q7411648Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411648Trigger:OnPostDataPrepare()
    print("Q7411648Trigger - OnPostDataPrepare")
    this = self
end

function Q7411648Trigger:OnPostComponentPrepare()
    print("Q7411648Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411648Trigger:TriggerIn()
    print("Q7411648Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7411648)
end

function Q7411648Trigger:PreTriggerIn()
    print("Q7411648Trigger - PreTriggerIn")
end

function Q7411648Trigger:LightUpTriggerIn()
    print("Q7411648Trigger - LightUpTriggerIn")
end

function Q7411648Trigger:TriggerOut()
    print("Q7411648Trigger - TriggerOut")
end

return Q7411648Trigger
