require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501725Trigger = class("Q501725Trigger", GadgetActorProxy)
Q501725Trigger.defaultAlias = "Q501725Trigger"
local Q5017ClientConfig = require("Quest/Client/Q5017ClientConfig")

local this
local subIDs = Q5017ClientConfig.SubIDs
local datas = Q5017ClientConfig.Datas
local npcs = Q5017ClientConfig.Npcs
local points = Q5017ClientConfig.Points

function Q501725Trigger:OnPostDataPrepare()
    print("Q501725Trigger - OnPostDataPrepare")
    this = self
end

function Q501725Trigger:OnPostComponentPrepare()
    print("Q501725Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5017)
end

function Q501725Trigger:TriggerIn()
    print("Q501725Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 501725)
    this:DestroySelf()
end

function Q501725Trigger:PreTriggerIn()
    print("Q501725Trigger - PreTriggerIn")
end

function Q501725Trigger:LightUpTriggerIn()
    print("Q501725Trigger - LightUpTriggerIn")
end

function Q501725Trigger:TriggerOut()
    print("Q501725Trigger - TriggerOut")
end

return Q501725Trigger
