require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007819Trigger = class("Q7007819Trigger", GadgetActorProxy)
Q7007819Trigger.defaultAlias = "Q7007819Trigger"
local Q70078ClientConfig = require("Quest/Client/Q70078ClientConfig")

local this
local subIDs = Q70078ClientConfig.SubIDs
local datas = Q70078ClientConfig.Datas
local npcs = Q70078ClientConfig.Npcs
local points = Q70078ClientConfig.Points

function Q7007819Trigger:OnPostDataPrepare()
    print("Q7007819Trigger - OnPostDataPrepare")
    this = self
end

function Q7007819Trigger:OnPostComponentPrepare()
    print("Q7007819Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70078)
end

function Q7007819Trigger:TriggerIn()
    print("Q7007819Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7007819)
    this:DestroySelf()
end

function Q7007819Trigger:PreTriggerIn()
    print("Q7007819Trigger - PreTriggerIn")
end

function Q7007819Trigger:LightUpTriggerIn()
    print("Q7007819Trigger - LightUpTriggerIn")
end

function Q7007819Trigger:TriggerOut()
    print("Q7007819Trigger - TriggerOut")
end

return Q7007819Trigger
