require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609301Trigger = class("Q7609301Trigger", GadgetActorProxy)
Q7609301Trigger.defaultAlias = "Q7609301Trigger"
local Q76093ClientConfig = require("Quest/Client/Q76093ClientConfig")

local this
local subIDs = Q76093ClientConfig.SubIDs
local datas = Q76093ClientConfig.Datas
local npcs = Q76093ClientConfig.Npcs
local points = Q76093ClientConfig.Points

function Q7609301Trigger:OnPostDataPrepare()
    print("Q7609301Trigger - OnPostDataPrepare")
    this = self
end

function Q7609301Trigger:OnPostComponentPrepare()
    print("Q7609301Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "6_3_WQ_Enter", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 76093)
end

function Q7609301Trigger:TriggerIn()
    print("Q7609301Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609301)
    this:DestroySelf()
end

function Q7609301Trigger:PreTriggerIn()
    print("Q7609301Trigger - PreTriggerIn")
end

function Q7609301Trigger:LightUpTriggerIn()
    print("Q7609301Trigger - LightUpTriggerIn")
end

function Q7609301Trigger:TriggerOut()
    print("Q7609301Trigger - TriggerOut")
end

return Q7609301Trigger
