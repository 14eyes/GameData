require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007811Trigger = class("Q7007811Trigger", GadgetActorProxy)
Q7007811Trigger.defaultAlias = "Q7007811Trigger"
local Q70078ClientConfig = require("Quest/Client/Q70078ClientConfig")

local this
local subIDs = Q70078ClientConfig.SubIDs
local datas = Q70078ClientConfig.Datas
local npcs = Q70078ClientConfig.Npcs
local points = Q70078ClientConfig.Points

function Q7007811Trigger:OnPostDataPrepare()
    print("Q7007811Trigger - OnPostDataPrepare")
    this = self
end

function Q7007811Trigger:OnPostComponentPrepare()
    print("Q7007811Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 10, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70078)
end

function Q7007811Trigger:TriggerIn()
    print("Q7007811Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7007811)
    this:DestroySelf()
end

function Q7007811Trigger:PreTriggerIn()
    print("Q7007811Trigger - PreTriggerIn")
end

function Q7007811Trigger:LightUpTriggerIn()
    print("Q7007811Trigger - LightUpTriggerIn")
end

function Q7007811Trigger:TriggerOut()
    print("Q7007811Trigger - TriggerOut")
end

return Q7007811Trigger
