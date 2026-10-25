require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609632Trigger = class("Q7609632Trigger", GadgetActorProxy)
Q7609632Trigger.defaultAlias = "Q7609632Trigger"
local Q76096ClientConfig = require("Quest/Client/Q76096ClientConfig")

local this
local subIDs = Q76096ClientConfig.SubIDs
local datas = Q76096ClientConfig.Datas
local npcs = Q76096ClientConfig.Npcs
local points = Q76096ClientConfig.Points

function Q7609632Trigger:OnPostDataPrepare()
    print("Q7609632Trigger - OnPostDataPrepare")
    this = self
end

function Q7609632Trigger:OnPostComponentPrepare()
    print("Q7609632Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76096)
end

function Q7609632Trigger:TriggerIn()
    print("Q7609632Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609632)
    this:DestroySelf()
end

function Q7609632Trigger:PreTriggerIn()
    print("Q7609632Trigger - PreTriggerIn")
end

function Q7609632Trigger:LightUpTriggerIn()
    print("Q7609632Trigger - LightUpTriggerIn")
end

function Q7609632Trigger:TriggerOut()
    print("Q7609632Trigger - TriggerOut")
end

return Q7609632Trigger
